package com.neuedu.trans.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.neuedu.trans.bean.UserInfo;
import com.neuedu.trans.dao.UserInfoDao;
import com.neuedu.trans.util.JDBCUtil;

public class UserInfoService {
	public boolean isLoginSuccessfully(String name, String password) {
		UserInfoDao dao = new UserInfoDao();
		String password_c = "";
		try {
			password_c = dao.getPasswordByName(name);
			System.out.println("password_input: " + password + " password_db: " + password_c);
			if(password_c.equals(password)) {
				System.out.println("success!");
				return true;
			}
			System.out.println("failure!");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return false;
	}
	
	/**
	 * Service类中的转账transferAccount
	 * @param fromname
	 * @param toname
	 * @param num
	 * @return 1->转账成功 -1>转账失败，由于from用户不存在 -2>转账失败，由于to用户不存在 -3->转账失败，由于from余额不足 0->转账失败
	 * db一定要关闭
	 */
	public int transferAccount(String fromname, String toname, double num) {
		System.out.println("--Service--" + fromname + " to " + toname + " ￥" + num);
		//验证
		int status = 0;
		UserInfoDao dao = new UserInfoDao();
		double balance_from = 0, balance_to = 0;
		try {
			balance_from = dao.getBalance(fromname);
		} catch (NullPointerException | SQLException e) {
			System.out.println("from用户异常");
			e.printStackTrace();
			status = -1;
		}
		try {
			balance_to = dao.getBalance(toname);
		} catch (NullPointerException | SQLException e) {
			System.out.println("to用户异常");
			e.printStackTrace();
			status = -2;
		}
		if(balance_from < num) {
			System.out.println("from用户余额不足");
			status = -3;
		}
		
		//转账
		System.out.println("--Service--transferAccount()--");
		JDBCUtil db = new JDBCUtil();
		db.beginTransation();
		try {
			int count_from = dao.decBalance(fromname, num);
			int count_to = dao.addBalance(toname, num);
			if(count_from > 0 && count_to > 0) {
				System.out.println("转账成功\t事务提交");
				db.commit();
				status = 1;
			} else {
				System.out.println("转账不成功\t事务回滚 --1");
				db.rollback();
				status = 0;
			}
		} catch (SQLException e) {
			System.out.println("转账不成功\t事务回滚 --2");
			db.rollback();
			e.printStackTrace();
		} finally {
			db.close();
		}
		return status;
	}
	
}

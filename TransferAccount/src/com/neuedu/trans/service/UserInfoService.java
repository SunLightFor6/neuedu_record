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
	 * Service���е�ת��transferAccount
	 * @param fromname
	 * @param toname
	 * @param num
	 * @return 1->ת�˳ɹ� -1>ת��ʧ�ܣ�����from�û������� -2>ת��ʧ�ܣ�����to�û������� -3->ת��ʧ�ܣ�����from���� 0->ת��ʧ��
	 * dbһ��Ҫ�ر�
	 */
	public int transferAccount(String fromname, String toname, double num) {
		System.out.println("--Service--" + fromname + " to " + toname + " ��" + num);
		//��֤
		int status = 0;
		UserInfoDao dao = new UserInfoDao();
		double balance_from = 0, balance_to = 0;
		try {
			balance_from = dao.getBalance(fromname);
		} catch (NullPointerException | SQLException e) {
			System.out.println("from�û��쳣");
			e.printStackTrace();
			status = -1;
		}
		try {
			balance_to = dao.getBalance(toname);
		} catch (NullPointerException | SQLException e) {
			System.out.println("to�û��쳣");
			e.printStackTrace();
			status = -2;
		}
		if(balance_from < num) {
			System.out.println("from�û�����");
			status = -3;
		}
		
		//ת��
		System.out.println("--Service--transferAccount()--");
		JDBCUtil db = new JDBCUtil();
		db.beginTransation();
		try {
			int count_from = dao.decBalance(fromname, num);
			int count_to = dao.addBalance(toname, num);
			if(count_from > 0 && count_to > 0) {
				System.out.println("ת�˳ɹ�\t�����ύ");
				db.commit();
				status = 1;
			} else {
				System.out.println("ת�˲��ɹ�\t����ع� --1");
				db.rollback();
				status = 0;
			}
		} catch (SQLException e) {
			System.out.println("ת�˲��ɹ�\t����ع� --2");
			db.rollback();
			e.printStackTrace();
		} finally {
			db.close();
		}
		return status;
	}
	
}
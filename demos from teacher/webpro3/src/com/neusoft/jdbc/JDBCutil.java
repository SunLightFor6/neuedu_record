package com.neusoft.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCutil {
	private static Connection conn=null;
	private PreparedStatement pst;
	//???Connection????
	public Connection getConnection(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("????Oracle???????");
			String url="jdbc:oracle:thin:@10.25.39.252:1521:orcl";
			String userName="cccda";
			String pwd="123456";
			if(conn==null){
				conn=DriverManager.getConnection(url, userName, pwd);
			}
			System.out.println("???Connection??????");

		} catch (ClassNotFoundException e) {
			System.out.println("????Oracle???????");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("???Connection???????");
			e.printStackTrace();
		}
		return conn;
	}
	
	public ResultSet executeQuery(String sql)throws SQLException{
		ResultSet rs=null;
		try {
			pst=conn.prepareStatement(sql);
			rs = pst.executeQuery();
			System.out.println("??志???????");
		} catch (SQLException e) {
			System.out.println("??志????????");
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet executeQuery(String sql,Object obj[])throws SQLException{
		ResultSet rs=null;
		try {
			pst=conn.prepareStatement(sql);
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					pst.setObject(i + 1, obj[i]);
				}
			}
			rs = pst.executeQuery();
			System.out.println("??志???????");
		} catch (SQLException e) {
			System.out.println("??志????????");
			e.printStackTrace();
		}
		return rs;
	}
	

	
	public int executeUpdate(String sql)throws SQLException{
		int count=-1;
		try {
			pst=conn.prepareStatement(sql);
			count=pst.executeUpdate();
			System.out.println("??我????????");
		} catch (SQLException e) {
			System.out.println("??我?????????");
			e.printStackTrace();
		}
		return count;
	}
	public int executeUpdate(String sql,Object obj[])throws SQLException{
		int count=-1;
		try {
			pst=conn.prepareStatement(sql);
			if (obj != null) {
				for (int i = 0; i < obj.length; i++) {
					pst.setObject(i + 1, obj[i]);
				}
			}
			count=pst.executeUpdate();
			System.out.println("??我????????");
		} catch (SQLException e) {
			System.out.println("??我?????????");
			e.printStackTrace();
		}
		return count;
	}
	public void close(){
		try {
			if(pst!=null){
				pst.close();
				pst=null;
			}
			if(conn!=null){
				conn.close();
				conn=null;
			}
			System.out.println("?????????");
		} catch (SQLException e) {
			System.out.println("??????????");
			pst=null;
			conn=null;
			e.printStackTrace();
		}	
	}
	//???????
	public void beginTransation(){
		try {
			conn.setAutoCommit(false);
			System.out.println("???????");
		} catch (SQLException e) {
			System.out.println("??????????");
			e.printStackTrace();
		}
	}
	//??????
	public void commit(){
		try {
			conn.commit();
			System.out.println("????????");
		} catch (SQLException e) {
			System.out.println("?????????");
			e.printStackTrace();
		}
	}
	//???????
	public void rollback(){
		try {
			conn.rollback();
			System.out.println("?????????");
		} catch (SQLException e) {
			System.out.println("??????????");
			e.printStackTrace();
		}
	}
}

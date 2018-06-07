package com.neusoft.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TestJDBC {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		System.out.println("...1.....");
		Class.forName("oracle.jdbc.driver.OracleDriver");
	//	oracle.jdbc.driver.OracleDriver driver=new oracle.jdbc.driver.OracleDriver();
		System.out.println("...加载驱动.....");
		//localhost
		//127.0.0.1
		//10.25.39.252
		String url="jdbc:oracle:thin:@10.25.39.252:1521:orcl";
		String userName="cccda";
		String pwd="123456";
		Connection conn=DriverManager.getConnection(url, userName, pwd);
		System.out.println("连接数据库成功");
		//insert into userinfo (id,username,pwd,num,other) values(4,'cccda4','111',5000,'大家厚爱')
	//	String sql="insert into userinfo (id,username,pwd,num,other) values(?,?,?,?,?)";
	//	String sql="update userinfo set num=num+10000";
		String sql="delete from userinfo where id=?";
		PreparedStatement pst=conn.prepareStatement(sql);
		pst.setObject(1, 4);
//		pst.setObject(2, "cccda4");
//		pst.setObject(3, "123111");
//		pst.setObject(4, 2000);
//		pst.setObject(5, "呵呵");
		int count=pst.executeUpdate();
		System.out.println("count="+count);
		pst.close();
		conn.close();
		System.out.println("over");
	}

}

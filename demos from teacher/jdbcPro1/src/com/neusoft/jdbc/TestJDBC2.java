package com.neusoft.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class TestJDBC2 {

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
		String sql="select * from userinfo";
		PreparedStatement pst=conn.prepareStatement(sql);

//		int count=pst.executeUpdate();
		ResultSet rs=pst.executeQuery();
		while(rs.next()){
			int id=rs.getInt("id");
			String username=rs.getString("username");
			String p=rs.getString("pwd");
			int num=rs.getInt(4);
			String other=rs.getString(5);
			System.out.println(id+"\t"+username+"\t"+p+"\t"+num+"\t"+other);
		}
		pst.close();
		conn.close();
		System.out.println("over");
	}

}

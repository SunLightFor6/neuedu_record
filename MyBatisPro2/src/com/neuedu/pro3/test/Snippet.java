package com.neuedu.pro3.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.neuedu.pro3.bean.Message;

public class Snippet {
	public static void main(String[] args) throws IOException {
		// 加载Mybatis的主配置文件
		InputStream is = Resources.getResourceAsStream("SqlMapConfig.xml");
		// 创建生产session的工厂类 session不是作用域 -- 相当于connection
		SqlSessionFactoryBuilder sfb = new SqlSessionFactoryBuilder();
		SqlSessionFactory ssf = sfb.build(is);
		SqlSession session=ssf.openSession();
//		String uname = session.selectOne("UserMapper.getUnameByID",1);
		
//		int count= session.selectOne("MessageMapper.findCount");
		
		Message message = session.selectOne("MessageMapper.getMessageById", 1217);
		System.out.println("message " + message);
		session.close();
//		System.out.println("uname="+uname);
//		System.out.println("count="+count);
		System.out.println("over");
	}
	
} 


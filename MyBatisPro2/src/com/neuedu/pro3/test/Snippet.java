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
		// ����Mybatis���������ļ�
		InputStream is = Resources.getResourceAsStream("SqlMapConfig.xml");
		// ��������session�Ĺ����� session���������� -- �൱��connection
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


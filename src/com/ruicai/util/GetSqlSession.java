package com.ruicai.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class GetSqlSession {

	static InputStream is = null;
	static SqlSessionFactory sessionFactory = null;
	static SqlSession session = null;

	static {
		try {
			// 读取配置文件
			is = Resources.getResourceAsStream("com/ruicai/config/mybatis.xml");
			// 获取会话工厂 通过链接信息
			sessionFactory = new SqlSessionFactoryBuilder().build(is);

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static SqlSession getSession() {

		// 打开一个会话
		session = sessionFactory.openSession();

		return session;
	}

	//test
	public static void main(String[] args) {
		System.out.println(getSession());
	}
}

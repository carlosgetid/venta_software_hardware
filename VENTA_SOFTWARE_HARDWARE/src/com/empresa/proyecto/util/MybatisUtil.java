package com.empresa.proyecto.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {


	protected static final SqlSessionFactory FACTORY;
	static {
		try {
			Reader reader = Resources.getResourceAsReader(
					"com/empresa/proyecto/util/mybatis-config.xml");
			FACTORY = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Error: " + e);
		}
	}

	public static SqlSessionFactory getSqlSessionFactory() {
		return FACTORY;
	}
	
}

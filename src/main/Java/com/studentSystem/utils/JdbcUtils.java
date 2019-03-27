package com.studentSystem.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.mchange.v2.c3p0.DataSources;

import javax.sql.DataSource;

public class JdbcUtils {
	private static final ComboPooledDataSource ds = new ComboPooledDataSource();
	public static DataSource getDataSource(){
		return ds;
	}
	public static void closeDataSource(){
		ds.close();
	}
}

package com.zwx.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dbutil {
	//数据库URL和账号密码
		private static final String connectionURL="jdbc:mysql://localhost:3306/hb_needsanalyse?useUnicode=true&characterEncoding=GB18030&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
		private static final String username="root";
		private static final String password="123456";
		
		//数据库连接
		public static Connection getConnection()
		{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			
				return DriverManager.getConnection(connectionURL,username,password);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("数据库连接失败");
				e.printStackTrace();
				return null;
			}
		}
		public static void closeAll(Connection connection,PreparedStatement statement,ResultSet rSet)
		{
			try {
				if(connection!=null)
					connection.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		
			try {
				if(statement!=null)
					statement.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		
			try {
				if(rSet!=null)
					rSet.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
			
		//关闭connection和preparedstatement
		public static void closePart(Connection connection,PreparedStatement statement)
		{
			try {
				if(connection!=null)
					connection.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		
			try {
				if(statement!=null)
					statement.close();
			} catch (SQLException e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}
}

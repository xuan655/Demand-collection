package com.zwx.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dbutil {
	//���ݿ�URL���˺�����
		private static final String connectionURL="jdbc:mysql://localhost:3306/hb_needsanalyse?useUnicode=true&characterEncoding=GB18030&useSSL=false&serverTimezone=GMT&allowPublicKeyRetrieval=true";
		private static final String username="root";
		private static final String password="123456";
		
		//���ݿ�����
		public static Connection getConnection()
		{
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			
				return DriverManager.getConnection(connectionURL,username,password);
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("���ݿ�����ʧ��");
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
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		
			try {
				if(statement!=null)
					statement.close();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		
			try {
				if(rSet!=null)
					rSet.close();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		}
			
		//�ر�connection��preparedstatement
		public static void closePart(Connection connection,PreparedStatement statement)
		{
			try {
				if(connection!=null)
					connection.close();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		
			try {
				if(statement!=null)
					statement.close();
			} catch (SQLException e) {
				// TODO �Զ����ɵ� catch ��
				e.printStackTrace();
			}
		}
}

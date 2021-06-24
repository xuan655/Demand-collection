package com.zwx.dbutil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.print.DocFlavor.STRING;

import com.sun.org.apache.regexp.internal.recompile;
import com.sun.xml.internal.fastinfoset.UnparsedEntity;
import com.zwx.been.enter;

import sun.reflect.generics.tree.VoidDescriptor;

public class Db_user {
	static Dbutil dbutil=new Dbutil();
 public static String adduser(enter user) {
	    
	    Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			
			con=dbutil.getConnection();
			String sql1="select * from user where username='"+user.getUsername()+"'";
			pstmt=con.prepareStatement(sql1);
			rs=pstmt.executeQuery();
//			if(rs.next()==false) {
//				String sql2="select * from user where unit='"+user.getUnit()+"'";
//				pstmt=con.prepareStatement(sql2);
//				rs=pstmt.executeQuery();
				if(rs.next()==false) {
					String sql="insert into user(username,password,name,sex,pro,city,unit,zyfx,szhy,jycd,zc,address,code,phone,phone_gd,email,qq,msn) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
					pstmt=con.prepareStatement(sql);
					pstmt.setString(1, user.getUsername());
					pstmt.setString(2, user.getPassword());
					pstmt.setString(3, user.getName());
					pstmt.setString(4, user.getSex());
					pstmt.setString(5, user.getPro());
					
					pstmt.setString(6, user.getCity());
					pstmt.setString(7, user.getUnit());
					pstmt.setString(8, user.getZyfx());
					pstmt.setString(9, user.getSzhy());
					pstmt.setString(10, user.getJycd());
					
					pstmt.setString(11, user.getZc());
					pstmt.setString(12, user.getAddress());
					pstmt.setString(13, user.getCode());
					pstmt.setString(14, user.getPhone());
					pstmt.setString(15, user.getPhone_gd());
					pstmt.setString(16, user.getEmail());
					pstmt.setString(17, user.getQq());
					pstmt.setString(18, user.getMsn());
					
					pstmt.executeUpdate();
					return "Y";
				}
				else {
					System.out.print("该单位已注册");
					return "F_unit";
				}
//			}
//			else {
//				System.out.print("用户名已存在");
//				return "F_username";
//			}
			
			
		}
		catch (SQLException e) {
			System.out.println("注册失败");
			e.printStackTrace();
		}
		finally {
			dbutil.closeAll(con, pstmt, rs);
		}
		return null;
 }
 public static String searchuser(enter user) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
   try {
	    con=dbutil.getConnection();
	    String sql="select * from user where username = '"+user.getUsername()+"'";
		System.out.println(sql);
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()==false)
		{
			System.out.println("用户名不存在，请注册");
			return "no_name";
		}
		else
		{
		     
			if(rs.getString(3).equals(user.getPassword())) {
				if (rs.getString(21).equals("-1")) {
					System.out.print("该用户已被禁用");
					return ("-1");
				}
				else {
				   System.out.println("登录成功");
				   String state=rs.getString(20);
				   System.out.println(state);
				   return state;
				}
			}
			else {
				System.out.println("密码错误");
				return "f_password";
			}
		}
	}
	catch (SQLException e) {
		System.out.println("未连接");
		e.printStackTrace();
	}
	finally {
		dbutil.closeAll(con, pstmt, rs);
	}
	return null;
  }
 
 public static boolean updatepassword(String username,String password1,String password2) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
   try {
	    con=dbutil.getConnection();
	    String sql="select * from user where username = '"+username+"' and password = '"+password1+"'";
		System.out.println(sql);
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		if(rs.next()==false)
		{
			System.out.println("原密码错误");
			return false;
		}
		else
		{
			
			System.out.println("密码正确");
			String sql2="update user set password='"+password2+"' where username='"+username+"'";
			System.out.print(sql2);
			pstmt=con.prepareStatement(sql2);
			pstmt.executeUpdate();
			return true;
		}
	}
	catch (SQLException e) {
		System.out.println("未连接");
		e.printStackTrace();
	}
	finally {
		dbutil.closeAll(con, pstmt, rs);
	}
	return false;
  }
 
 public static ArrayList<enter> searchinformation(String username){
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
   try {
	   
	    con=dbutil.getConnection();
	    
	    String sql0="select id from user where username='"+username+"'";
	    System.out.println(sql0);
		pstmt=con.prepareStatement(sql0);
		rs=pstmt.executeQuery();
		rs.next();
		String id=rs.getString(1);

			String sql="select * from user where username = '"+username+"'";
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()==false)
			{
				System.out.println("查询失败");
				return null;
			}
			else
			{
				System.out.println("查找成功");
				ArrayList<enter> user=new ArrayList<>();
				enter usEnter=new enter();
				usEnter.setId(rs.getInt(1));
				usEnter.setUsername(rs.getString(2));
				usEnter.setPassword(rs.getString(3));
				usEnter.setName(rs.getString(4));
				usEnter.setSex(rs.getString(5));
				usEnter.setPro(rs.getString(6));
				usEnter.setCity(rs.getString(7));
				usEnter.setUnit(rs.getString(8));
				usEnter.setZyfx(rs.getString(9));
				usEnter.setSzhy(rs.getString(10));
				usEnter.setJycd(rs.getString(11));
				usEnter.setZc(rs.getString(12));
				usEnter.setAddress(rs.getString(13));
				usEnter.setCode(rs.getString(14));
				usEnter.setPhone(rs.getString(15));
				usEnter.setPhone_gd(rs.getString(16));
				usEnter.setEmail(rs.getString(17));
				usEnter.setQq(rs.getString(18));
				usEnter.setMsn(rs.getString(19));
				user.add(usEnter);
				return user;
			}
//		}
//		else {
//			System.out.print("不可重复填报");
//			return null;
//		}
	    
	}
	catch (SQLException e) {
		System.out.println("未连接");
		e.printStackTrace();
	}
	finally {
		dbutil.closeAll(con, pstmt, rs);
	}
	return null;
  }
 public static boolean upadte_user(enter user) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
	try {
		con=Dbutil.getConnection();
		String sql="update user set username=?,name=?,sex=?,pro=?,city=?,unit=?,zyfx=?,szhy=?,jycd=?,zc=?,address=?,code=?,phone=?,phone_gd=?,email=?,qq=?,msn=? where id = "+user.getId();
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, user.getUsername());
		pstmt.setString(2, user.getName());
		pstmt.setString(3, user.getSex());
		pstmt.setString(4, user.getPro());
		
		pstmt.setString(5, user.getCity());
		pstmt.setString(6, user.getUnit());
		pstmt.setString(7, user.getZyfx());
		pstmt.setString(8, user.getSzhy());
		pstmt.setString(9, user.getJycd());
		
		pstmt.setString(10, user.getZc());
		pstmt.setString(11, user.getAddress());
		pstmt.setString(12, user.getCode());
		pstmt.setString(13, user.getPhone());
		pstmt.setString(14, user.getPhone_gd());
		pstmt.setString(15, user.getEmail());
		pstmt.setString(16, user.getQq());
		pstmt.setString(17, user.getMsn());
		pstmt.executeUpdate();
		return true;
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	}
	finally {
		Dbutil.closePart(con, pstmt);
	}
	return false;
}
 
 public static boolean update_password(String username) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
	 try {
		con=Dbutil.getConnection();
		String sql ="update user set password=? where username='"+username+"'";
		System.out .println(sql);
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,"123456");
	    pstmt.executeUpdate();
	    return true;
	} catch (Exception e) {
		e.printStackTrace();
	}
	 finally {
		Dbutil.closePart(con, pstmt);
	}
	return false;
 }
 
 //查看所有用户
 public static ArrayList<enter> search_allpeople(){
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
   try {
	   
	    con=dbutil.getConnection();
			String sql="select * from user";
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			rs=pstmt.executeQuery();
			ArrayList<enter> user=new ArrayList<>();
			while(rs.next()) {
				enter usEnter=new enter();
				usEnter.setId(rs.getInt(1));
				usEnter.setUsername(rs.getString(2));
				usEnter.setPassword(rs.getString(3));
				usEnter.setName(rs.getString(4));
				usEnter.setSex(rs.getString(5));
				usEnter.setPro(rs.getString(6));
				usEnter.setCity(rs.getString(7));
				usEnter.setUnit(rs.getString(8));
				usEnter.setZyfx(rs.getString(9));
				usEnter.setSzhy(rs.getString(10));
				usEnter.setJycd(rs.getString(11));
				usEnter.setZc(rs.getString(12));
				usEnter.setAddress(rs.getString(13));
				usEnter.setCode(rs.getString(14));
				usEnter.setPhone(rs.getString(15));
				usEnter.setPhone_gd(rs.getString(16));
				usEnter.setEmail(rs.getString(17));
				usEnter.setQq(rs.getString(18));
				usEnter.setMsn(rs.getString(19));
				if (rs.getString(21).equals("-1")) {
					usEnter.setState("解禁");
				}
				else {
					usEnter.setState("禁用");
				}
				
				user.add(usEnter);	
			}
			return user;
			
	}
	catch (SQLException e) {
		System.out.println("未连接");
		e.printStackTrace();
	}
	finally {
		dbutil.closeAll(con, pstmt, rs);
	}
	return null;
  }
 
 //权限管理
 public static boolean updatestate(String username) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
	 try {
		con=dbutil.getConnection();
		String sql ="select qx from user where username='"+username+"'";
		System.out.println(sql);
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		rs.next();
		String qx=rs.getString(1);
		System.out.println("当前权限"+qx);
		if (qx.equals("1")) {
			String sql1="update user set qx='-1' where username='"+username+"'";
			System.out.println(sql1);
			pstmt=con.prepareStatement(sql1);
			pstmt.executeUpdate();
			System.out.println("禁用成功");
			
		}
		else if(qx.equals("-1")) {
			String sql2="update user set qx='1' where username='"+username+"'";
			System.out.println(sql2);
			pstmt=con.prepareStatement(sql2);
			pstmt.executeUpdate();
			System.out.println("解禁成功");
		}
		return true;
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally {
		dbutil.closeAll(null, pstmt, rs);
	}
	 return false;
 }
 public static boolean deleteuser(String username) {
	 Connection con=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs=null;
	 try {
		    con=Dbutil.getConnection();
		    String sql="delete from user where username='"+username+"'";
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
			return true;
	} catch (Exception e) {
		// TODO: handle exception
	}
	 finally {
		dbutil.closeAll(con, pstmt, rs);
	}
	 return false;
 }
}

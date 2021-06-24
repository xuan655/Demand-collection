package com.zwx.dbutil;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.apache.tomcat.util.security.Escape;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sun.corba.se.impl.orb.ParserTable.TestAcceptor1;
import com.sun.org.apache.regexp.internal.recompile;
import com.sun.org.apache.xpath.internal.WhitespaceStrippingElementMatcher;
import com.sun.swing.internal.plaf.synth.resources.synth_es;
import com.sun.xml.internal.bind.v2.model.core.ID;
import com.zwx.been.enter;
import com.zwx.been.fieldbeen;
import com.zwx.been.gjbeen;
import com.zwx.been.textbeen;

import jdk.internal.dynalink.beans.StaticClass;
public class Db_text {
	static Dbutil dbutil=new Dbutil();
	 public static boolean addtext(textbeen text,String username) {
		    
		    Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			try {
				
				con=dbutil.getConnection();
				String sql0="select id from user where username='"+username+"'";
				pstmt=con.prepareStatement(sql0);
				rs=pstmt.executeQuery();
				rs.next();
				String id=rs.getString(1);
//				
//				//System.out.println(id);
//				String sql1="select * from all_institution where user_id='"+id+"'";
//				pstmt=con.prepareStatement(sql1);
//				rs=pstmt.executeQuery();
//				if(rs.next()==false) {
						String sql2="insert into all_institution(name,gk,phone_address,sz_address,net,email,legal,post,lname,phone_gd,mobile,fax,institution,introduction,technology,time_begin,time_end,t_needtext_1,t_needtext_2,t_needtext_3,keyword,"
								+ "plan_invest,mode,hzyxdw,type,classification,field,fieldadd,need_industry,user_id,new_time,state) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
						pstmt=con.prepareStatement(sql2);
						pstmt.setString(1, text.getName());
						pstmt.setString(2, text.getGk());
						pstmt.setString(3, text.getPhone_address());
						pstmt.setString(4, text.getSz_address());
						System.out.println(text.getSz_address());
						pstmt.setString(5, text.getNet());
						pstmt.setString(6, text.getEmail());
						pstmt.setString(7, text.getLegal());
						
						pstmt.setString(8, text.getPost());
						pstmt.setString(9, text.getLname());
						pstmt.setString(10, text.getPhone_gd());
						pstmt.setString(11, text.getMobile());
						pstmt.setString(12, text.getFax());
						
						pstmt.setString(13, text.getInstitution());
						pstmt.setString(14, text.getIntroduction());
						pstmt.setString(15, text.getTechnology());
						pstmt.setString(16, text.getTime_begin());
						pstmt.setString(17, text.getTime_end());
						pstmt.setString(18, text.getT_needtext_1());
						pstmt.setString(19, text.getT_needtext_2());
						pstmt.setString(20, text.getT_needtext_3());
						pstmt.setString(21, text.getKeyword());
						pstmt.setString(22, text.getPlan_invest());
						pstmt.setString(23, text.getMode());
						pstmt.setString(24, text.getHzyxdw());
						pstmt.setString(25, text.getType());
						pstmt.setString(26, text.getClassification());
						
						pstmt.setString(27,text.getField());
						pstmt.setString(28, text.getFieldadd());
						pstmt.setString(29, text.getNeed_industry());
						pstmt.setString(30,id );
						//获取当前时间
						SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间 
				        sdf.applyPattern("yyyy-MM-dd HH:mm:ss a");// a为am/pm的标记  
				        Date date = new Date();// 获取当前时间 
				        System.out.println("现在时间：" + sdf.format(date)); // 输出已经格式化的现在时间（24小时制） 
			            text.setNew_time(sdf.format(date));
						pstmt.setString(31,text.getNew_time());
						text.setState("0");
						pstmt.setString(32, text.getState());
						pstmt.executeUpdate();
						return true;
				
			}
			catch (SQLException e) {
				System.out.println("添加失败");
				e.printStackTrace();
			}
			finally {
				dbutil.closeAll(con, pstmt, rs);
			}
			return false;
	 }
	 
	 public static ArrayList<textbeen> selectone(String username) {
		    
		    Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			ResultSet rs2=null;
			try {
				
				con=dbutil.getConnection();
				String sql0="select id from user where username='"+username+"'";
				pstmt=con.prepareStatement(sql0);
				rs=pstmt.executeQuery();
				rs.next();
				String id=rs.getString(1);
                 System.out.println(id);
				String sql1="select * from all_institution where user_id='"+id+"'";
				System.out.println(sql1);
				pstmt=con.prepareStatement(sql1);
				rs=pstmt.executeQuery();
				ArrayList<textbeen> list=new ArrayList<>();
				
				while (rs.next()) {
					textbeen text=new textbeen();
					text.setId(rs.getInt(1));
					text.setName(rs.getString(2));
					text.setGk(rs.getString(3));
					text.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					System.out.println(sql2);
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text.setSz_address(address);
					text.setNet(rs.getString(6));
					text.setEmail(rs.getString(7));
					text.setLegal(rs.getString(8));
					text.setPost(rs.getString(9));
					text.setLname(rs.getString(10));
					text.setPhone_gd(rs.getString(11));
					text.setMobile(rs.getString(12));
					text.setFax(rs.getString(13));
					text.setInstitution(rs.getString(14));
					text.setIntroduction(rs.getString(15));
					text.setTechnology(rs.getString(16));
					text.setTime_begin(rs.getString(17));
					text.setTime_end(rs.getString(18));
					text.setT_needtext_1(rs.getString(19));
					text.setT_needtext_2(rs.getString(20));
					text.setT_needtext_3(rs.getString(21));
					text.setKeyword(rs.getString(22));
					text.setPlan_invest(rs.getString(23));
					text.setMode(rs.getString(24));
					text.setHzyxdw(rs.getString(25));
					text.setType(rs.getString(26));
					text.setClassification(rs.getString(27));
					text.setField(rs.getString(28));
					text.setFieldadd(rs.getString(29));
					text.setNeed_industry(rs.getString(30));
					//text.setId(rs.getString(31));
                    text.setNew_time(rs.getString(32));
                    //判断当前状态
                    text.setState_id(rs.getString(33));
                    if(rs.getString(33).equals("2+")) {
                 	   text.setState("审核通过");
                    }
                    else if(rs.getString(33).equals("1-")) {
                 	   text.setState("形式审核未通过");
                    }
                    else if(rs.getString(33).equals("2-")) {
                 	   text.setState("部门审核未通过");
                    }
                    else {
                 	   text.setState("审核中");
                    }
                    
					//System.out.println("aaaaa");
					list.add(text);
					
				}
				//System.out.print(list.get(0).getName());
						return list;

				
			}
			catch (SQLException e) {
				System.out.println("查询失败");
				e.printStackTrace();
			}
			finally {
				dbutil.closeAll(con, pstmt, rs);
			}
			return null;
	 }
	 
	 
	 //详细查询一个报表
	 public static ArrayList<textbeen> select_onetext(int id) {
		    
		    Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			ResultSet rs2=null;
			try {
				
				con=dbutil.getConnection();
				String sql1="select * from all_institution where id='"+id+"'";
				System.out.println(sql1);
				pstmt=con.prepareStatement(sql1);
				rs=pstmt.executeQuery();
				ArrayList<textbeen> list=new ArrayList<>();
				
				while (rs.next()) {
					textbeen text=new textbeen();
					text.setId(rs.getInt(1));
					text.setName(rs.getString(2));
					text.setGk(rs.getString(3));
					text.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text.setSz_address(address);
					text.setNet(rs.getString(6));
					text.setEmail(rs.getString(7));
					text.setLegal(rs.getString(8));
					text.setPost(rs.getString(9));
					text.setLname(rs.getString(10));
					text.setPhone_gd(rs.getString(11));
					text.setMobile(rs.getString(12));
					text.setFax(rs.getString(13));
					text.setInstitution(rs.getString(14));
					text.setIntroduction(rs.getString(15));
					text.setTechnology(rs.getString(16));
					text.setTime_begin(rs.getString(17));
					text.setTime_end(rs.getString(18));
					text.setT_needtext_1(rs.getString(19));
					text.setT_needtext_2(rs.getString(20));
					text.setT_needtext_3(rs.getString(21));
					text.setKeyword(rs.getString(22));
					text.setPlan_invest(rs.getString(23));
					text.setMode(rs.getString(24));
					text.setHzyxdw(rs.getString(25));
					text.setType(rs.getString(26));
					text.setClassification(rs.getString(27));
					text.setField(rs.getString(28));
					text.setFieldadd(rs.getString(29));
					text.setNeed_industry(rs.getString(30));
					//text.setId(rs.getString(31));
                 text.setNew_time(rs.getString(32));
                 //判断当前状态
                 //判断当前状态
                 text.setState_id(rs.getString(33));
                 if(rs.getString(33).equals("2+")) {
              	   text.setState("审核通过");
                 }
                 else if(rs.getString(33).equals("1-")) {
              	   text.setState("形式审核未通过");
                 }
                 else if(rs.getString(33).equals("2-")) {
              	   text.setState("部门审核未通过");
                 }
                 else {
              	   text.setState("审核中");
                 }
                 
					//System.out.println("aaaaa");
					list.add(text);
					
				}
				//System.out.print(list.get(0).getName());
						return list;

				
			}
			catch (SQLException e) {
				System.out.println("查询失败");
				e.printStackTrace();
			}
			finally {
				dbutil.closeAll(con, pstmt, rs);
			}
			return null;
	 }
	 //查看全部
	//查看全部未审核、
			public static ArrayList<textbeen> selectalltext(){
				 Connection con=null;
				PreparedStatement pstmt=null;
				ResultSet rs=null;
				ResultSet rs2=null;
				ResultSet rs3=null;
				try {
					con=Dbutil.getConnection();
					String sql="select * from all_institution";
					pstmt=con.prepareStatement(sql);
					rs=pstmt.executeQuery();
					ArrayList<textbeen> list =new ArrayList<>();
					while (rs.next()) {
						textbeen text=new textbeen();
						text.setId(rs.getInt(1));
						text.setName(rs.getString(2));
						text.setGk(rs.getString(3));
						text.setPhone_address(rs.getString(4));
						//查找地址
						String sql2="select address from address where id='"+rs.getString(5)+"'";
						pstmt=con.prepareStatement(sql2);
						rs2=pstmt.executeQuery();
						rs2.next();
						String address=rs2.getString(1);
		                // System.out.println(id);
						text.setSz_address(address);
						text.setNet(rs.getString(6));
						text.setEmail(rs.getString(7));
						text.setLegal(rs.getString(8));
						text.setPost(rs.getString(9));
						text.setLname(rs.getString(10));
						text.setPhone_gd(rs.getString(11));
						text.setMobile(rs.getString(12));
						text.setFax(rs.getString(13));
						text.setInstitution(rs.getString(14));
						text.setIntroduction(rs.getString(15));
						text.setTechnology(rs.getString(16));
						text.setTime_begin(rs.getString(17));
						text.setTime_end(rs.getString(18));
						text.setT_needtext_1(rs.getString(19));
						text.setT_needtext_2(rs.getString(20));
						text.setT_needtext_3(rs.getString(21));
						text.setKeyword(rs.getString(22));
						text.setPlan_invest(rs.getString(23));
						text.setMode(rs.getString(24));
						text.setHzyxdw(rs.getString(25));
						text.setType(rs.getString(26));
						text.setClassification(rs.getString(27));
						text.setField(rs.getString(28));
						text.setFieldadd(rs.getString(29));
						text.setNeed_industry(rs.getString(30));
						String user_id=rs.getString(31);
						String sql3="select * from user where id="+user_id+"";
						pstmt=con.prepareStatement(sql3);
						rs3=pstmt.executeQuery();
						rs3.next();
						text.setUsername(rs3.getString(2));
	                 text.setNew_time(rs.getString(32));
	                 //判断当前状态
	                 text.setState_id(rs.getString(33));
	                 if(rs.getString(33).equals("2+")) {
	              	   text.setState("审核通过");
	                 }
	                 else if(rs.getString(33).equals("1-")) {
	              	   text.setState("形式审核未通过");
	                 }
	                 else if(rs.getString(33).equals("2-")) {
	              	   text.setState("部门审核未通过");
	                 }
	                 else {
	              	   text.setState("审核中");
	                 }
	                 
						list.add(text);
						
					}
					return list;
				} catch (Exception e) {
					// TODO: handle exception
				}finally {
					Dbutil.closeAll(con, pstmt, rs);
				}
				return null;
			}
			
	 //查看全部未审核、
		public static ArrayList<textbeen> select_alltext(){
			 Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			ResultSet rs2=null;
			ResultSet rs3=null;
			try {
				con=Dbutil.getConnection();
				String sql="select * from all_institution where state =0";
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				ArrayList<textbeen> list =new ArrayList<>();
				while (rs.next()) {
					textbeen text=new textbeen();
					text.setId(rs.getInt(1));
					text.setName(rs.getString(2));
					text.setGk(rs.getString(3));
					text.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text.setSz_address(address);
					text.setNet(rs.getString(6));
					text.setEmail(rs.getString(7));
					text.setLegal(rs.getString(8));
					text.setPost(rs.getString(9));
					text.setLname(rs.getString(10));
					text.setPhone_gd(rs.getString(11));
					text.setMobile(rs.getString(12));
					text.setFax(rs.getString(13));
					text.setInstitution(rs.getString(14));
					text.setIntroduction(rs.getString(15));
					text.setTechnology(rs.getString(16));
					text.setTime_begin(rs.getString(17));
					text.setTime_end(rs.getString(18));
					text.setT_needtext_1(rs.getString(19));
					text.setT_needtext_2(rs.getString(20));
					text.setT_needtext_3(rs.getString(21));
					text.setKeyword(rs.getString(22));
					text.setPlan_invest(rs.getString(23));
					text.setMode(rs.getString(24));
					text.setHzyxdw(rs.getString(25));
					text.setType(rs.getString(26));
					text.setClassification(rs.getString(27));
					text.setField(rs.getString(28));
					text.setFieldadd(rs.getString(29));
					text.setNeed_industry(rs.getString(30));
					String user_id=rs.getString(31);
					String sql3="select * from user where id="+user_id+"";
					pstmt=con.prepareStatement(sql3);
					rs3=pstmt.executeQuery();
					rs3.next();
					text.setUsername(rs3.getString(2));
                 text.setNew_time(rs.getString(32));
                 //判断当前状态
                 text.setState_id(rs.getString(33));
                 if(rs.getString(33).equals("2+")) {
              	   text.setState("审核通过");
                 }
                 else if(rs.getString(33).equals("1-")) {
              	   text.setState("形式审核未通过");
                 }
                 else if(rs.getString(33).equals("2-")) {
              	   text.setState("部门审核未通过");
                 }
                 else {
              	   text.setState("审核中");
                 }
                 
					list.add(text);
					
				}
				return list;
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				Dbutil.closeAll(con, pstmt, rs);
			}
			return null;
		}
		
		//查看某一部门待审核的表
		//查看全部报表、
				public static ArrayList<textbeen> bm_select_alltext(String bmname){
					 Connection con=null;
					PreparedStatement pstmt=null;
					ResultSet rs0=null;
					ResultSet rs=null;
					ResultSet rs2=null;
					ResultSet rs3=null;
					try {
						con=Dbutil.getConnection();
						String sql0 ="select * from user where username='"+bmname+"'";
						System.out.println(sql0);
						pstmt=con.prepareStatement(sql0);
						rs0=pstmt.executeQuery();
						String x = "";
						while(rs0.next()) {
						 x=rs0.getString(20);
						}
						System.out.println("表"+x);
						String sql="select * from all_institution where bm_id="+x+" and state='1+' ";
						pstmt=con.prepareStatement(sql);
						rs=pstmt.executeQuery();
						ArrayList<textbeen> list =new ArrayList<>();
						while (rs.next()) {
							textbeen text=new textbeen();
							text.setId(rs.getInt(1));
							text.setName(rs.getString(2));
							text.setGk(rs.getString(3));
							text.setPhone_address(rs.getString(4));
							//查找地址
							String sql2="select address from address where id='"+rs.getString(5)+"'";
							pstmt=con.prepareStatement(sql2);
							rs2=pstmt.executeQuery();
							rs2.next();
							String address=rs2.getString(1);
			                // System.out.println(id);
							text.setSz_address(address);
							text.setNet(rs.getString(6));
							text.setEmail(rs.getString(7));
							text.setLegal(rs.getString(8));
							text.setPost(rs.getString(9));
							text.setLname(rs.getString(10));
							text.setPhone_gd(rs.getString(11));
							text.setMobile(rs.getString(12));
							text.setFax(rs.getString(13));
							text.setInstitution(rs.getString(14));
							text.setIntroduction(rs.getString(15));
							text.setTechnology(rs.getString(16));
							text.setTime_begin(rs.getString(17));
							text.setTime_end(rs.getString(18));
							text.setT_needtext_1(rs.getString(19));
							text.setT_needtext_2(rs.getString(20));
							text.setT_needtext_3(rs.getString(21));
							text.setKeyword(rs.getString(22));
							text.setPlan_invest(rs.getString(23));
							text.setMode(rs.getString(24));
							text.setHzyxdw(rs.getString(25));
							text.setType(rs.getString(26));
							text.setClassification(rs.getString(27));
							text.setField(rs.getString(28));
							text.setFieldadd(rs.getString(29));
							text.setNeed_industry(rs.getString(30));
							String user_id=rs.getString(31);
							String sql3="select * from user where id="+user_id+"";
							pstmt=con.prepareStatement(sql3);
							rs3=pstmt.executeQuery();
							rs3.next();
							text.setUsername(rs3.getString(2));
		                 text.setNew_time(rs.getString(32));
		                 //判断当前状态
		                 text.setState_id(rs.getString(33));
		                 if(rs.getString(33).equals("2+")) {
		              	   text.setState("审核通过");
		                 }
		                 else if(rs.getString(33).equals("1-")) {
		              	   text.setState("形式审核未通过");
		                 }
		                 else if(rs.getString(33).equals("2-")) {
		              	   text.setState("部门审核未通过");
		                 }
		                 else {
		              	   text.setState("审核中");
		                 }
		                 
							list.add(text);
							
						}
						return list;
					} catch (Exception e) {
						// TODO: handle exception
					}finally {
						Dbutil.closeAll(con, pstmt, rs);
					}
					return null;
				}
		
	 //多条件精确查询
		public static ArrayList<textbeen> moreseaarch_0(textbeen text){
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs0=null;
			ResultSet rs=null;
		    ResultSet rs2=null;
		    ResultSet rs3=null;
		   try {
			   con=Dbutil.getConnection();
			   String address_id = "";
			   if (text.getSz_address()!="") {
			   String sql0="select * from address where address='"+text.getSz_address()+"'";
			   pstmt=con.prepareStatement(sql0);
			   rs0=pstmt.executeQuery();			  
			   while(rs0.next()) {
				   address_id=rs0.getString(1);
			   }
			   }
			   String sql="select * from all_institution where state='0'";
			   sql=pingjie_0(sql,"name", text.getName(), 0);
			   sql=pingjie_0(sql,"gk", text.getGk(), 0);
			   sql=pingjie_0(sql,"sz_address", address_id, 0);
			   sql=pingjie_0(sql,"legal", text.getLegal(), 0);
			   sql=pingjie_0(sql,"lname", text.getLname(), 0);
			   sql=pingjie_0(sql,"institution", text.getInstitution(), 0);
			   sql=pingjie_0(sql,"technology", text.getTechnology(), 0);
			   sql=pingjie_0(sql,"keyword", text.getKeyword(), 0);
			   sql=pingjie_0(sql,"plan_invest", text.getPlan_invest(), 0);
			   sql=pingjie_0(sql,"mode", text.getMode(), 0);
			   sql=pingjie_0(sql,"type", text.getType(), 0);
			   sql=pingjie_0(sql,"classification", text.getClassification(), 0);
			   sql=pingjie_0(sql,"field", text.getField(), 0);
			   sql=pingjie_0(sql,"need_industry", text.getNeed_industry(), 0);
			   sql=pingjie_0(sql,"state", text.getState_id(), 0);
			   sql=pingjie_0(sql,"bm_id", text.getBm_id(), 0);
			  System.out.println(sql);
			  pstmt=con.prepareStatement(sql);
			  rs=pstmt.executeQuery();
			  ArrayList<textbeen> list =new ArrayList<>();
				while (rs.next()) {
					textbeen text1=new textbeen();
					text1.setId(rs.getInt(1));
					text1.setName(rs.getString(2));
					System.out.println("db"+rs.getString(2));
					text1.setGk(rs.getString(3));
					text1.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text1.setSz_address(address);
					text1.setNet(rs.getString(6));
					text1.setEmail(rs.getString(7));
					text1.setLegal(rs.getString(8));
					text1.setPost(rs.getString(9));
					text1.setLname(rs.getString(10));
					text1.setPhone_gd(rs.getString(11));
					text1.setMobile(rs.getString(12));
					text1.setFax(rs.getString(13));
					text1.setInstitution(rs.getString(14));
					text1.setIntroduction(rs.getString(15));
					text1.setTechnology(rs.getString(16));
					text1.setTime_begin(rs.getString(17));
					text1.setTime_end(rs.getString(18));
					text1.setT_needtext_1(rs.getString(19));
					text1.setT_needtext_2(rs.getString(20));
					text1.setT_needtext_3(rs.getString(21));
					text1.setKeyword(rs.getString(22));
					text1.setPlan_invest(rs.getString(23));
					text1.setMode(rs.getString(24));
					text1.setHzyxdw(rs.getString(25));
					text1.setType(rs.getString(26));
					text1.setClassification(rs.getString(27));
					text1.setField(rs.getString(28));
					text1.setFieldadd(rs.getString(29));
					text1.setNeed_industry(rs.getString(30));
					String user_id=rs.getString(31);
					String sql3="select * from user where id="+user_id+"";
					pstmt=con.prepareStatement(sql3);
					rs3=pstmt.executeQuery();
					rs3.next();
					text1.setUsername(rs3.getString(2));
					text1.setNew_time(rs.getString(32));
					 //判断当前状态
					text1.setState_id(rs.getString(33));   
		               if(rs.getString(33).equals("2+")) {
		            	   text1.setState("审核通过");
		               }
		               else if(rs.getString(33).equals("1-")) {
		            	   text1.setState("形式审核未通过");
		               }
		               else if(rs.getString(33).equals("2-")) {
		            	   text1.setState("部门审核未通过");
		               }
		               else {
		            	   text1.setState("审核中");
		               }
               
					list.add(text1);
					
				}
				return list;
		   }catch (Exception e) {
			// TODO: handle exception
			   
		   }
		   finally {
			Dbutil.closeAll(con,pstmt, rs);
		}
			return null;
			}
		 //多条件模糊查询
		public static ArrayList<textbeen> moreseaarch_1(textbeen text){
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs0=null;
			ResultSet rs=null;
		    ResultSet rs2=null;
		    ResultSet rs3=null;
		   try {
			   con=Dbutil.getConnection();
			   String address_id = "";
			   if (text.getSz_address()!="") {
			   String sql0="select * from address where address='"+text.getSz_address()+"'";
			   pstmt=con.prepareStatement(sql0);
			   rs0=pstmt.executeQuery();
			   while(rs0.next()) {
				   address_id=rs0.getString(1);
			   }
			   }
			   String sql="select * from all_institution where state='0'";
			   sql=pingjie(sql,"name", text.getName(), 0);
			   sql=pingjie(sql,"gk", text.getGk(), 0);
			   sql=pingjie(sql,"sz_address",address_id, 0);
			   sql=pingjie(sql,"legal", text.getLegal(), 0);
			   sql=pingjie(sql,"lname", text.getLname(), 0);
			   sql=pingjie(sql,"institution", text.getInstitution(), 0);
			   sql=pingjie(sql,"technology", text.getTechnology(), 0);
			   sql=pingjie(sql,"keyword", text.getKeyword(), 0);
			   sql=pingjie(sql,"plan_invest", text.getPlan_invest(), 0);
			   sql=pingjie(sql,"mode", text.getMode(), 0);
			   sql=pingjie(sql,"type", text.getType(), 0);
			   sql=pingjie(sql,"classification", text.getClassification(), 0);
			   sql=pingjie(sql,"field", text.getField(), 0);
			   sql=pingjie(sql,"need_industry", text.getNeed_industry(), 0);
			   sql=pingjie(sql,"state", text.getState_id(), 0);
			   sql=pingjie(sql,"bm_id", text.getBm_id(), 0);
			   System.out.println(sql);
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
			  //System.out.println("aaaaaa");
			  ArrayList<textbeen> list =new ArrayList<>();
				while (rs.next()) {
					textbeen text1=new textbeen();
					text1.setId(rs.getInt(1));
					text1.setName(rs.getString(2));
					System.out.println(rs.getString(2));
					text1.setGk(rs.getString(3));
					text1.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text1.setSz_address(address);
					text1.setNet(rs.getString(6));
					text1.setEmail(rs.getString(7));
					text1.setLegal(rs.getString(8));
					text1.setPost(rs.getString(9));
					text1.setLname(rs.getString(10));
					text1.setPhone_gd(rs.getString(11));
					text1.setMobile(rs.getString(12));
					text1.setFax(rs.getString(13));
					text1.setInstitution(rs.getString(14));
					text1.setIntroduction(rs.getString(15));
					text1.setTechnology(rs.getString(16));
					text1.setTime_begin(rs.getString(17));
					text1.setTime_end(rs.getString(18));
					text1.setT_needtext_1(rs.getString(19));
					text1.setT_needtext_2(rs.getString(20));
					text1.setT_needtext_3(rs.getString(21));
					text1.setKeyword(rs.getString(22));
					text1.setPlan_invest(rs.getString(23));
					text1.setMode(rs.getString(24));
					text1.setHzyxdw(rs.getString(25));
					text1.setType(rs.getString(26));
					text1.setClassification(rs.getString(27));
					text1.setField(rs.getString(28));
					text1.setFieldadd(rs.getString(29));
					text1.setNeed_industry(rs.getString(30));
					String user_id=rs.getString(31);
					String sql3="select * from user where id="+user_id+"";
					pstmt=con.prepareStatement(sql3);
					rs3=pstmt.executeQuery();
					rs3.next();
					text1.setUsername(rs3.getString(2));
					text1.setNew_time(rs.getString(32));
               //判断当前状态
					text1.setState_id(rs.getString(33));
               if(rs.getString(33).equals("2+")) {
            	   text1.setState("审核通过");
               }
               else if(rs.getString(33).equals("1-")) {
            	   text1.setState("形式审核未通过");
               }
               else if(rs.getString(33).equals("2-")) {
            	   text1.setState("部门审核未通过");
               }
               else {
            	   text1.setState("审核中");
               }
               
					list.add(text1);
					
				}
				return list;
		   }catch (Exception e) {
			// TODO: handle exception
			   
		   }
		   finally {
			Dbutil.closeAll(con,pstmt, rs);
		}
			return null;
			}	
//管理员检索
public static ArrayList<textbeen> A_moreseaarch_0(textbeen text){
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs0=null;
			ResultSet rs=null;
		    ResultSet rs2=null;
		    ResultSet rs3=null;
		   try {
			   con=Dbutil.getConnection();
			   String address_id = "";
			   if (text.getSz_address()!="") {
			   String sql0="select * from address where address='"+text.getSz_address()+"'";
			   pstmt=con.prepareStatement(sql0);
			   rs0=pstmt.executeQuery();			  
			   while(rs0.next()) {
				   address_id=rs0.getString(1);
			   }
			   }
			   String sql="select * from all_institution where state!='-1'";
			   sql=pingjie_0(sql,"name", text.getName(), 0);
			   sql=pingjie_0(sql,"gk", text.getGk(), 0);
			   sql=pingjie_0(sql,"sz_address", address_id, 0);
			   sql=pingjie_0(sql,"legal", text.getLegal(), 0);
			   sql=pingjie_0(sql,"lname", text.getLname(), 0);
			   sql=pingjie_0(sql,"institution", text.getInstitution(), 0);
			   sql=pingjie_0(sql,"technology", text.getTechnology(), 0);
			   sql=pingjie_0(sql,"keyword", text.getKeyword(), 0);
			   sql=pingjie_0(sql,"plan_invest", text.getPlan_invest(), 0);
			   sql=pingjie_0(sql,"mode", text.getMode(), 0);
			   sql=pingjie_0(sql,"type", text.getType(), 0);
			   sql=pingjie_0(sql,"classification", text.getClassification(), 0);
			   sql=pingjie_0(sql,"field", text.getField(), 0);
			   sql=pingjie_0(sql,"need_industry", text.getNeed_industry(), 0);
			   sql=pingjie_0(sql,"state", text.getState_id(), 0);
			   sql=pingjie_0(sql,"bm_id", text.getBm_id(), 0);
			  System.out.println(sql);
			  pstmt=con.prepareStatement(sql);
			  rs=pstmt.executeQuery();
			  ArrayList<textbeen> list =new ArrayList<>();
				while (rs.next()) {
					textbeen text1=new textbeen();
					text1.setId(rs.getInt(1));
					text1.setName(rs.getString(2));
					System.out.println(rs.getString(2));
					text1.setGk(rs.getString(3));
					text1.setPhone_address(rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					text1.setSz_address(address);
					text1.setNet(rs.getString(6));
					text1.setEmail(rs.getString(7));
					text1.setLegal(rs.getString(8));
					text1.setPost(rs.getString(9));
					text1.setLname(rs.getString(10));
					text1.setPhone_gd(rs.getString(11));
					text1.setMobile(rs.getString(12));
					text1.setFax(rs.getString(13));
					text1.setInstitution(rs.getString(14));
					text1.setIntroduction(rs.getString(15));
					text1.setTechnology(rs.getString(16));
					text1.setTime_begin(rs.getString(17));
					text1.setTime_end(rs.getString(18));
					text1.setT_needtext_1(rs.getString(19));
					text1.setT_needtext_2(rs.getString(20));
					text1.setT_needtext_3(rs.getString(21));
					text1.setKeyword(rs.getString(22));
					text1.setPlan_invest(rs.getString(23));
					text1.setMode(rs.getString(24));
					text1.setHzyxdw(rs.getString(25));
					text1.setType(rs.getString(26));
					text1.setClassification(rs.getString(27));
					text1.setField(rs.getString(28));
					text1.setFieldadd(rs.getString(29));
					text1.setNeed_industry(rs.getString(30));
					String user_id=rs.getString(31);
					String sql3="select * from user where id="+user_id+"";
					pstmt=con.prepareStatement(sql3);
					rs3=pstmt.executeQuery();
					rs3.next();
					text1.setUsername(rs3.getString(2));
					text1.setNew_time(rs.getString(32));
             //判断当前状态
					text1.setState_id(rs.getString(33));
             if(rs.getString(33).equals("2+")) {
          	   text1.setState("审核通过");
             }
             else if(rs.getString(33).equals("1-")) {
          	   text1.setState("形式审核未通过");
             }
             else if(rs.getString(33).equals("2-")) {
          	   text1.setState("部门审核未通过");
             }
             else {
          	   text1.setState("审核中");
             }
             
					list.add(text1);
					
				}
				return list;
		   }catch (Exception e) {
			// TODO: handle exception
			   
		   }
		   finally {
			Dbutil.closeAll(con,pstmt, rs);
		}
			return null;
			}
		 //多条件模糊查询
		public static ArrayList<textbeen> A_moreseaarch_1(textbeen text){
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs0=null;
			ResultSet rs=null;
		    ResultSet rs2=null;
		    ResultSet rs3=null;
		   try {
			   con=Dbutil.getConnection();
			   String address_id = "";
			   if (text.getSz_address()!="") {
			   String sql0="select * from address where address='"+text.getSz_address()+"'";
			   pstmt=con.prepareStatement(sql0);
			   rs0=pstmt.executeQuery();
			   while(rs0.next()) {
				   address_id=rs0.getString(1);
			   }
			   }
			   String sql="select * from all_institution where state!='-1'";
			   sql=pingjie(sql,"name", text.getName(), 0);
			   sql=pingjie(sql,"gk", text.getGk(), 0);
			   sql=pingjie(sql,"sz_address",address_id, 0);
			   sql=pingjie(sql,"legal", text.getLegal(), 0);
			   sql=pingjie(sql,"lname", text.getLname(), 0);
			   sql=pingjie(sql,"institution", text.getInstitution(), 0);
			   sql=pingjie(sql,"technology", text.getTechnology(), 0);
			   sql=pingjie(sql,"keyword", text.getKeyword(), 0);
			   sql=pingjie(sql,"plan_invest", text.getPlan_invest(), 0);
			   sql=pingjie(sql,"mode", text.getMode(), 0);
			   sql=pingjie(sql,"type", text.getType(), 0);
			   sql=pingjie(sql,"classification", text.getClassification(), 0);
			   sql=pingjie(sql,"field", text.getField(), 0);
			   sql=pingjie(sql,"need_industry", text.getNeed_industry(), 0);
			   sql=pingjie(sql,"state", text.getState_id(), 0);
			   sql=pingjie(sql,"bm_id", text.getBm_id(), 0);
			   System.out.println(sql);
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				 ArrayList<textbeen> list =new ArrayList<>();
					while (rs.next()) {
						textbeen text1=new textbeen();
						text1.setId(rs.getInt(1));
						text1.setName(rs.getString(2));
						System.out.println(rs.getString(2));
						text1.setGk(rs.getString(3));
						text1.setPhone_address(rs.getString(4));
						//查找地址
						String sql2="select address from address where id='"+rs.getString(5)+"'";
						pstmt=con.prepareStatement(sql2);
						rs2=pstmt.executeQuery();
						rs2.next();
						String address=rs2.getString(1);
		                // System.out.println(id);
						text1.setSz_address(address);
						text1.setNet(rs.getString(6));
						text1.setEmail(rs.getString(7));
						text1.setLegal(rs.getString(8));
						text1.setPost(rs.getString(9));
						text1.setLname(rs.getString(10));
						text1.setPhone_gd(rs.getString(11));
						text1.setMobile(rs.getString(12));
						text1.setFax(rs.getString(13));
						text1.setInstitution(rs.getString(14));
						text1.setIntroduction(rs.getString(15));
						text1.setTechnology(rs.getString(16));
						text1.setTime_begin(rs.getString(17));
						text1.setTime_end(rs.getString(18));
						text1.setT_needtext_1(rs.getString(19));
						text1.setT_needtext_2(rs.getString(20));
						text1.setT_needtext_3(rs.getString(21));
						text1.setKeyword(rs.getString(22));
						text1.setPlan_invest(rs.getString(23));
						text1.setMode(rs.getString(24));
						text1.setHzyxdw(rs.getString(25));
						text1.setType(rs.getString(26));
						text1.setClassification(rs.getString(27));
						text1.setField(rs.getString(28));
						text1.setFieldadd(rs.getString(29));
						text1.setNeed_industry(rs.getString(30));
						String user_id=rs.getString(31);
						String sql3="select * from user where id="+user_id+"";
						pstmt=con.prepareStatement(sql3);
						rs3=pstmt.executeQuery();
						rs3.next();
						text1.setUsername(rs3.getString(2));
						text1.setNew_time(rs.getString(32));
	               //判断当前状态
						text1.setState_id(rs.getString(33));
	               if(rs.getString(33).equals("2+")) {
	            	   text1.setState("审核通过");
	               }
	               else if(rs.getString(33).equals("1-")) {
	            	   text1.setState("形式审核未通过");
	               }
	               else if(rs.getString(33).equals("2-")) {
	            	   text1.setState("部门审核未通过");
	               }
	               else {
	            	   text1.setState("审核中");
	               }
	               
						list.add(text1);
						
					}
					return list;
		   }catch (Exception e) {
			// TODO: handle exception
			   
		   }
		   finally {
			Dbutil.closeAll(con,pstmt, rs);
		}
			return null;
			}
//高级检索		
//		public static JSONArray A_gjseaarch_0(textbeen text){
//			Connection con=null;
//			PreparedStatement pstmt=null;
//			ResultSet rs0=null;
//			ResultSet rs=null;
//		    ResultSet rs2=null;
//		    ResultSet rs3=null;
//		   try {
//			   con=Dbutil.getConnection();
//			   String address_id = "";
//			   if (text.getSz_address()!="") {
//			   String sql0="select * from address where address='"+text.getSz_address()+"'";
//			   pstmt=con.prepareStatement(sql0);
//			   rs0=pstmt.executeQuery();			  
//			   while(rs0.next()) {
//				   address_id=rs0.getString(1);
//			   }
//			   }
//			   String sql="select * from all_institution where state!='-1'";
//			   sql=pingjie_0(sql,"name", text.getName(), 0);
//			   sql=pingjie_0(sql,"gk", text.getGk(), 0);
//			   sql=pingjie_0(sql,"sz_address", address_id, 0);
//			   sql=pingjie_0(sql,"legal", text.getLegal(), 0);
//			   sql=pingjie_0(sql,"lname", text.getLname(), 0);
//			   sql=pingjie_0(sql,"institution", text.getInstitution(), 0);
//			   sql=pingjie_0(sql,"technology", text.getTechnology(), 0);
//			   sql=pingjie_0(sql,"keyword", text.getKeyword(), 0);
//			   sql=pingjie_0(sql,"plan_invest", text.getPlan_invest(), 0);
//			   sql=pingjie_0(sql,"mode", text.getMode(), 0);
//			   sql=pingjie_0(sql,"type", text.getType(), 0);
//			   sql=pingjie_0(sql,"classification", text.getClassification(), 0);
//			   sql=pingjie_0(sql,"field", text.getField(), 0);
//			   sql=pingjie_0(sql,"need_industry", text.getNeed_industry(), 0);
//			   sql=pingjie_0(sql,"state", text.getState_id(), 0);
//			   sql=pingjie_0(sql,"bm_id", text.getBm_id(), 0);
//			  System.out.println(sql);
//			  pstmt=con.prepareStatement(sql);
//			  rs=pstmt.executeQuery();
//			  JSONArray jsonArray=new JSONArray();
//				while (rs.next()) {
//					JSONObject json=new JSONObject();
//					json.put("id",rs.getInt(1));
//					json.put("name",rs.getString(2));
//					//System.out.println("db"+rs.getString(2));
//					json.put("GK", rs.getString(3));
//				    json.put("Phone_address",rs.getString(4));
//					//查找地址
//					String sql2="select address from address where id='"+rs.getString(5)+"'";
//					pstmt=con.prepareStatement(sql2);
//					rs2=pstmt.executeQuery();
//					rs2.next();
//					String address=rs2.getString(1);
//	                // System.out.println(id);
//					json.put("Sz_address",address);
//					json.put("Net",rs.getString(6));
//					json.put("Email",rs.getString(7));
//					json.put("Legal",rs.getString(8));
//					json.put("Post",rs.getString(9));
//					json.put("Lname",rs.getString(10));
//					json.put("Phone_gd",rs.getString(11));
//					json.put("Mobile",rs.getString(12));
//					json.put("Fax",rs.getString(13));
//					json.put("Institution",rs.getString(14));
//					json.put("Introduction",rs.getString(15));
//					json.put("Technology",rs.getString(16));
//					json.put("Time_begin",rs.getString(17));
//					json.put("Time_end",rs.getString(18));
//					json.put("T_needtext_1",rs.getString(19));
//					json.put("T_needtext_2",rs.getString(20));
//					json.put("T_needtext_3",rs.getString(21));
//					json.put("Keyword",rs.getString(22));
//					json.put("Plan_invest",rs.getString(23));
//					json.put("Mode",rs.getString(24));
//					json.put("Hzyxdw",rs.getString(25));
//					json.put("Type",rs.getString(26));
//					json.put("Classification",rs.getString(27));
//					json.put("Field",rs.getString(28));
//					json.put("Fieldadd",rs.getString(29));
//					json.put("Need_industry",rs.getString(30));
//					String user_id=rs.getString(31);
//					String sql3="select * from user where id="+user_id+"";
//					pstmt=con.prepareStatement(sql3);
//					rs3=pstmt.executeQuery();
//					rs3.next();
//					json.put("Username",rs3.getString(2));
//					json.put("New_time",rs.getString(32));
//					 //判断当前状态
//					json.put("State_id",rs.getString(33));   
//		               if(rs.getString(33).equals("2+")) {
//		            	   json.put("State","审核通过");
//		               }
//		               else if(rs.getString(33).equals("1-")) {
//		            	   json.put("State","形式审核未通过");
//		               }
//		               else if(rs.getString(33).equals("2-")) {
//		            	   json.put("State","部门审核未通过");
//		               }
//		               else {
//		            	   json.put("State","审核中");
//		               }
//               
//					jsonArray.add(json);
//					
//				}
//				return jsonArray;
//		   }catch (Exception e) {
//			// TODO: handle exception
//			   
//		   }
//		   finally {
//			Dbutil.closeAll(con,pstmt, rs);
//		}
//			return null;
//			}
//		 //多条件模糊查询
//		public static JSONArray A_gjseaarch_1(textbeen text){
//			Connection con=null;
//			PreparedStatement pstmt=null;
//			ResultSet rs0=null;
//			ResultSet rs=null;
//		    ResultSet rs2=null;
//		    ResultSet rs3=null;
//		   try {
//			   con=Dbutil.getConnection();
//			   String address_id = "";
//			   if (text.getSz_address()!="") {
//			   String sql0="select * from address where address='"+text.getSz_address()+"'";
//			   pstmt=con.prepareStatement(sql0);
//			   rs0=pstmt.executeQuery();
//			   while(rs0.next()) {
//				   address_id=rs0.getString(1);
//			   }
//			   }
//			   String sql="select * from all_institution where state!='-1'";
//			   sql=pingjie(sql,"name", text.getName(), 0);
//			   sql=pingjie(sql,"gk", text.getGk(), 0);
//			   sql=pingjie(sql,"sz_address",address_id, 0);
//			   sql=pingjie(sql,"legal", text.getLegal(), 0);
//			   sql=pingjie(sql,"lname", text.getLname(), 0);
//			   sql=pingjie(sql,"institution", text.getInstitution(), 0);
//			   sql=pingjie(sql,"technology", text.getTechnology(), 0);
//			   sql=pingjie(sql,"keyword", text.getKeyword(), 0);
//			   sql=pingjie(sql,"plan_invest", text.getPlan_invest(), 0);
//			   sql=pingjie(sql,"mode", text.getMode(), 0);
//			   sql=pingjie(sql,"type", text.getType(), 0);
//			   sql=pingjie(sql,"classification", text.getClassification(), 0);
//			   sql=pingjie(sql,"field", text.getField(), 0);
//			   sql=pingjie(sql,"need_industry", text.getNeed_industry(), 0);
//			   sql=pingjie(sql,"state", text.getState_id(), 0);
//			   sql=pingjie(sql,"bm_id", text.getBm_id(), 0);
//			   System.out.println(sql);
//				pstmt=con.prepareStatement(sql);
//				rs=pstmt.executeQuery();
//				 JSONArray jsonArray=new JSONArray();
//					while (rs.next()) {
//						JSONObject json=new JSONObject();
//						json.put("id",rs.getInt(1));
//						json.put("name",rs.getString(2));
//						//System.out.println("db"+rs.getString(2));
//						json.put("GK", rs.getString(3));
//					    json.put("Phone_address",rs.getString(4));
//						//查找地址
//						String sql2="select address from address where id='"+rs.getString(5)+"'";
//						pstmt=con.prepareStatement(sql2);
//						rs2=pstmt.executeQuery();
//						rs2.next();
//						String address=rs2.getString(1);
//		                // System.out.println(id);
//						json.put("Sz_address",address);
//						json.put("Net",rs.getString(6));
//						json.put("Email",rs.getString(7));
//						json.put("Legal",rs.getString(8));
//						json.put("Post",rs.getString(9));
//						json.put("Lname",rs.getString(10));
//						json.put("Phone_gd",rs.getString(11));
//						json.put("Mobile",rs.getString(12));
//						json.put("Fax",rs.getString(13));
//						json.put("Institution",rs.getString(14));
//						json.put("Introduction",rs.getString(15));
//						json.put("Technology",rs.getString(16));
//						json.put("Time_begin",rs.getString(17));
//						json.put("Time_end",rs.getString(18));
//						json.put("T_needtext_1",rs.getString(19));
//						json.put("T_needtext_2",rs.getString(20));
//						json.put("T_needtext_3",rs.getString(21));
//						json.put("Keyword",rs.getString(22));
//						json.put("Plan_invest",rs.getString(23));
//						json.put("Mode",rs.getString(24));
//						json.put("Hzyxdw",rs.getString(25));
//						json.put("Type",rs.getString(26));
//						json.put("Classification",rs.getString(27));
//						json.put("Field",rs.getString(28));
//						json.put("Fieldadd",rs.getString(29));
//						json.put("Need_industry",rs.getString(30));
//						String user_id=rs.getString(31);
//						String sql3="select * from user where id="+user_id+"";
//						pstmt=con.prepareStatement(sql3);
//						rs3=pstmt.executeQuery();
//						rs3.next();
//						json.put("Username",rs3.getString(2));
//						json.put("New_time",rs.getString(32));
//						 //判断当前状态
//						json.put("State_id",rs.getString(33));   
//			               if(rs.getString(33).equals("2+")) {
//			            	   json.put("State","审核通过");
//			               }
//			               else if(rs.getString(33).equals("1-")) {
//			            	   json.put("State","形式审核未通过");
//			               }
//			               else if(rs.getString(33).equals("2-")) {
//			            	   json.put("State","部门审核未通过");
//			               }
//			               else {
//			            	   json.put("State","审核中");
//			               }
//	               
//						jsonArray.add(json);
//						
//					}
//					return jsonArray;
//		   }catch (Exception e) {
//			// TODO: handle exception
//			   
//		   }
//		   finally {
//			Dbutil.closeAll(con,pstmt, rs);
//		}
//			return null;
//			}
	//高级检索
		public static JSONArray gj_select(ArrayList<gjbeen> list,String state,int i){
			Connection con=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			ResultSet rs2=null;
			ResultSet rs3=null;
			try {
				con=dbutil.getConnection();
				String sql="select * from all_institution where state='"+state+"'";
				for (int j=0;j<=i;j++) {
					if (list.get(i).getFour_id().equals("0")) {
						sql=pingjie_0(sql,list.get(i).getTwo_id() , list.get(i).getThree_id(), list.get(i).getOne_id());
					}
					else if (list.get(i).getFour_id().equals("1")){
						sql=pingjie(sql,list.get(i).getTwo_id() , list.get(i).getThree_id(), list.get(i).getOne_id());
					}
				}
				System.out.println(sql);
				pstmt=con.prepareStatement(sql);
				rs=pstmt.executeQuery();
				  //System.out.println("aaaaaa");
				JSONArray jsonArray=new JSONArray();
				while (rs.next()) {
					JSONObject json=new JSONObject();
					json.put("id",rs.getInt(1));
					json.put("Name",rs.getString(2));
					//System.out.println("db"+rs.getString(2));
					json.put("GK", rs.getString(3));
				    json.put("Phone_address",rs.getString(4));
					//查找地址
					String sql2="select address from address where id='"+rs.getString(5)+"'";
					pstmt=con.prepareStatement(sql2);
					rs2=pstmt.executeQuery();
					rs2.next();
					String address=rs2.getString(1);
	                // System.out.println(id);
					json.put("Sz_address",address);
					json.put("Net",rs.getString(6));
					json.put("Email",rs.getString(7));
					json.put("Legal",rs.getString(8));
					json.put("Post",rs.getString(9));
					json.put("Lname",rs.getString(10));
					json.put("Phone_gd",rs.getString(11));
					json.put("Mobile",rs.getString(12));
					json.put("Fax",rs.getString(13));
					json.put("Institution",rs.getString(14));
					json.put("Introduction",rs.getString(15));
					json.put("Technology",rs.getString(16));
					json.put("Time_begin",rs.getString(17));
					json.put("Time_end",rs.getString(18));
					json.put("T_needtext_1",rs.getString(19));
					json.put("T_needtext_2",rs.getString(20));
					json.put("T_needtext_3",rs.getString(21));
					json.put("Keyword",rs.getString(22));
					json.put("Plan_invest",rs.getString(23));
					json.put("Mode",rs.getString(24));
					json.put("Hzyxdw",rs.getString(25));
					json.put("Type",rs.getString(26));
					json.put("Classification",rs.getString(27));
					json.put("Field",rs.getString(28));
					json.put("Fieldadd",rs.getString(29));
					json.put("Need_industry",rs.getString(30));
					String user_id=rs.getString(31);
					String sql3="select * from user where id="+user_id+"";
					pstmt=con.prepareStatement(sql3);
					rs3=pstmt.executeQuery();
					rs3.next();
					json.put("Username",rs3.getString(2));
					json.put("New_time",rs.getString(32));
					 //判断当前状态
					json.put("State_id",rs.getString(33));   
		               if(rs.getString(33).equals("2+")) {
		            	   json.put("State","审核通过");
		               }
		               else if(rs.getString(33).equals("1-")) {
		            	   json.put("State","形式审核未通过");
		               }
		               else if(rs.getString(33).equals("2-")) {
		            	   json.put("State","部门审核未通过");
		               }
		               else {
		            	   json.put("State","审核中");
		               }
               
					jsonArray.add(json);
					
				}
				return jsonArray;
			} catch (Exception e) {
				// TODO: handle exception
			}finally {
				dbutil.closeAll(con, pstmt,rs);
			}
			
			return null;
			
		}
	 //删除操作
	 public static boolean delete(String id) {
		 Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			con=Dbutil.getConnection();
			String sql="delete from all_institution where id="+id;
			System.out.println(sql);
			pstmt=con.prepareStatement(sql);
			pstmt.executeUpdate();
			return true;
		   
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		finally {
			Dbutil.closePart(con, pstmt);
		}
		return false;
	 }
	 
//sql字符串拼接 (i=0 表示and i=1 表示or)
public static String pingjie(String s1,String s2 ,String s3,int i ) {
	if(i==0) {
	 if (s3!="") {

			s1=s1+" and "+s2+" like " +"'%"+s3+"%'" ;
	 }
	 }
	else if(i==1) {
		 if (s3!="") {
			 
			   s1=s1+" or "+s2+" like " +"'%"+s3+"%'" ;
		}
		
	}
	return s1;
}

//精确SQL拼接
public static String pingjie_0(String s1,String s2 ,String s3,int i ) {
	if(i==0) {
		 if (s3!="") {
			s1=s1+" and "+s2+" = " +"'"+s3+"'" ;
			}
		
	}
	else if(i==1) {
		 if (s3!="") {
				s1=s1+" or "+s2+" = " +"'"+s3+"'" ;
			}
	}
		
	return s1;
}

//形式审核
public static boolean sx_check(String xsyj,String result,String bm_id,String id) {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try {
		con=dbutil.getConnection();
		if (result.equals("1-"))bm_id="";
		String sql="update all_institution set state='"+result+"' , xsyj='"+xsyj+"', bm_id='"+bm_id+"' where id= "+id+"";
		System.out.println(sql);
		pstmt=con.prepareStatement(sql);
		pstmt.executeUpdate();
		return true;
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally {
		Dbutil.closeAll(con, pstmt, rs);
	}
	return false;
}
//部门审核
public static boolean bm_check(String bmyj,String result,String id) {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	try {
		con=dbutil.getConnection();
		String sql="update all_institution set state='"+result+"' , bmyj='"+bmyj+"' where id= "+id+"";
		System.out.println("部门"+sql);
		pstmt=con.prepareStatement(sql);
		pstmt.executeUpdate();
		return true;
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally {
		Dbutil.closeAll(con, pstmt, rs);
	}
	return false;
}
//picture
public static JSONArray check_num(String state) {
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	try {
		con=dbutil.getConnection();
		String sql="select "+state+" from all_institution group by "+state+"";
		//String sql0="select distinct("+state+") from all_institution";
		System.out.println(sql);
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		ArrayList<String> list=new ArrayList<>();
		JSONArray jsonArray=new JSONArray();
		String  str="[";
		while(rs.next()) {
			list.add(rs.getString(1));
			System.out.println("值:"+rs.getString(1));
		}
		for (int i=0;i<list.size();i++) {
			JSONObject jsonObject=new JSONObject();
			String sql1="SELECT COUNT("+state+")  FROM all_institution WHERE "+state+"='"+list.get(i)+"'";
			System.out.println(sql1);
			pstmt=con.prepareStatement(sql1);
			rs1=pstmt.executeQuery();
			rs1.next();
			System.out.println(list.get(i));
			System.out.println("111"+rs1.getString(1));
			jsonObject.put("name", list.get(i));
			jsonObject.put("num", rs1.getString(1));
			jsonArray.add(jsonObject);
		}
		System.out.println(jsonArray.toString());
		return jsonArray;
		
	} catch (Exception e) {
		// TODO: handle exception
	}finally {
		Dbutil.closeAll(con, pstmt, rs);
	}
	return null;
	
}
public static void main(String[] args) {
//	textbeen text =new textbeen();
//	text.setName("a");
//	moreseaarch_1(text);
	check_num("type");
	
}
}

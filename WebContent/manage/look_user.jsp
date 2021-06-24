<%@page import="com.zwx.been.textbeen"%>
<%@page import="com.zwx.been.enter"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
<style>
   .main{
        border: 1px solid white;
		width: 100%;
		height:outo;
   }
</style>
</head>
<body>
<div class="main">
	<div class="crumb-wrap">
		<div class="crumb-list">
			<i class="icon-font"></i><a
				href="index.jsp?name=<%=request.getParameter("name") %>">首页</a><span
				class="crumb-step">&gt;</span><span class="crumb-name">信息管理</span>
		</div>
	</div>
	<div class="result-wrap">
		<form action="A_updateuser" method="post" id="myform" name="myform">
			<div class="config-items">
				<div class="config-title">
					<h1>
						<i class="icon-font">&#128100;</i>个人信息管理
					</h1>
				</div>
				<% ArrayList<enter> list=(ArrayList<enter>)request.getAttribute("list") ;
				%>
				<div class="result-content">
				<input type="text" value="<%=list.get(0).getId()%>" hidden="true" id="id" name="id" >
					<table width="100%" class="insert-tab">
						<tbody>
							<tr>
								<th width="15%">用户名：</th>
								<td><input type="text" id="username" value="<%=list.get(0).getUsername() %>" size="85"
									name="username" class="common-text"></td>
							</tr>
							<tr>
								<th>姓名：</th>
								<td><input type="text" id="name" value="<%=list.get(0).getName() %>"size="85" name="name" class="common-text"></td>
							</tr>
							<tr>
								<th>性别：</th>
								<td>
								<input type="text" id="sex" value="<%=list.get(0).getSex() %>" size="85" name="sex" class="common-text">
								
								</td>
							</tr>
							<tr>
								<th>国家/省市：</th>
								<td>省：<input type="text" id="pro" value="<%=list.get(0).getPro() %>" size="25"name="pro" class="common-text">
								        市：<input type="text" id="city" value="<%=list.get(0).getCity() %>" size="25" name="city" class="common-text">
								</td>
							</tr>
							<tr>
								<th>机构全称：</th>
								<td>
								    <input type="text" id="unit" value="<%=list.get(0).getUnit() %>" size="85"name="unit" class="common-text">
								</td>
							</tr>
				            <tr>
								<th>专业方向：</th>
								<td>
								    <input type="text" id="zyfx" value="<%=list.get(0).getZyfx() %>" size="85"name="zyfx" class="common-text">
								</td>
							</tr>
                          <tr>
								<th>所在行业：</th>
								<td>
								    <input type="text" id="szhy" value="<%=list.get(0).getSzhy() %>" size="85"name="szhy" class="common-text">
								</td>
							</tr>
                            <tr>
								<th>教育程度：</th>
								<td>
								    <input type="text" id="jycd" value="<%=list.get(0).getJycd() %>" size="85"name="jycd" class="common-text">
								</td>
							</tr>
                           <tr>
								<th>职称：</th>
								<td>
								    <input type="text" id="zc" value="<%=list.get(0).getZc() %>" size="85"name="zc" class="common-text">
								</td>
							</tr>
                        <tr>
								<th>通讯地址：</th>
								<td>
								    <input type="text" id="address" value="<%=list.get(0).getAddress() %>" size="85"name="address" class="common-text">
								</td>
							</tr>
                          <tr>
								<th>邮政编码：</th>
								<td>
								    <input type="text" id="code" value="<%=list.get(0).getCode()%>" size="85"name="code" class="common-text">
								</td>
							</tr>
                             <tr>
								<th>手机：</th>
								<td>
								    <input type="text" id="phone" value="<%=list.get(0).getPhone() %>" size="85"name="phone" class="common-text">
								</td>
							</tr>
							<tr>
								<th>固定电话：</th>
								<td>
								    <input type="text" id="phone_gd" value="<%=list.get(0).getPhone_gd() %>" size="85"name="phone_gd" class="common-text">
								</td>
							</tr>
                           <tr>
								<th>邮箱：</th>
								<td>
								    <input type="text" id="email" value="<%=list.get(0).getEmail()%>" size="85"name="email" class="common-text">
								</td>
							</tr>
                           <tr>
								<th>QQ：</th>
								<td>
								    <input type="text" id="qq" value="<%=list.get(0).getQq() %>" size="85"name="qq" class="common-text">
								</td>
							</tr>
							<tr>
								<th>MSN：</th>
								<td>
								    <input type="text" id="msn" value="<%=list.get(0).getMsn() %>" size="85"name="msn" class="common-text">
								</td>
							</tr>
                  
                      <tr>
								<th></th>
								<td>
								<input type="submit" value="保存" class="btn btn6">
								<input type="button" value="返回"onClick="history.go(-1)" class="btn btn6"></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

		</form>
	</div>
</div>
</body>
</html>
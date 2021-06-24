<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>河北省重大技术需求管理系统</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<style>
iframe {
	border: 0px;
	height:700px;
}
</style>
</head>
<body>
	<div class="topbar-wrap white">
		<div class="topbar-inner clearfix">
			<div class="topbar-logo-wrap clearfix">
				<h1 class="topbar-logo none">
					<a href="index.html" class="navbar-brand">后台管理</a>
				</h1>


				<ul class="navbar-list clearfix">
					<li><a class="on"
						href="index.jsp?name=<%=request.getParameter("name") %>">首页</a></li>
					<li><a
						href="index.jsp?name=<%=request.getParameter("name") %>"
						target="_blank">网站首页</a></li>
				</ul>
			</div>
			<div class="top-info-wrap">
				<ul class="top-info-list clearfix">
					<li><a href="#">${sessionScope.name}</a></li>
					<li><a
						href="update_password.jsp?name=<%=request.getParameter("name") %>">修改密码</a></li>
					<li><a href="../login.jsp">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container clearfix">
		<div class="sidebar-wrap">
			<div class="sidebar-title">
				<h1>菜单</h1>
			</div>
			<div class="sidebar-content">
				<ul class="sidebar-list">
					<li><a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
						<ul class="sub-menu">
							<li><a href="../bm_selecttext?name=<%=request.getParameter("name") %>" target="operation"><i class="icon-font">&#xe008;</i>部门审核</a></li>
							<li><a href="update_password.jsp?name=<%=request.getParameter("name") %>" target="operation"><i class="icon-font">&#xe005;</i>密码重置</a></li>
							<li><a href="#" target="operation"><i class="icon-font">&#xe005;</i>统计查询权限</a></li>

						</ul></li>
					<li><a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
						<ul class="sub-menu">
							<li><a
								href="../sys.jsp" target="operation"><i
									class="icon-font">&#xe017;</i>系统介绍</a></li>

						</ul></li>
				</ul>
			</div>
		</div>
		<!--/sidebar-->
		<div class="main-wrap">
	
			<iframe name="operation" src="" width="100%" height="750px"> </iframe>
           
		</div>
		<!--/main-->
	</div>
</body>
</html>
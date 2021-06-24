<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8"/>
    <title>河北省重大技术需求管理系统</title>
    <link rel="stylesheet" type="text/css" href="css/common.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
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
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
           
          <c:if test="${sessionScope.name==null}">
            <script type="text/javascript">
            alert("请进行登录");
            window.location="login.jsp";
            </script>
          </c:if>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.jsp?name=<%=request.getParameter("name") %>" target="operation">首页</a></li>
                <li><a href="index.jsp?name=<%=request.getParameter("name") %>" target="_blank" target="operation">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <!-- <li><a href="#">${sessionScope.name}</a></li> -->
                <li><a href="#"><%=request.getParameter("name") %></a></li>
                <li><a href="update_password.jsp?name=<%=request.getParameter("name") %>" target="operation">修改密码</a></li>
                <li><a href="login.jsp">退出</a></li>
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
                <li>
                    <a href="#"><i class="icon-font">&#xe003;</i>常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="select?name=<%=request.getParameter("name") %>" target="operation"><i class="icon-font" >&#xe008;</i>需求管理</a></li>
                        <li><a href="select_user?name=<%=request.getParameter("name") %>" target="operation"> <i class="icon-font">&#xe005;</i>用户信息</a></li>
                        <li><a href="update_password.jsp?name=<%=request.getParameter("name") %>" target="operation"><i class="icon-font">&#xe005;</i>密码修改</a></li>
                        
                        
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-font">&#xe018;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="sys.jsp" target="operation"><i class="icon-font">&#xe017;</i>系统介绍</a></li>
                        
                    </ul>
                </li>
            </ul>
        </div>
    </div>
   <div class="main-wrap">
	
			<iframe name="operation" src="index.jsp?name=<%=request.getParameter("name") %>" width="100%" height="750px"> </iframe>
           
		</div>
	</div>
</body>
</html>
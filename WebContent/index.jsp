<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>网上查看</title>
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
<div  class="main">
    <!--/sidebar-->
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用河北省重大技术管理系统。</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>快捷操作</h1>
            </div>
            <div class="result-content">
                <div class="short-wrap">
                    <a href="before_textadd?name=<%=request.getParameter("name") %>"><i class="icon-font">&#xe001;</i>需求填报</a>
                    <a href="select?name=<%=request.getParameter("name") %>"><i class="icon-font">&#xe005;</i>报表浏览</a>
                  
                </div>
            </div>
        </div>
        
    </div>
    <!--/main-->
</div>
</body>
</html>
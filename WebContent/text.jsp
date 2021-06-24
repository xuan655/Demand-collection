
<%@page import="com.zwx.been.textbeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<title>网上查看</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/main.css" />
 <link rel="stylesheet" type="text/css" href="css/page.css">
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

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp?name=<%=request.getParameter("name") %>">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">填报管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="#" method="post">
                    <table class="search-tab">
                      
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
              <form name="myform" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="before_textadd?name=<%=request.getParameter("name") %>"><i class="icon-font"></i>新需求</a>
                        <a id="#" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="#" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                    
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            <th>用户名</th>
                            <th>机构全称</th>
                            <th>所在地域</th>
                             <th>法人代表</th>
                             <th>机构属性</th>
                             <th>更新时间</th>
                             <th>当前状态</th>
                            <th>操作</th>
                        </tr>
                       <% ArrayList<textbeen> list=(ArrayList<textbeen>)request.getAttribute("list");
                       int k=1;
                       System.out.println("list 的长度"+list.size());
                        for(int i=0;i<list.size();i++)
                        {
                        %>
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                            <td><%=k %><% k++; %></td>
                            <td title="#"><a target="_blank" href="select_user?name=<%=request.getParameter("name") %>" title=""><%=request.getParameter("name") %></a></td>
                            <td><%=list.get(i).getName()%></td>
                            <td><%=list.get(i).getSz_address()%></td>
                              <td><%=list.get(i).getLname()%></td>
                              <td><%=list.get(i).getInstitution() %></td>
                               <td><%=list.get(i).getNew_time() %></td>
                               <td><%=list.get(i).getState() %></td>
                            <td>
                                <a class="link-update" href="select_alltext?id=<%=list.get(i).getId()%>&&name=<%=request.getParameter("name") %>">查看详情</a>
                                <a class="link-del" href="delete?id=<%=list.get(i).getId()%>&&name=<%=request.getParameter("name") %>" onclick="return pd_delete();">删除</a>
                            </td>
                        </tr>
                        <%} %>
                    </table>
                    <div style="text-align: center;margin:250px auto;">
			         <div id="pager" class="pager clearfix">
			         </div>
		            </div>
 <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="js/jquery.z-pager.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
		$("#pager").zPager({
			totalData: 50,
			htmlBox: $('#wraper'),
			btnShow: true,
			ajaxSetData: false
		});
		
		function currentPage(currentPage){
			/*
				触发页码数位置： Page/js/jquery.z-pager.js 64行
			*/
			console.log("当前页码数：" + currentPage);
		}
		
</script>
	
                </div>
          </form>
        </div>
    </div>
    <!--/main-->
    
</div>
<script>
     function pd_delete(){
    	// alert ("aaaa");
    	 //window.confirm("sometext");
    	 var r = confirm("确认要执行删除操作？");
    	 if (r == true) {
    		// window.location="";
    	     return true;
    	 } else {
    	     return false;
    	 }
     }    
 </script>
</body>
</html>
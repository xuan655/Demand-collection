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
                        <a href="#"><i class="icon-font"></i>新增用户</a>
                        <a id="#" href="javascript:void(0)"><i class="icon-font"></i>批量删除</a>
                        <a id="#" href="javascript:void(0)"><i class="icon-font"></i>更新排序</a>
                    </div>
                    
                <div class="result-content">
                    <table class="result-tab" width="100%">
                    <tbody>
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            <th>用户名</th>
                            <th>真实姓名</th>
                             <th>性别</th>
                             <th>机构全称</th>
                             <th>权限管理</th>
                            <th>操作</th>
                        </tr>
               <% ArrayList<enter> list=(ArrayList<enter>)request.getAttribute("list");
                    for(int i =0;i<list.size();i++){
                    %><tr>
                    <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                          <td><%=i+1 %></td>
                          <td><%=list.get(i).getUsername() %></td>
                          <td><%=list.get(i).getName() %></td>
                          <td><%=list.get(i).getSex() %></td>
                           <td><%=list.get(i).getUnit() %></td>
                          <td><a href="A_updatestate?name=<%=list.get(i).getUsername() %>"><%=list.get(i).getState() %></a></td>
                          <td><a href="A_selectusers?name=<%=list.get(i).getUsername()%>">查看详情</a>&nbsp;<a href="A_delete_people?name=<%=list.get(i).getUsername()%>">删除</a></td>
                       </tr>
                    <%} %>
                    
                    </tbody>
                    </table>
                    <div style="text-align: center;margin:250px auto;">
			         <div id="pager" class="pager clearfix">
			         </div>
		            </div>
 <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
 <script src="../js/jquery.z-pager.js" type="text/javascript" charset="UTF-8"></script>
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
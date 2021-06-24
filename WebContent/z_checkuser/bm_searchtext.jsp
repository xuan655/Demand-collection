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
    <!--/sidebar-->

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp?name=<%=request.getParameter("name") %>">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">填报管理</span></div>
        </div>
        <div class="search-wrap">
            <div class="search-content">
                <form action="z_select" method="post">
                    <table class="search-tab">
                        <tr>
                           <td><input class="common-text" placeholder="机构全称" name="jg_name" value="" id="jg_name" type="text"></td>
                            <td><input class="common-text" placeholder="归口管理单位" name="gk" value="" id="gk" type="text"></td>
                            <td><input class="common-text" placeholder="所在地域" name="sz_address" value="" id="sz_address" type="text"></td>
                            <td><input class="common-text" placeholder="法人代表" name="legal" value="" id="legal" type="text"></td>
                            <td><input class="common-text" placeholder="联系人" name="lname" value="" id="lname" type="text"></td>
                         </tr>
                         <tr>
                            <td><input class="common-text" placeholder="机构属性" name="institution" value="" id="institution" type="text"></td>
                            <td><input class="common-text" placeholder="技术需求名称" name="technology" value="" id="technology" type="text"></td>
                            <td><input class="common-text" placeholder="关键字" name="keyword" value="" id="keyword" type="text"></td>
                            <td><input class="common-text" placeholder="拟投入资金总额" name="plan_invest" value="" id="plan_invest" type="text"></td>
                            <td><input class="common-text" placeholder="技术需求解决方式" name="mode" value="" id="mode" type="text"></td>
                       
                        </tr>
                         <tr>
                            <td><input class="common-text" placeholder="科技活动类型" name="type" value="" id="type" type="text"></td>
                            <td><input class="common-text" placeholder="学科分类" name="classification" value="" id="classification" type="text"></td>
                            <td><input class="common-text" placeholder="需求技术所属领域" name="field" value="" id="field" type="text"></td>
                            <td><input class="common-text" placeholder="需求技术应用行业" name="need_industry" value="" id="need_industry" type="text"></td>
                            <td><select name="search" id=""search"">
                                    <option value="0">精确</option>
                                    <option value="1">模糊</option>
                                </select>
                                &nbsp;
                                &nbsp;
                              <input class="btn btn-primary btn2" name="sub" value="查询" type="submit" ></td>
                             <td>
                              <a href="manage/picture.jsp">统计图表</a>
                              <a href="manage/gjselect.jsp">高级检索</a>
                              </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
        <div class="result-wrap">
              <form name="myform" id="myform" method="post">
            
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name="" type="checkbox"></th>
                            <th>排序</th>
                            <th>填报人</th>
                            <th>机构全称</th>
                            <th>所在地域</th>
                             <th>法人代表</th>
                             <th>机构属性</th>
                             <th>更新时间</th>
                             <th>当前状态</th>
                            <th>操作</th>
                        </tr>
                          <% ArrayList<textbeen> list=new ArrayList<>();
                          list=(ArrayList<textbeen>)request.getAttribute("list");
                       int k=1;
                       System.out.println("list 的长度"+list.size());
                        for(int i=0;i<list.size();i++)
                        {
                        %>
                        <tr>
                            <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                            <td><%=k %><% k++; %></td>
                            <td title="#"><a href="#"><%=list.get(i).getUsername() %></a></td>
                            <td><%=list.get(i).getName()%></td>
                            <td><%=list.get(i).getSz_address()%></td>
                              <td><%=list.get(i).getLname()%></td>
                              <td><%=list.get(i).getInstitution() %></td>
                               <td><%=list.get(i).getNew_time() %></td>
                               <td><%=list.get(i).getState() %></td>
                            <td>
                                <a class="link-update" href="select_alltext?id=<%=list.get(i).getId()%>">审核</a>
                            </td>
                        </tr>
                        <%} %>
                        
                    </table>
                    <div style="text-align: center;margin:250px auto;">
			         <div id="pager" class="pager clearfix">
			         </div>
		            </div>
 <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
  <script src="../js/jquery.z-pager.js" type="text/javascript" charset="utf-8"></script>
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
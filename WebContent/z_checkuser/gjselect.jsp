<%@page import="com.zwx.been.textbeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
<link rel="stylesheet" href="../css/demo.css" type="text/css">
<link rel="stylesheet" href="../css/zTreeStyle/zTreeStyle.css" type="text/css">
<style>
   #tj{
		width: 100%;
		height:auto;
		margin: auto;
		text-align: center;
   
   }
</style>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
 <script src="../js/jquery.z-pager.js" type="text/javascript" charset="utf-8"></script>
<script>
var i=0;
$.session.set('i',i+1);
function fn(){
	alert("aaa");
//if (i<=11){
	i=i+1;
	alert(i);
   $(".jiahao").remove();
	var search = "<div style='width:100%;height:60px;' id='"+i+"'>"+
        "<div style='position: relative;top:20px; left:50px;' class='input'>" +
  	    "<select style='height:30px;font-size:20px;align:center;' id='one_"+i+"'>"+
        "<option value='0'>AND</option><option value='1'>OR</option>"+
        "</select></div>" +
        "<div style='position: relative;top:-10px; left:120px;'>" +
        "<select style='height:30px;font-size:20px;align:center;' id='two_"+i+"'>" +
        "<option value='jg_name'>机构全称</option>"+ 
        "<option value='sz_address'>所在地域</option>"+
        "<option value='legal'>法人代表</option>"+
        "<option value='lname'>联系人</option>"+ 
        "<option value='institution'>机构属性</option>"+
        "<option value='technology'>技术需求名称</option>"+
        "<option value='keyword'>关键字</option>"+
        "<option value='plan_invest'>拟投入资金总额</option>"+
        "<option value='mode'>技术需求解决方式</option>"+
        "<option value='type'>科技活动类型</option>"+ 
        "<option value='classification'>学科分类</option>"+ 
        "<option value='field'>需求技术所属领域</option>"+
        "<option value='need_industry'>需求技术应用行业</option>"+ 
   "</select></div>"+
   "<div style='position: relative;left:303px;top:-40px'><input name='title' size='80' type='text' style='height:24px;' id='three_"+i+"'></div> " +
   "<div style='position: relative;left:970px;top:-70px'><select style='height:30px;font-size:20px;align:center;' id='four_"+i+"'>"+ 
   "<option value='0'>精确</option>"+
   "<option value='1'>模糊</option>" + 
   "</select></div>"  +
   "<div style='position:relative;top:-103px; left:1040px;'>"+
     
    "</div>"+ 
"</div>"
$("#table").append(search);
}
//}

function fn1(){
	alert("bbb");
	//$("#fuhao").parent("#result").remove();
	$("#"+i+"").remove();
	//if (i!=0)  
		i=i-1;
	alert(i);
}
</script>
<body>

          <div style="width:100%;height:60px;">
          <form action="../gjselect" method="post">
          <div style="position: relative;top:20px; left:50px;"> 
          	<select style="height:30px;font-size:20px;align:center;" id="one_0">
           	<option value="0">AND</option><option value="1">OR</option>
           </select></div>
            <div style="position: relative;top:-10px; left:120px;">
            <select style="height:30px;font-size:20px;align:center;" id="two_0">
                 <option value="jgname">机构全称</option>
                 <option value="sz_address">所在地域</option>
                 <option value="legal">法人代表</option>
                 <option value="lname">联系人</option>
                 <option value="institution">机构属性</option>
                 <option value="technology">技术需求名称</option>
                 <option value="keyword">关键字</option>
                 <option value="plan_invest">拟投入资金总额</option>
                 <option value="mode">技术需求解决方式</option>
                 <option value="type">科技活动类型</option>
                 <option value="classification">学科分类</option>
                 <option value="field">需求技术所属领域</option>
                 <option value="need_industry">需求技术应用行业</option>
            </select></div>
           <div style="position: relative;left:303px;top:-40px"><input  id="three_0" name="title" size="80" type="text" style="height:24px;"></div> 
           <div style="position: relative;left:970px;top:-70px"><select style="height:30px;font-size:20px;align:center;" id="four_0"> 
             <option value="0">精确</option>
             <option value="1">模糊</option>
             </select></div> 
           <div style="position:relative;top:-103px; left:1040px;">
               <input type="button" value="-"  class="btn btn-primary btn2" onclick="fn1()">&nbsp;&nbsp;&nbsp;&nbsp;
               <input type="button" value="+" class="btn btn-primary btn2" onclick="fn()"> 
           </div>
        </div>    
        <div id="table"></div>
        <div id="tj">
        <select value="state">
             <option value="0">未审核</option>
             <option value="1+">形式审核通过</option>
             <option value="1-">形式审核未通过</option>
             <option value="2+">部门审核通过</option>
             <option value="2-">部门审核未通过</option>
        </select>
        <input type="submit" value="查询" class="btn btn-primary btn2" > 
        </div>
           <div class="result-wrap">
             
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
 
                         <% if(request.getParameter("result")!=null&&request.getParameter("result").equals("yes")){
                         ArrayList<textbeen> list=new ArrayList<>();
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
                        <%} }%>
                    </table>
                    <div style="text-align: center;margin:250px auto;">
			         <div id="pager" class="pager clearfix">
			         </div>
		            </div>

	
                </div>       
        </div>
</body>
</html>

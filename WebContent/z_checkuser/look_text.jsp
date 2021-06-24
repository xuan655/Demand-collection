<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.List"%>
<%@page import="com.zwx.been.textbeen"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp?name=<%=request.getParameter("name") %>">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="select?name=<%=request.getParameter("name") %>">问卷调查管理</a><span class="crumb-step">&gt;</span><span>查看问卷</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
            
                <%
                ArrayList<textbeen> text=new ArrayList<>();
                  text=(ArrayList<textbeen>) request.getAttribute("list");
                 // System.out.println(text.get(0));
                %>
                    <table class="insert-tab" width="100%">
                        <tbody>
                           <tr> 
                                <td colspan="4" style="text-align: center;"><h1>河北省重大技术需求征集表</h1></td>
                           </tr>
                            
                            <tr>
                                <th><i class="require-red">*</i>机构全称</th>
                                <td >
                                    <input class="common-text required" id="jg_name" name="jg_name" size="50" value="<%=text.get(0).getName() %>" disabled="disabled" type="text" required="required">
                                </td>
                                <th>归口管理部门</th>
                                <td > 
                                    <input  class="common-text required" type="text" value="<%=text.get(0).getGk() %>" name="gk" disabled="disabled"/>   &nbsp;&nbsp;&nbsp;&nbsp;
            
                                 </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>通讯地址</th>
                                <td>
                                    <input  class="common-text required" id="phone_address" name="phone_address" size="50" value="<%=text.get(0).getPhone_address() %>" type="text" disabled="disabled">
                                </td>
                                  <th><i class="require-red">*</i>所在地域</th>
                                <td>
                                    <input  class="common-text required" type="text" value="<%=text.get(0).getSz_address() %>" disabled="disabled"/>   &nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr> 
                            <tr>
                                <th>网址</th>
                                <td>
                                    <input class="common-text required" id="net" name="net" size="50" value="<%=text.get(0).getNet() %>" type="text" disabled="disabled">
                                </td>
                               <th><i class="require-red">*</i>电子信箱</th>
                                <td>
                                    <input class="common-text required"  id="email" name="email" size="50" value="<%=text.get(0).getEmail() %>" type="text" disabled="disabled">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>法人代表</th>
                                <td>
                                    <input class="common-text required" required="required" id="legal" name="legal" size="50" value="<%=text.get(0).getLegal()%>" type="text" disabled="disabled">
                                </td>
                                
                               <th>邮政编码</th>
                                <td>
                                    <input class="common-text required" id="posts" name="posts" size="50" value="<%=text.get(0).getPost()%>" type="text" disabled="disabled">
                                </td>
                            </tr>
                            
                            <tr>
                                <th ><i class="require-red">*</i>联系人</th>
                                <td>
                                    <input class="common-text required" required="required" id="lname" name="lname" size="50" value="<%=text.get(0).getLname() %>" type="text" disabled="disabled">
                                </td>
            
                               <th>固定电话</th>
                               <td><input class="common-text required"  id=phone_gd name="phone_gd" size="20" value="<%=text.get(0).getPhone_gd() %>" type="text" disabled="disabled">
                                   
                                </td>
                                
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>手机</th>
                                <td><input class="common-text required" id=mobile name="mobile" size="20" value="<%=text.get(0).getMobile() %>" type="text" disabled="disabled"></td>
                                <th>传真</th>
                                <td>
                                    <input class="common-text required" id="fax" name="fax" size="50" value="<%=text.get(0).getFax() %>" type="text" disabled="disabled">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>机构属性</th>
                                <td colspan="3">
                                     <input type="text" value="企业" name="institution" value="<%=text.get(0).getInstitution() %>" disabled="disabled"/>
	                    
                                </td>
                            </tr>
                                                       
                             <tr>
                                <th><i class="require-red">*</i>机构简介</th>
                                <td colspan="3">
                                     <textarea rows="5" cols="100" maxlength="200" name="introduction_text" disabled="disabled" >
                                            <%=text.get(0).getIntroduction() %>
                                     </textarea>
                                                              （单位基本情况，研究基础等，限200字）
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>技术需求名称</th>
                                <td colspan="1">
                                    <input class="common-text required" id="technology" name="technology" size="50" value="<%=text.get(0).getTechnology()%>" type="text" disabled="disabled">
                                </td>
                                <th><i class="require-red">*</i>需求时限</th>
                                <td colspan="1">
                                    <input class="common-text required" id="time_begin" name="time_begin" size="20" value="<%=text.get(0).getTime_begin() %>" type="text" disabled="disabled">年---
                                    <input class="common-text required" id="time_end" name="time_end" size="20" value="<%=text.get(0).getTime_end() %>" type="text" disabled="disabled">年
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>重大科技需求概述</th>
                                <td colspan="3">
                                1.主要问题（需要解决的重大技术问题，限500字以内）<br/>
                                     <textarea rows="5" cols="100" maxlength="500" name="t_needtext_1" disabled="disabled" style="text-align: left">
                                           <%=text.get(0).getT_needtext_1() %>
                                     </textarea><br/>
                                2、技术关键（所需的关键技术、主要指标，限500字以内）<br/>
                                      <textarea rows="5" cols="100" maxlength="500" name="t_needtext_2" disabled="disabled" style="text-align: left">
                                              <%=text.get(0).getT_needtext_2() %>
                                     </textarea><br/>
                                3、预期目标（技术创新性、经济社会效益，限500字以内）<br/>
                                      <textarea rows="5" cols="100" maxlength="500" name="t_needtext_3" disabled="disabled" style="text-align: left">
                                                 <%=text.get(0).getT_needtext_3() %>
                                     </textarea>   <br/>                
                                                               关键字：<input disabled="disabled"  type="text"  class="common-text required" name="keyword1" id="keyword1"  value="<%=text.get(0).getKeyword()%>"> 
                           
                                </td>
                            </tr>
                            <tr>
                                 <th><i class="require-red">*</i>拟投入资金总额</th>
                                <td colspan="3">
                                     <input disabled="disabled" class="common-text required" id="plan_invest"  name="plan_invest" size="50" value="<%=text.get(0).getPlan_invest() %>" type="text">万元
                                </td>
                            </tr>
                            
                            <tr>
                                <th rowspan="2"><i class="require-red" >*</i>技术需求<br>解决方式</th>
                                <td colspan="3">
                                     <input type="text" class="common-text required" value="<%=text.get(0).getMode() %>" name="mode" disabled="disabled"/>
	                                
                                </td>
               
                            </tr>
                            <tr>
                                 <th colspan="1">合作意向单位</th>
                                <td colspan="2">
                                     <input type="text" class="common-text required" value="<%=text.get(0).getHzyxdw() %>" name="hzyxdw" disabled="disabled"/>
                                </td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>科技活动类型</th>
                                <td colspan="3">
                                     <input type="text" class="common-text required" value="<%=text.get(0).getType() %>" id="type" name="type" disabled="disabled"/>
	                
                                </td>
                            </tr>
                        
                            <tr >
                                <th><i class="require-red">*</i>学科分类</th>
                                <td colspan="3">
                                     <input type="text" size="50" class="common-text required" value="<%=text.get(0).getClassification() %>" id="" name="" disabled="disabled"/>
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>需求技术所属领域<br>（非基础研究填写）</th>
                                <td colspan="3">
                                   <input type="text" size="50" class="common-text required" value="<%=text.get(0).getField()%>" id="" name="" disabled="disabled"/> 
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>需求技术应用行业</th>
                                <td colspan="3">
                                     <input type="text" size="50" class="common-text required" value="<%=text.get(0).getNeed_industry() %>" id="" name="" disabled="disabled"/>
                                </td>
                            </tr>
                            <tr>
                                  <td colspan="4"> <hr></td>
                           </tr>
                          <form action="xs_check?id=<%=text.get(0).getId() %>" method="post" id="myform" name="myform">
                            <tr>
                             <th colspan="1">提交的管理处室:</th>
                                 <td colspan="3">
                                  <select id="bm" name="bm">
                                    <option value="001">办公室</option>
                                    <option value="002">人事处</option>
                                    <option value="003">机关党委</option>
                                    <option value="004">政策法规处</option>
                                     <option value="005">计划财务处</option>
                                    <option value="006">平台与基础处</option>
                                    <option value="007">国际合作处</option>
                                    <option value="008">高新技术处</option>
                                     <option value="009">农村科技处</option>
                                    <option value="010">社会发展处</option>
                                    <option value="011">成果与市场处</option>
                                    <option value="012">监察室</option>
                                    <option value="013">离退休干部处</option>
                                     <option value="014">知识产权局</option>
                                    <option value="015">半干旱中心</option>
                                    <option value="016">山办</option>
                                    <option value="017">机关服务中心</option>
                                    <option value="020">科技研发中心</option>
                                    <option value="021">科技情报研究院</option>
                                    <option value="022">器材公司</option>
                                    <option value="023">基金办</option>
                                    <option value="024">档案馆</option>
                                    <option value="025">科技管理信息中心</option>
                                    <option value="026">科技投资中心</option>
                                    <option value="027">成果转换中心</option>
                                    <option value="028">中小企业创新资金管理中心</option>
                                    <option value="029">对外交流中心</option>
                                  </select>
                                 </td>   
                             </tr>
                             <tr>
                             <th colspan="1">形式审核意见:</th>
                                 <td colspan="3">
                                   <input type="text" class="common-text required" size="100px" id="xsyj" name="xsyj" required="required" >
                                   <input type="text" id="result" name="result" hidden="hidden">
                                 </td>   
                             </tr>
                         
                            <tr>
                                <td colspan="2" style="text-align: center;">
                                
                                     <input class="btn btn-primary btn2" onclick="return yes()" value="通过" type="submit">
                                </td>
                 
                                <td colspan="2" style="text-align: center;">
                                     <input class="btn btn6" onclick="return no()" value="不通过" type="submit" >
                                </td>
                            </tr>
  <script type="text/javascript">
      function yes(){
    	 // alert("yes");
    	  document.getElementById("result").value="1+";
    	  
    	  return true;
      }
      function no(){
    	  document.getElementById("result").value="1-";
    	  alert("no");
    	  return true;
      }
  
  </script>
                          </form >
                        </tbody></table>
                
         
            </div>
        </div>

  </div>
  
</body>
</html>
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
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.jsp?name=<%=request.getParameter("name") %>">首页</a><span class="crumb-step">&gt;</span><span>修改密码</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="update_password?name=<%=request.getParameter("name") %>" method="post" id="myform" name="myform">
                    <table class="insert-tab" width="100%">
                        <tbody>
                           <tr> 
                                <td colspan="2" style="text-align: center;"><h1>修改密码</h1></td>
                           </tr>
                            
                            <tr>
                                <th><i class="require-red">*</i>请输入原密码：</th>
                                <td >
                                    <input class="common-text required" id="old_password" name="old_password" size="50" value="" type="password">
                                </td>
                            </tr>
                            
                            <tr>
                                <th><i class="require-red">*</i>请输入新密码：</th>
                                <td >
                                    <input class="common-text required" id="new_password1" name="new_password1" size="50" value="" type="password">
                                </td>
                            </tr>
                            
                             <tr>
                                <th><i class="require-red">*</i>确认新密码：</th>
                                <td >
                                    <input class="common-text required" id="new_password2" name="new_password2" size="50" value="" type="password">
                                </td>
                            </tr>
                            <tr>
                                
                                <td style="text-align: right;">
                                    <input class="btn btn-primary btn6 mr10" onclick="return check()" value="提交" type="submit">
                                </td>
                                <td style="text-align: left;">
                                     <input class="btn btn6" onClick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
                            <tr><td colspan="2" style="text-align: center">忘记原密码<a href="chongzhi_password?name=<%=request.getParameter("name") %>" onclick="return chongzhi();">点击重置密码</a></td></tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
<script>
function check(){
	//alert("aaaa");
	var password1=document.getElementById("new_password1").value;
	var password2=document.getElementById("new_password2").value;
	//alert(password1);
	if(password1!=password2){
		alert("两次密码输入不同");
		return false;
	}else{
		return true;
	}
}
function chongzhi(){
	   var r = confirm("确认重置密码？");
	 if (r == true) {
		// window.location="";
	     return true;
	 } else {
	     return false;
	 }
}    
   function back(){
	   alert("返回");
	   window.location="index.jsp?name=<%=request.getParameter("name") %>";
   }
  
   }
</script>
</html>
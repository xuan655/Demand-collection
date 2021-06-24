<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/common.css" />
<link rel="stylesheet" type="text/css" href="../css/main.css" />
</head>
<body>
  <div class="result-wrap">
            <div class="result-content">
                <form action="../bm_update_password?name=<%=request.getParameter("name") %>" method="post" id="myform" name="myform">
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
                                     <input class="btn btn6" onclick="back()" value="返回" type="button">
                                </td>
                            </tr>
                            <tr><td colspan="2" style="text-align: center">忘记原密码<a href="../all_chongzhi_password?name=<%=request.getParameter("name") %>" onclick="return chongzhi();">点击重置密码</a></td></tr>
                        </tbody></table>
                </form>
            </div>
        </div>
</body>
</html>
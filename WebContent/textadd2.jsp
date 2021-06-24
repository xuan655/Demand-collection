<%@page import="com.zwx.been.enter"%>
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
<link href="layui/css/layui.css" rel="stylesheet" />
<script src="layui/layui.js" type="text/javascript"></script>
<script src="js/jquery.min.js" type="text/javascript"></script>
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
		<div class="crumb-list">
			<i class="icon-font"></i><a
				href="index.jsp?name=<%=request.getParameter("name")%>">首页</a><span
				class="crumb-step">&gt;</span><a class="crumb-name"
				href="select?name=<%=request.getParameter("name")%>">问卷调查管理</a><span
				class="crumb-step">&gt;</span><span>新增报表</span>
		</div>
	</div>
	<div class="result-wrap">
		<div class="result-content">
			<form action="textadd_do?name=<%=request.getParameter("name")%>"
				method="post" id="myform" name="myform">
				<%
					ArrayList<enter> user = new ArrayList<>();
					user = (ArrayList<enter>) request.getAttribute("user");
					System.out.println(user.get(0).getUnit());
				%>
				<table class="insert-tab" width="100%">
					<tbody>
						<tr>
							<td colspan="4" style="text-align: center;"><h1>河北省重大技术需求征集表</h1></td>
						</tr>

						<tr>
							<th><i class="require-red">*</i>机构全称</th>
							<td><input class="common-text required" id="jg_name"
								name="jg_name" size="50" value="<%=user.get(0).getUnit()%>"
								placeholder="请输入单位全称" type="text" required="required"></td>
							<th>归口管理部门</th>
							<td><input type="radio" value="  " name="gk" />
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="测试1"
								name="gk" />测试1 &nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>通讯地址</th>
							<td><input required="required" class="common-text required"
								id="phone_address" name="phone_address" size="50" value=""
								type="text"></td>
							<th><i class="require-red">*</i>所在地域</th>
							<td><select id="sz_adress" name="sz_address">
									<option value="---">---请选择所在地域---</option>
									<option value="130100">130100 石家庄市</option>
									<option value="130200">130200 唐山市</option>
									<option value="130300">130300 秦皇岛市</option>
									<option value="130400">130400 邯郸市 </option>
									<option value="130500">130500 邢台市</option>
									<option value="130600">130600 保定市</option>
									<option value="130700">130700 张家口市</option>
									<option value="130800">130800 承德市</option>
									<option value="130900">130900 沧州市</option>
									<option value="131000">131000 廊坊市</option>
									<option value="131100">131100 衡水市</option>
									<option value="130682">130682 定州市</option>
									<option value="130181">130181 辛集市</option>
									<option value="120000">12000 其他（河北工大）</option>
							</select></td>
						</tr>
						<tr>
							<th>网址</th>
							<td><input class="common-text required" id="net" name="net"
								size="50" value="" type="text"></td>
							<th><i class="require-red">*</i>电子信箱</th>
							<td><input class="common-text required" required="required"
								id="email" name="email" size="50" value="" type="text"
								required="required"></td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>法人代表</th>
							<td><input class="common-text required" required="required"
								id="legal" name="legal" size="50" value="" type="text">
							</td>

							<th>邮政编码</th>
							<td><input class="common-text required" id="posts"
								name="posts" size="50" value="<%=user.get(0).getCode()%>"
								type="text"></td>
						</tr>

						<tr>
							<th><i class="require-red">*</i>联系人</th>
							<td><input class="common-text required" required="required"
								id="lname" name="lname" size="50" value="" type="text">
							</td>

							<th>固定电话</th>
							<td><input class="common-text required" id=phone_gd
								name="phone_gd" size="20" value="" type="text"></td>

						</tr>
						<tr>
							<th><i class="require-red">*</i>手机</th>
							<td><input class="common-text required" id=mobile
								name="mobile" size="20" value="" type="text" required="required"></td>
							<th>传真</th>
							<td><input class="common-text required" id="fax" name="fax"
								size="50" value="" type="text"></td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>机构属性</th>
							<td colspan="3"><input type="radio" value="企业"
								name="institution" />企业 &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="radio" value="高等院校" name="institution" />高等院校&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" value="研究机构" name="institution" />研究机构&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" value="其他" name="institution" />其他&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>

						<tr>
							<th><i class="require-red">*</i>机构简介</th>
							<td colspan="3"><textarea rows="5" cols="100"
									maxlength="200" name="introduction_text" required="required">
                                     </textarea> （单位基本情况，研究基础等，限200字）</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>技术需求名称</th>
							<td colspan="1"><input class="common-text required"
								id="technology" name="technology" size="50" value="" type="text"
								required="required"></td>
							<th><i class="require-red">*</i>需求时限</th>
							<td colspan="1"><input class="common-text required"
								id="time_begin" name="time_begin" size="20" value="" type="text">年---
								<input class="common-text required" id="time_end"
								name="time_end" size="20" value="" type="text">年</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>重大科技需求概述</th>
							<td colspan="3">1.主要问题（需要解决的重大技术问题，限500字以内）<br /> <textarea
									rows="5" cols="100" maxlength="500" name="t_needtext_1">
                                     </textarea><br />
								2、技术关键（所需的关键技术、主要指标，限500字以内）<br /> <textarea rows="5"
									cols="100" maxlength="500" name="t_needtext_2">
                                     </textarea><br />
								3、预期目标（技术创新性、经济社会效益，限500字以内）<br /> <textarea rows="5"
									cols="100" maxlength="500" name="t_needtext_3">
                                     </textarea> <br /> 关键字：<input type="text"
								class="common-text required" name="keyword1" id="keyword1"
								onfocus="" onblur="addtext1()"> <input type="text"
								class="common-text required" name="keyword2" id="keyword2"
								hidden="hidden" onblur="addtext2()"> <input type="text"
								class="common-text required" name="keyword3" id="keyword3"
								hidden="hidden" onblur="addtext3()"> <input type="text"
								class="common-text required" name="keyword4" id="keyword4"
								hidden="hidden" onblur="addtext4()"> <input type="text"
								class="common-text required" name="keyword5" id="keyword5"
								hidden="hidden"> <input type="text"
								class="common-text required" id="keyword" name="keyword"
								value="" hidden="hidden">
							</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>拟投入资金总额</th>
							<td colspan="3"><input class="common-text required"
								id="plan_invest" name="plan_invest" size="50" value=""
								type="text">万元</td>
						</tr>

						<tr>
							<th rowspan="2"><i class="require-red">*</i>技术需求<br>解决方式</th>
							<td colspan="3"><input type="radio" value="独立开发" name="mode" />独立开发
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="技术转让"
								name="mode" />技术转让&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
								value="技术入股" name="mode" />技术入股 &nbsp;&nbsp;&nbsp;&nbsp;<br />
								<input type="radio" value="研究发展与成果应用" name="mode" />研究发展与成果应用&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" value="其他" name="mode" />其他</td>

						</tr>
						<tr>
							<th colspan="1">合作意向单位</th>
							<td colspan="2"><input type="text" value="" name="hzyxdw" />
							</td>
						</tr>
						<tr>
							<th><i class="require-red">*</i>科技活动类型</th>
							<td colspan="3"><input type="radio" value="基础研究" id="type"
								name="type" onclick="refurbish(this)" />基础研究
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" value="应用研究"
								id="type" name="type" onclick="refurbish(this)" />应用研究&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" value="实验发展" id="type" name="type"
								onclick="refurbish(this)" />实验发展&nbsp;&nbsp;&nbsp;&nbsp;<br />
								<input type="radio" value="研究与试验发展成果应用" id="type" name="type"
								onclick="refurbish(this)" />研究与试验发展成果应用&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" value="技术推广与科技服务" id="type" name="type"
								onclick="refurbish(this)" />技术推广与科技服务 &nbsp;&nbsp;&nbsp;&nbsp;</td>
						</tr>

						<tr id="one" hidden="hidden">
							<th><i class="require-red">*</i>学科分类</th>
							<td colspan="3">
								<div class="zTreeDemoBackground left" style="height: auto">
									<ul id="classification" name="classification" class="ztree"></ul>
								</div> （参加学科分类,限基础研究填写）
							</td>
						</tr>
						<tr id="two" hidden="hidden">
							<th><i class="require-red">*</i>需求技术所属领域<br>（非基础研究填写）</th>
							<td colspan="3"><input type="checkbox" value="电子信息技术"
								name="field" />电子信息技术 &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox" value="光机电一体化" name="field" />光机电一体化&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" value="软件" name="field" />软件&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" value="生物制药技术" name="field" />生物制药技术&nbsp;&nbsp;&nbsp;&nbsp;<br>
								<input type="checkbox" value="新材料及应用技术 " name="field" />新材料及应用技术
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" value="先进制造技术 "
								name="field" />先进制造技术 &nbsp;&nbsp;&nbsp;&nbsp; <input
								type="checkbox" value="现代农业技术" name="field" />现代农业技术&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" value="新能源与高效节能技术" name="field" />新能源与高效节能技术&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="checkbox" value="资源与环境保护新技术 " name="field" />资源与环境保护新技术
								&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" value="其他"
								name="field" onclick="addelse(this)" />其他技术（注明） &nbsp;&nbsp;<input
								type="text" name="fieldadd" id="fieldadd" hidden="hidden" /></td>
						</tr>
						<tr id="three" hidden="hidden">
							<th><i class="require-red">*</i>需求技术应用行业</th>
							<td colspan="3"></td>
						</tr>
						<tr>
							<th>请选择国民经济分类</th>
							<td>
								<div class="layui-form-item">
									<div class="layui-inline">
										<select name="province" id="province" lay-verify="required"
											lay-search lay-filter="province">
											<option value="">门类</option>
										</select>
									</div>
									<div class="layui-inline">
										<select name="city" id="city" lay-verify="required" lay-search
											lay-filter="city">
											<option value="">大类市</option>
										</select>
									</div>
									<div class="layui-inline">
										<select name="district" id="district" lay-verify="required"
											lay-filter="district" lay-search>
											<option value="">中类</option>
										</select>
									</div>
									<div class="layui-inline">
										<select name="small" id="small" lay-verify="required"
											lay-search>
											<option value="">小类</option>
										</select>
									</div>
								</div>
							</td>
							<script src="js/area.js" type="text/javascript"></script>
							<script src="js/select.js" type="text/javascript"></script>
						</tr>
						<tr>

							<td colspan="2" style="text-align: right;"><input
								class="btn btn-primary btn6 mr10" value="保存并提交" type="submit"
								onclick="return pd()"></td>
							<td colspan="2" style="text-align: left;"><input
								class="btn btn6" onClick="history.go(-1)" value="返回"
								type="button"></td>
						</tr>

					</tbody>
				</table>
				<input type="hidden" id="gc" name="gc"> <input type="hidden"
					id="xkfl" name="xkfl"> <input type="hidden" id="sum"
					name="sum">
			</form>
		</div>
	</div>

</div>
<!--/main-->
</div>
</body>
<script type="text/javascript">
	function addtext1() {
		var t1 = document.getElementById("keyword1").value;
		//alert(t1);
		var keyword = document.getElementById("keyword").value;
		//alert(keyword);
		if (t1 != "") {
			//alert(t1);
			document.getElementById("keyword2").hidden = "";
			keyword = keyword + t1;
			//alert(keyword);
			document.getElementById("keyword").value = keyword;
			//alert(keyword);

		}

	}
	function addtext2() {
		var t2 = document.getElementById("keyword2").value;
		//alert(t1);
		var keyword = document.getElementById("keyword").value;
		//alert(keyword);
		if (t2 != "") {
			//alert(t1);
			document.getElementById("keyword3").hidden = "";
			keyword = keyword + "," + t2;
			//alert(keyword);
			document.getElementById("keyword").value = keyword;
			//alert(keyword);

		}

	}
	function addtext3() {
		var t3 = document.getElementById("keyword3").value;
		//alert(t1);
		var keyword = document.getElementById("keyword").value;
		//alert(keyword);
		if (t3 != "") {
			//alert(t1);
			document.getElementById("keyword4").hidden = "";
			keyword = keyword + "," + t3;
			//alert(keyword);
			document.getElementById("keyword").value = keyword;
			//alert(keyword);

		}
	}
	function addtext4() {
		var t4 = document.getElementById("keyword4").value;
		//alert(t1);
		var keyword = document.getElementById("keyword").value;
		//alert(keyword);
		if (t4 != "") {
			//alert(t1);
			document.getElementById("keyword5").hidden = "";
			keyword = keyword + "," + t4;
			//alert(keyword);
			document.getElementById("keyword").value = keyword;
			//alert(keyword);

		}

	}

	function refurbish(str) {

		//alert(str.value);
		var str1 = str.value;
		var a = document.getElementById("one");
		var b = document.getElementById("two");
		var c = document.getElementById("three");
		if (str1 == "基础研究") {
			a.hidden = "";
			b.hidden = "hidden";
			c.hidden = "hidden";
		} else {
			a.hidden = "hidden";
			b.hidden = "";
			c.hidden = "";
		}
	}
	function addelse(str) {
		//alert(str.value);
		var str1 = str.value;
		var a = document.getElementById("fieldadd");
		if (str1 == "其他") {
			a.hidden = "";
			//alert("aaa")
		}
	}
	function pd() {

		var xkfl = [];
		var gc = [];
		$('.curSelectedNode').each(function(i) {
			if ($(this).parents('#classification').length > 0) {
				//是aa类下的子节点
				xkfl.push($(this).text());
			} else {
				gc.push($(this).text());
			}

		});
		var str1 = "";
		var str2 = "";
		for (var i = 0; i < xkfl.length; i++) {
			str1 = str1 + xkfl[i];
		}
		for (var i = 0; i < gc.length; i++) {
			str2 = str2 + gc[i];
		}
		document.getElementById("xkfl").value = str1;
		document.getElementById("gc").value = str2;
		//alert(str1);
		//alert(str2);

		//邮政编码
		// var posts=document.getElementById("posts").value;
		//alert(posts);
		//if(posts.lengtn!=6) {
		//  alert("邮政编码输入格式不正确");
		// return false;
		//}

		//判断邮箱
		//  var email=document.getElementById("email").value;
		// alert(email);
		// var reg = /^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$/;
		//if(email != '')
		//{
		//if(reg.test(email))
		// {
		//    return true;
		//}
		//else
		//{
		//	alert("电子信箱格式输入不正确");
		//   return false;
		//}
		//} 

		//alert("加法");
		var a1 = document.getElementById("self_financed").value;
		var a2 = document.getElementById("loan").value;
		var a3 = document.getElementById("else_financed").value;
		//alert(a1);
		//alert(a2);
		//alert(a3);
		var sum = parseInt(a1) + parseInt(a2) + parseInt(a3);
		alert("计划总投资A：" + sum);
		document.getElementById("sum").value = sum;

		//判断时间
		var time_begin = document.getElementById("time_begin").value;
		var tiem_end = document.getElementById("time_end").value;
		//alert("时间");
		if (parseInt(time_begin) > parseInt(time_end)) {
			alert("请输入正确的时间格式范围");
			return false;
		}

		//判断手机号
		//var phone=document.getElementById("mobile").value;
		// var result1=phone.match(/\d{3}-\d{8}|\d{4}-\d{7}/);
		// if(result1==null){ 
		//	alert("手机格式输入不正确")
		//	return false;
		//}
	}
</script>
</html>
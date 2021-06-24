<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册界面</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link href="iconfont/style.css" type="text/css" rel="stylesheet">
<style>
	body{color:#fff; font-family:"微软雅黑"; font-size:14px;}
	.wrap1{position:absolute; top:0; right:0; bottom:0; left:0;  }/*把整个屏幕真正撑开--而且能自己实现居中*/
	.main_content{background:url(images/main_bg.png) repeat; margin-left:auto; margin-right:auto; text-align:left; float:none; border-radius:8px;}
	.form-group{position:relative;}
	.login_btn{display:block; background:#3872f6; color:#fff; font-size:15px; width:100%; line-height:50px; border-radius:3px; border:none; }
	.login_input{width:100%; border:1px solid #3872f6; border-radius:3px; line-height:40px; padding:2px 5px 2px 30px; background:none;}
	.icon_font{position:absolute; bottom:15px; left:10px; font-size:18px; color:#3872f6;}
	.font16{font-size:16px;}
	.mg-t20{margin-top:20px;}
	@media (min-width:200px){.pd-xs-20{padding:20px;}}
	@media (min-width:768px){.pd-sm-50{padding:50px;}}
	#grad {
	  background: -webkit-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Safari 5.1 - 6.0 */
	  background: -o-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Opera 11.1 - 12.0 */
	  background: -moz-linear-gradient(#4990c1, #52a3d2, #6186a3); /* Firefox 3.6 - 15 */
	  background: linear-gradient(#4990c1, #52a3d2, #6186a3); /* 标准的语法 */
	}
	 select{
    		color: black
    	}
    i{
    color:red
    	}
    input{
    color:black;
    }
</style>
<script  type="text/javaScript">

        //创建数组
        var  addrs=new Array(37);

        //数组包含了全部，
        addrs[0]=new Array("江苏省","南京","常熟","常州","海门","淮安","江都","江阴","昆山","连云港","南通","启东","沭阳","宿迁","苏州","太仓","泰州","同里","无锡","徐州","盐城","宜兴","仪征","张家港","镇江","周庄");
        addrs[1]=new Array("安徽省","合肥","安庆","蚌埠","亳州","巢湖","滁州","阜阳","贵池","淮北","淮南","黄山","九华山","六安","马鞍山","宿州","铜陵","屯溪","芜湖","宣城");
        addrs[2]=new  Array("山东省","青岛","济南","日照");
        addrs[3]=new  Array("北京市",'东城区','西城区','崇文区','宣武区','朝阳区','丰台区','石景山区','海淀区','门头沟区','房山区','通州区','顺义区','昌平区','大兴区','怀柔区','平谷区');
        addrs[4]=new Array('上海','黄浦区','卢湾区','徐汇区','长宁区','静安区','普陀区','闸北区','虹口区','杨浦区','闵行区','宝山区','嘉定区','浦东新区','金山区','松江区','青浦区','南汇区','奉贤区');
        addrs[5]=new Array('天津','和平区','河东区','河西区','南开区','河北区','红桥区','塘沽区','汉沽区','大港区','东丽区','西青区','津南区','北辰区','武清区','宝坻区');
        addrs[6]=new Array('重庆','万州区','涪陵区','渝中区','大渡口区','江北区','沙坪坝区','九龙坡区','南岸区','北碚区','万盛区','双桥区','渝北区','巴南区','黔江区','长寿区','江津市','合川市','永川市','南川市');
        addrs[7]=new Array('四川','成都市','自贡市','攀枝花市','泸州市','德阳市','绵阳市','广元市','遂宁市','内江市','乐山市','南充市','宜宾市','广安市','达州市','眉山市','雅安市','巴中市','资阳市');
        addrs[8]=new Array("广东","广州","深圳","珠海","东莞","中山","佛山","惠州","河源","潮州","江门","揭阳","茂名","梅州","清远","汕头","汕尾","韶关","顺德","阳江","云浮","湛江","肇庆");
        addrs[9]=new Array("浙江","杭州","安吉","慈溪","定海","奉化","海盐","黄岩","湖州","嘉兴","金华","临安","临海","丽水","宁波","瓯海","平湖","千岛湖","衢州","江山","瑞安","绍兴","嵊州","台州","温岭","温州","余姚","舟山");
        addrs[10]=new Array("福建","福州","厦门","泉州","漳州","龙岩","南平","宁德","莆田","三明");
        addrs[11]=new Array("甘肃","兰州","白银","定西","敦煌","甘南","金昌","酒泉","临夏","平凉","天水","武都","武威","西峰","张掖");
        addrs[12]=new Array("广西","南宁","百色","北海","桂林","防城港","贵港","河池","贺州","柳州","钦州","梧州","玉林");
        addrs[13]=new Array("贵州","贵阳","安顺","毕节","都匀","凯里","六盘水","铜仁","兴义","玉屏","遵义");
        addrs[14]=new Array("海南","海口","儋县","陵水","琼海","三亚","通什","万宁");
        addrs[15]=new Array("河北","石家庄","保定","北戴河","沧州","承德","丰润","邯郸","衡水","廊坊","南戴河","秦皇岛","唐山","新城","邢台","张家口");
        addrs[16]=new Array("黑龙江","哈尔滨","北安","大庆","大兴安岭","鹤岗","黑河","佳木斯","鸡西","牡丹江","齐齐哈尔","七台河","双鸭山","绥化","伊春");
        addrs[17]=new Array("河南","郑州","安阳","鹤壁","潢川","焦作","济源","开封","漯河","洛阳","南阳","平顶山","濮阳","三门峡","商丘","新乡","信阳","许昌","周口","驻马店");
        addrs[18]=new Array("湖北","武汉","恩施","鄂州","黄冈","黄石","荆门","荆州","潜江","十堰","随州","武穴","仙桃","咸宁","襄阳","襄樊","孝感","宜昌");
        addrs[19]=new Array("湖南","长沙","常德","郴州","衡阳","怀化","吉首","娄底","邵阳","湘潭","益阳","岳阳","永州","张家界","株洲");
        addrs[20]=new Array("江西","南昌","抚州","赣州","吉安","景德镇","井冈山","九江","庐山","萍乡","上饶","新余","宜春","鹰潭");
        addrs[21]=new Array("吉林","长春","吉林","白城","白山","珲春","辽源","梅河","四平","松原","通化","延吉");
        addrs[22]=new Array("辽宁","沈阳","鞍山","本溪","朝阳","大连","丹东","抚顺","阜新","葫芦岛","锦州","辽阳","盘锦","铁岭","营口");
        addrs[23]=new Array("内蒙古","呼和浩特","阿拉善盟","包头","赤峰","东胜","海拉尔","集宁","临河","通辽","乌海","乌兰浩特","锡林浩特");
        addrs[24]=new Array("宁夏","银川","固源","石嘴山","吴忠");
        addrs[25]=new Array("青海","西宁","德令哈","格尔木","共和","海东","海晏","玛沁","同仁","玉树");
        addrs[26]=new Array("山东","济南","滨州","兖州","德州","东营","菏泽","济宁","莱芜","聊城","临沂","蓬莱","青岛","曲阜","日照","泰安","潍坊","威海","烟台","枣庄","淄博");
        addrs[27]=new Array("山西","太原","长治","大同","侯马","晋城","离石","临汾","宁武","朔州","沂州","阳泉","榆次","运城");
        addrs[28]=new Array("陕西","西安","安康","宝鸡","汉中","渭南","商州","绥德","铜川","咸阳","延安","榆林");
        addrs[29]=new Array("四川","成都","巴中","达川","德阳","都江堰","峨眉山","涪陵","广安","广元","九寨沟","康定","乐山","泸州","马尔康","绵阳","眉山","南充","内江","攀枝花","遂宁","汶川","西昌","雅安","宜宾","自贡","资阳");
        addrs[30]=new Array("天津","天津","和平","东丽","河东","西青","河西","津南","南开","北辰","河北","武清","红桥","塘沽","汉沽","大港","宁河","静海","宝坻","蓟县");
        addrs[31]=new Array("新疆","乌鲁木齐","阿克苏","阿勒泰","阿图什","博乐","昌吉","东山","哈密","和田","喀什","克拉玛依","库车","库尔勒","奎屯","石河子","塔城","吐鲁番","伊宁");
        addrs[32]=new Array("西藏","拉萨","阿里","昌都","林芝","那曲","日喀则","山南");
        addrs[33]=new Array("云南","昆明","大理","保山","楚雄","东川","个旧","景洪","开远","临沧","丽江","六库","潞西","曲靖","思茅","文山","西双版纳","玉溪","中甸","昭通");
        addrs[34]=new Array("中国香港","中国香港","九龙","新界");
        addrs[35]=new Array("中国澳门","中国澳门");
        addrs[36]=new Array("中国台湾","台北","基隆","台南","台中","高雄","屏东","南投","云林","新竹","彰化","苗栗","嘉义","花莲","桃园","宜兰","台东","金门","马祖","澎湖");


        //页面加载时调用
        function  init(){
            //循环添加省的信息
            for (var i=0;i<addrs.length;i++){
                var  text=document.createTextNode(addrs[i][0]);
                var opt=document.createElement("option");
                opt.appendChild(text);
                document.getElementById("pro").appendChild(opt);
            }

            //获取省的下拉框
            var select = document.getElementById("pro");
            //循环查询"江苏省"，并选中
            for(var i=0; i<select.options.length; i++){
                if(select.options[i].innerHTML == "江苏省"){
                    select.options[i].selected = true;
                    break;
                }
            }

            //获取省的下拉框值
            var  pro=document.getElementById("pro").value;
            //创建市的下拉框
            document.getElementById("city").innerHTML="";
            //循环创建省为选中的省所包含的市的下拉框
            for (var i=0;i<addrs.length;i++){
                //如果省为选中的值，则循环创建市的option
                if(addrs[i][0]==pro){
                    for(var  j=1;j<addrs[i].length;j++){
                        var  text=document.createTextNode(addrs[i][j]);
                        var opt=document.createElement("option");
                        opt.appendChild(text);
                        document.getElementById("city").appendChild(opt);
                    }
                }
            }
        }

        //获取城市
        function  getCities(){
            //获取省的值
            var  pro=document.getElementById("pro").value;
            //循环创建市的下拉框
            document.getElementById("city").innerHTML="";
            for (var i=0;i<addrs.length;i++){
                if(addrs[i][0]==pro){
                    for(var  j=1;j<addrs[i].length;j++){
                        var  text=document.createTextNode(addrs[i][j]);
                        var opt=document.createElement("option");
                        opt.appendChild(text);
                        document.getElementById("city").appendChild(opt);
                    }
                }
            }
        }
    </script>
</head>

<body style="background:url(images/bg.jpg) repeat;"  onload="init()">
    
    <div class="container wrap1" style="height:450px;">
            <h2 class="mg-b20 text-center">用户注册页面</h2>
            <div class="col-sm-8 col-md-5 center-auto pd-sm-50 pd-xs-20 main_content">
              
                <form action="zhuce_do" method="post">
                    <div class="form-group mg-t10">
                    <i>*</i>
                                       用户名：<input type="text" class="login_input1" id="username" name="username" placeholder="请输入用户名" required="required"/>
                    </div>
                    <div class="form-group mg-t10">
                    <i>*</i>
                                       密&nbsp;码：<input type="password" class="login_input1" id="password" name="password"  placeholder="密码长度大于或等于6位" required="required"  />
                    </div>
                     <div class="form-group mg-t10">
                     <i>*</i>
                                       确认密码：<input type="password" class="login_input1" id="password1" name="password1" placeholder="请重新输入密码" required="required"  />
                    </div>
                     <div class="form-group mg-t10">
                     <i>*</i>
                      &nbsp;姓名：<input type="text" class="login_input1" id="name" name="name" placeholder="请输入姓名" required="required"  />
                    </div>
                    <div class="form-group mg-t10">
                      &nbsp;&nbsp; 性别：<input type="radio" id="sex" name="sex" value="男" checked="checked"  />男
                            <input type="radio" id="sex" name="sex" valeu="女" >女
                    </div>
                    <div >
                    <i>*</i>
                                           国家/省市:
                                                     省：<select  id="pro" name="pro"  onchange="getCities()"><option>-请选择省-</option></select>
                                                    市：<select  id="city" name="city"></select>
                     </div>
                     
                     <div class="form-group mg-t10">
                     <i>*</i>
                                        机构全称：<input type="text" class="login_input1" name="unit" id="unit" placeholder="请输入机构名称" required="required">&nbsp;&nbsp;  
                    </div>     
                       
                    <div class="form-group mg-t10">
                    
                                          专业方向： <input type="text" class="login_input1" name="zyfx" id="zyfx" placeholder="请输入专业方向" >&nbsp;&nbsp;  
                    </div>
                    <div class="form-group mg-t10">
                    
                                           所在行业：<input type="text" class="login_input1" name="szhy" id="szhy" placeholder="请输入所在行业" >&nbsp;&nbsp;
                    </div>
                    <div class="form-group mg-t10">
                                           教育程度：<input type="text" class="login_input1" name="jycd" id="jycd" placeholder="请输入教育程度" >&nbsp;&nbsp;
                    </div>
                     <div class="form-group mg-t10">
                        &nbsp;&nbsp; 职称：<input type="text" class="login_input1" name="zc" id="zc" placeholder="请输入职称" >&nbsp;&nbsp;
                    </div>
                   
                    <div class="form-group mg-t10">
                                           通讯地址：<input type="text" class="login_input1" name="address" id="address" placeholder="请您填写详细，以便我们取得联系" >&nbsp;&nbsp;
                    </div>
                    <div class="form-group mg-t10">
                                           邮政编码：<input type="text" class="login_input1" name="code" id="code" placeholder="请输入邮政编码" maxlength="6">&nbsp;&nbsp;
                    </div>
                     <div class="form-group mg-t10">
                        &nbsp;&nbsp;手机：<input type="text" class="login_input1" name="phone" id="phone" placeholder="请输入手机" >&nbsp;&nbsp;
                    </div>
                     <div class="form-group mg-t10">
                                           固定电话：<input type="text" class="login_input1" name="phone_gd" id="phone_gd" placeholder="请输入固定电话" >&nbsp;&nbsp;
                    </div>
                     <div class="form-group mg-t10">
                      &nbsp;&nbsp;邮箱：<input type="text" class="login_input1" name="email" id="email" placeholder="请输入邮箱" >&nbsp;&nbsp;
                    </div>
                    <div class="form-group mg-t10">
                        &nbsp;&nbsp; QQ：<input type="text" class="login_input1" name="qq" id="qq" placeholder="请输入QQ" >&nbsp;&nbsp;
                    </div>
                    <div class="form-group mg-t10">
                         &nbsp;&nbsp;MSN：<input type="text" class="login_input1" name="msn" id="msn" placeholder="请输入MSN" >&nbsp;&nbsp;
                    </div>
                  <!--  <div class="form-group mg-t10">
                                           验证码：<input type="text" class="login_input1" name="yzm" id="yzm" placeholder="请输入验证码" >&nbsp;&nbsp;
                    </div>
                  -->
                    <button style="submit" class="login_btn" onclick="return pd()">注册</button><br>
                     <input type="reset"  class="login_btn"/>
                    <p style="text-align: center;"> 已有有账号，点击<a href="login.jsp">登录</a></p>
                     
               </form>
        </div><!--row end-->
    </div><!--container end-->
<div style="text-align:center;">
</div>
<script type="text/javascript">
   function pd(){
	   var password=document.getElementById("password").value;
	   var password1=document.getElementById("password1").value;
	   if(password!=password1){
		   alert("两次密码输入不一致");
		   return false;
	   }
	   
   }

</script>      
</body>
</html>

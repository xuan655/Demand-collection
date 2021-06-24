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
   select{
   width:30%px;
   
   }
</style>
<body>
<div>
      <div id="tj">
        <select name="state" id="state">
             <option value="institution">机构属性</option>
             <option value="type">科技活动类型</option>
             <option value="mode">技术需求解决方式</option>
             <option value="gk">归口管理部门</option>
             <option value="sz_address">所在地域</option>
             <option value="classification">学科分类</option>
             <option value="need_industry">需求技术应用行业</option>
             <option value="bm_id">管理处室</option>
        </select>
        <br/>
        <input type="radio" id="pic1" name="pic" value="1" checked="checked">饼状图
        <input type="radio" id="pic2" name="pic" value="2">柱状图
        <input type="radio" id="pic3" name="pic" value="3">折线图
        <input type="text" value="0" id="id" name="id" hidden="hidden">
        <input type="submit" value="查询" class="btn btn-primary btn2" onclick="tijiao()"> 
       </div>
        <div class="result-tab" id="result-tab" style="width: 600px;height:400px; margin: auto;">
             
        </div>
         <div class="tab" id="tab" style="width: 1000px;height:outo; margin: auto;">
            <table class="result-tab" id="table" width="100%">
              <tbody id="tbody">
                 
              </tbody>
            </table>
        </div>
 </div>
 
 <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
 <script src="../js/jquery.z-pager.js" type="text/javascript" charset="utf-8"></script>
 <script src="../js/echarts.min.js"></script>
<script>
console.log(document.getElementById('result-tab'));
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('result-tab'));
// 指定图表的配置项和数据
myChart.showLoading();
function tijiao(){
	//$('#result-tab').empty();
	
	//alert("Aaaa");
	var state=$("#state").val();
	var pic =$('input:radio:checked').val();
	alert(pic);
	//alert(state);
	$.post(
			"../picture_do",
			{state:state},
			function(data){
				//$('.result-tab').empty();
			//	var json=JSON.parse(data);
				var json=data;
				console.log(json);
                var size=json.length;
                var names=[];
                var nums=[];
                var num2=[];
                var i=0;
                for(i=0;i<size;i++){
                    names.push(json[i].name);
                    nums.push({value:""+json[i].num+"",name:""+json[i].name+""});
                    num2.push(json[i].num);
                }
                console.log(names);
                console.log(nums);
                //alert(names);
                myChart.hideLoading();
                if(pic==1){
				 var  option = {
					    title: {
					        text: '统计',
					        left: 'center'
					    },
					    tooltip: {
					        trigger: 'item',
					        formatter: '{a} <br/>{b} : {c} ({d}%)'
					    },
					    legend: {
					        // orient: 'vertical',
					        // top: 'middle',
					        bottom: 10,
					        left: 'center',
					        data: names
					    },
					    series: [
					        {
					            type: 'pie',
					            radius: '65%',
					            center: ['50%', '50%'],
					            selectedMode: 'single',
					            data: nums,
					               
					            emphasis: {
					                itemStyle: {
					                    shadowBlur: 10,
					                    shadowOffsetX: 0,
					                    shadowColor: 'rgba(0, 0, 0, 0.5)'
					                }
					            }
					        }
					    ]
					};
                }
                else if(pic==2){
                	var option = {
            			    color: ['#3398DB'],
            			    tooltip: {
            			        trigger: 'axis',
            			        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
            			            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            			        }
            			    },
            			    grid: {
            			        left: '3%',
            			        right: '4%',
            			        bottom: '3%',
            			        containLabel: true
            			    },
            			    xAxis: [
            			        {
            			            type: 'category',
            			            data: names,
            			            axisTick: {
            			                alignWithLabel: true
            			            }
            			        }
            			    ],
            			    yAxis: [
            			        {
            			            type: 'value'
            			        }
            			    ],
            			    series: [
            			        {
            			            name: '直接访问',
            			            type: 'bar',
            			            barWidth: '60%',
            			            data: num2
            			        }
            			    ]
            			};

                }
                else if(pic==3){
                	var option = {
            			    xAxis: {
            			        type: 'category',
            			        data: names
            			    },
            			    yAxis: {
            			        type: 'value'
            			    },
            			    series: [{
            			        data: num2,
            			        type: 'line'
            			    }]
            			};

                }
				myChart.setOption(option);
				 $('#tbody').empty();
	           	 $('#tbody').append("<tr><td>字段</td><td>数量</td></tr>");
					for(var i=0;i<size;i++){
					 tr="<tr><td>"+json[i].name+"</td><td>"+json[i].num+"</td></tr>";
	                 $('#tbody').append(tr);
					}
				myChart.on('click',function (params) {
	                 // 获取table下所有的tr
	                 let trs = $("#table tbody tr");
	                 for (let i = 0;i<trs.length;i++){
	                     // 获取tr下所有的td
	                     let tds = trs.eq(i).find("td");
	                     // 先把之前的标记的success去掉
	                     $("#table tbody tr").eq(i).removeClass('success');
	                     // 如果点击图示的名字和table下的某一个行的第一个td的值一样
	                     if (params.name == tds.eq(0).text()){
	                         //设置success状态
	                         $("#table tbody tr").css("background","white");
	                         $("#table tbody tr").eq(i).addClass('success');
	                         $("#table tbody tr").eq(i).css("background","yellow");
	                         // 跳转到页面指定的id位置
	                         $("html,body").animate({scrollTop:$("#table tbody tr").eq(i).offset().top},1000);
	                         
	                     }
	                 }
	             });
	             // 当鼠标落在tr时，显示浮动
	             $("#table tbody").find("tr").on("mouseenter",function () {
	                 // 获得当前匹配元素的个数
	                 let row = $(this).prevAll().length;
	                 // 获得当前tr下td的名字
	                 let name = $("#table tbody").find("tr").eq(row).find("td").eq(0).text();
	                 // 设置浮动
	                 myChart.dispatchAction({ type: 'showTip',seriesIndex: 0, name:name});//选中高亮
	             });
	             // 当鼠标移开tr时候取消浮动
	             $("#table tbody").find("tr").on("mouseleave",function () {
	                 // 获得当前匹配元素的个数
	                 let row = $(this).prevAll().length;
	                 // 获得当前tr下td的名字
	                 let name = $("#table tbody").find("tr").eq(row).find("td").eq(0).text();
	                 // 设置浮动
	                 myChart.dispatchAction({ type: 'hideTip', name:name});//选中高亮
	         	}); 	
				},
			"json"
	)
	
}

</script>
</body>
</html>

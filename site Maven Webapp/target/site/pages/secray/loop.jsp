<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>漏洞分析</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/static/common.js" ></script>
	<script src="${pageContext.request.contextPath}/static/jquery-1.11.3.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/echarts.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home.js" ></script>
  </head>
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../commons/secraytop.jsp"></jsp:include>
 	<div class="panel panel-default" style="height: 800px;">
 		<div id="div1" style="width: 100%;height: 50%">
 		</div>
 		<div id="div2" style="width: 100%;height: 50%">
 			<div id="pieLoop" style="width: 50%;height: 100%;float: left;"></div>
 			<div id="barLoop" style="width: 50%;height: 100%;float: right;"></div>
 		</div>
 	</div>
 	<script type="text/javascript">
 	var div1chrats=echarts.init(document.getElementById("div1"));
 	var xAxisData = [];
 	var data1 = [];
 	var data2 = [];
 	var data3 = [];

 	for (var i = 0; i < 18; i++) {
 	    xAxisData.push('Class' + i);
 	    data1.push((Math.random() * 2).toFixed(2)*100);
 	    data2.push(-Math.random().toFixed(2)*100);
 	   data3.push((Math.random() * 2).toFixed(2)*100);
 	}

 	var itemStyle = {
 	    normal: {
 	    },
 	    emphasis: {
 	        barBorderWidth: 1,
 	        shadowBlur: 10,
 	        shadowOffsetX: 0,
 	        shadowOffsetY: 0,
 	        shadowColor: 'rgba(0,0,0,0.5)'
 	    }
 	};
 	var div1option={
 			title: {
	            text: '各区域当月漏洞对比',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
	        color: ['#276FD8', '#00BDEF', '#EEDB23', '#ED7C15', '#D61D18'],
 		    legend: {
 		        data: ['存在漏洞', '已修复漏洞','新增漏洞'],
 		        align: 'left',
 		       textStyle:{
		        	color:'#FFFFFF'
		        },
 		        left: 10
 		    },
 		   tooltip: {},
 		    xAxis: {
 		        data: ["郑州","商丘","开封","洛阳","南阳","三门峡","济源","安阳","驻马店","周口","信阳","鹤壁","漯河","新乡","许昌","濮阳","焦作","平顶山"],
 		        name: '区域',
 		        silent: false,
 		       	axisLabel:{color:'#FFFFFF'},
		    	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        splitLine: {show: false},
 		        splitArea: {show: false}
 		    },
 		    yAxis: {
 		    	name:'数量',
 		    	axisLabel:{color:'#FFFFFF'},
 		    	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        inverse: false,
 		        splitArea: {show: false}
 		    },
 		    grid: {
 		        left: 100
 		    },
 		    series: [
 		        {
 		            name: '存在漏洞',
 		            type: 'bar',
 		            stack: 'one',
 		            barMaxWidth:60,
 		            itemStyle: itemStyle,
 		            data: data1
 		        },
 		        {
 		            name: '已修复漏洞',
 		            type: 'bar',
 		            stack: 'one',
 		            itemStyle: itemStyle,
 		            data: data2
 		        },
 		        {
 		            name: '新增漏洞',
 		            type: 'bar',
 		            stack: 'one',
 		            itemStyle: itemStyle,
 		            data: data3
 		        }
 		    ]
 		};
 	div1chrats.setOption(div1option);
 	
 	
 	var pieLoopcharts=echarts.init(document.getElementById("pieLoop"));
 	var loopDataName=["常见目录","常见管理接口","跨站请求伪造","存在后门","常见敏感文件","HTTP TRACE跨域攻击","跨站脚本攻击","访问限制旁路源欺骗",
 	                  "HTML标签中的跨站脚本攻击","SQL盲注（时序攻击）","SQL注入漏洞","路径中的跨站脚本攻击","DOM跨站脚本攻击","脚本上下文中的跨站脚本攻击",
 	                  "不安全的跨域访问策略","NoSQL盲注（差分分析）","时序OS命令注入","SQL盲注（差异化分析）","目录遍历","弱口令"];
 	var loopDataValue=[
 	                     {name:"常见目录",value:1305},
 	                     {name:"常见管理接口",value:1200},
 	                     {name:"跨站请求伪造",value:1030},
 	                     {name:"存在后门",value:900},
 	                     {name:"常见敏感文件",value:750},
 	                     {name:"HTTP TRACE跨域攻击",value:699},
 	                     {name:"跨站脚本攻击",value:630},
 	              		 {name:"访问限制旁路源欺骗",value:550},
 	             		 {name:"HTML标签中的跨站脚本攻击",value:500},
 	            		 {name:"SQL盲注（时序攻击）",value:430},
 	           			 {name:"SQL注入漏洞",value:301},
 	          			 {name:"路径中的跨站脚本攻击",value:258},
	        			 {name:"DOM跨站脚本攻击",value:194},
	        			 {name:"脚本上下文中的跨站脚本攻击",value:130},
	        			 {name:"不安全的跨域访问策略",value:65},
	        			 {name:"NoSQL盲注（差分分析）",value:55},
	        			 {name:"时序OS命令注入",value:13},
	        			 {name:"SQL盲注（差异化分析）",value:4},
	        			 {name:"目录遍历",value:0},
	        			 {name:"弱口令",value:0}
 	                     ];
 	var pieLoopOption={
 			title: {
	            text: '漏洞类型统计',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
 		    tooltip : {
 		        trigger: 'item',
 		        formatter: "{a} <br/>{b} : {c} ({d}%)"
 		    },
 		    legend: {
 		        type: 'scroll',
 		        orient: 'vertical',
 		        pageIconColor:'#FFFFFF',
 		        pageTextStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        right: 10,
 		        top: 20,
 		        bottom: 20,
 		        align:'left',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        data: loopDataName
 		    },
 		    series : [
 		        {
 		            name: '数量',
 		            type: 'pie',
 		            radius : '80%',
 		            center: ['50%', '50%'],
 		            data: loopDataValue,
 		            itemStyle: {
 		                emphasis: {
 		                    shadowBlur: 10,
 		                    shadowOffsetX: 0,
 		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
 		                }
 		            }
 		        }
 		    ]
 		};
 	pieLoopcharts.setOption(pieLoopOption);
 	
 	var barLoopcharts=echarts.init(document.getElementById("barLoop"));
 	var barLoopOption={
 			title: {
	            text: '漏洞类型排行',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
	        tooltip : {
			        trigger: 'axis',
			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
			        }
			    },
 		    xAxis: {
 		    	axisLabel:{color:'#FFFFFF'},
 		    	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		    	type: 'value'
 		    },
 		    yAxis: {
	        	type: 'category',
	        	axisLabel:{color:'#FFFFFF',rotate:45},
	        	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        data: ["常见目录","常见管理接口","跨站请求伪造","存在后门","常见敏感文件","HTTP TRACE跨域攻击","跨站脚本攻击","访问限制旁路源欺骗",
 	                  "HTML标签中的跨站脚本攻击","SQL盲注（时序攻击）","SQL注入漏洞","路径中的跨站脚本攻击","DOM跨站脚本攻击","脚本上下文中的跨站脚本攻击",
 	                  "不安全的跨域访问策略","NoSQL盲注（差分分析）","时序OS命令注入","SQL盲注（差异化分析）","目录遍历","弱口令"]
 		    },
 		    series: [{
 		        data: [1305,1200,1030,900,750,699,630,550,430,301,258,194,130,65,55,13,4,0,0],
 		        type: 'bar'
 		    }]
 		};
 	barLoopcharts.setOption(barLoopOption);
 	</script>
  </body>
</html>

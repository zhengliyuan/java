<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>攻击分析</title>
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
 			<div id="pieAttack" style="width: 50%;height: 100%;float: left;"></div>
 			<div id="barAttack" style="width: 50%;height: 100%;float: right;"></div>
 		</div>>
 		<div id="div2" style="width: 100%;height: 50%">
 			<div id="barAttackSource" style="width: 50%;height: 100%;float: left;"></div>
 			<div id="lineAttackTime" style="width: 50%;height: 100%;float: left;"></div>
 		</div>>
 	</div>
 	<script type="text/javascript">
 	var pieAttackcharts=echarts.init(document.getElementById("pieAttack"));
 	var attackDataName=["SQL注入","应用程序漏洞","文件下载","XSS攻击","CC攻击","敏感词过滤","非法请求","文件解析","溢出","畸形文件","网页浏览实时防护","HTTP请求防护","后台防护"];
 	var attackDataValue=[
 	                     {name:"SQL注入",value:244395},
 	                     {name:"应用程序漏洞",value:178806},
 	                     {name:"文件下载",value:117823},
 	                     {name:"XSS攻击",value:83083},
 	                     {name:"CC攻击",value:66357},
 	                     {name:"敏感词过滤",value:60832},
 	                     {name:"非法请求",value:49908},
 	              		 {name:"文件解析",value:43119},
 	             		 {name:"溢出",value:32766},
 	            		 {name:"畸形文件",value:21095},
 	           			 {name:"网页浏览实时防护",value:18873},
 	          			 {name:"HTTP请求防护",value:11905},
	        			 {name:"后台防护",value:8274}
 	                     ];
 	var pieAttackOption={
 			title: {
	            text: '攻击类型统计',
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
 		        data: attackDataName
 		    },
 		    series : [
 		        {
 		            name: '数量',
 		            type: 'pie',
 		            radius : '80%',
 		            center: ['50%', '50%'],
 		            data: attackDataValue,
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
 	pieAttackcharts.setOption(pieAttackOption);
 	
 	var barAttackcharts=echarts.init(document.getElementById("barAttack"));
 	var barAttackOption={
 			title: {
	            text: '攻击类型排行',
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
 		        data: ["SQL注入","应用程序漏洞","文件下载","XSS攻击","CC攻击","敏感词过滤","非法请求","文件解析","溢出","畸形文件","网页浏览实时防护","HTTP请求防护","后台防护"]
 		    },
 		    series: [{
 		        data: [244395,178806,117823,83083,66357,60832,49908,43119,32766,21095,18873,11905,8274],
 		        type: 'bar'
 		    }]
 		};
 	barAttackcharts.setOption(barAttackOption);
 	
 	var barAttackSourcecharts=echarts.init(document.getElementById("barAttackSource"));
 	var barAttackSourceOption={
 			title: {
	            text: '攻击源排行TOP10',
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
 		    	type: 'category',
	        	axisLabel:{color:'#FFFFFF',rotate:45},
	        	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        data: ["中国河南郑州","中国海南儋州","中国浙江宁波","中国山东青岛","中国浙江台州","中国江苏镇江","局域网","中国湖北武汉","中国浙江湖州","菲律宾"]
 		    },
 		    yAxis: {
 		    	axisLabel:{color:'#FFFFFF'},
 		    	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		    	type: 'value'
 		    },
 		    series: [{
 		        data: [159534,139353,106820,98334,85012,70635,69844,67021,63887,57832],
 		        type: 'bar'
 		    }]
 		};
 	barAttackSourcecharts.setOption(barAttackSourceOption);
 	
 	
 	var lineAttackTimecharts=echarts.init(document.getElementById("lineAttackTime"));
 	function randomData() {
 	    now = new Date(+now + oneDay);
 	    value = value + Math.random() * 21 - 10;
 	    return {
 	        name: now.toString(),
 	        value: [
 	            [now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'),
 	            Math.round(value)
 	        ]
 	    }
 	}

 	var data = [];
 	var now = +new Date(2010, 9, 3);
 	var oneDay = 24 * 3600 * 1000;
 	var value = Math.random() * 1000;
 	for (var i = 0; i < 1000; i++) {
 	    data.push(randomData());
 	}
 	var lineAttackTimeOption={
 			title: {
	            text: '攻击实时数据',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
 		    tooltip: {
 		        trigger: 'axis',
 		        formatter: function (params) {
 		            params = params[0];
 		            var date = new Date(params.name);
 		            return date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear() + ' : ' + params.value[1];
 		        },
 		        axisPointer: {
 		            animation: false
 		        }
 		    },
 		    xAxis: {
 		        type: 'time',
 		       	axisLabel:{color:'#FFFFFF',rotate:45},
 		       axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        splitLine: {
 		            show: false
 		        }
 		    },
 		    yAxis: {
 		        type: 'value',
 		      	axisLabel:{color:'#FFFFFF'},
 		      	axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        boundaryGap: [0, '100%'],
 		        splitLine: {
 		            show: false
 		        }
 		    },
 		    series: [{
 		        name: '模拟数据',
 		        type: 'line',
 		        showSymbol: false,
 		        hoverAnimation: false,
 		        data: data
 		    }]
 		};
	 	setInterval(function () {
	
	 	    for (var i = 0; i < 1; i++) {
	 	        data.shift();
	 	        data.push(randomData());
	 	    }
	
	 	   lineAttackTimecharts.setOption({
	 	        series: [{
	 	            data: data
	 	        }]
	 	    });
	 	}, 1000);
	lineAttackTimecharts.setOption(lineAttackTimeOption);
 	</script>
  </body>
</html>

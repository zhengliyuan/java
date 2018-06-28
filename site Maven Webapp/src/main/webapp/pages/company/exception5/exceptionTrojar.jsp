<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/static/jquery-1.11.3.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/echarts.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
  </head>
  <!-- <body background="../static/img/bg.jpg"> -->
  <body background="../static/img/bg.jpg">
  	 <jsp:include page="../../commons/top.jsp"></jsp:include>
 	<div class="panel panel-default">
	 	<div style="width: auto;height: 900px;">
	 		<div class="panel-body" style="width: 82%;height: 100%;float: left;">
	 			<div id="table1" style="width: 100%;height: 50%;"></div>
		 		<div id="table2" style="width: 100%;height: 50%;"></div> 
	 		</div>
		 	<div id="tableHour" style="width: 18%;height: 100%;float: right;">
		 		<div id="xiao1" style="width: 100%;height: 33%;"></div>
		 		<div id="xiao2" style="width: 100%;height: 33%;"></div>
		 		<div id="xiao3" style="width: 100%;height: 33%;"></div>
		 	</div>
	 	</div>	
 	</div>
 	<script type="text/javascript">
 	var table1charts=echarts.init(document.getElementById('table1'));
 	var table1option={
 			title: {
	 		        text: '每日访问网站数量',
	 		        textStyle:{
	 		        	color:'#FFFFFF'
	 		        },
	 		        x:'center'
	 		    },
	 		   tooltip : {
			        trigger: 'axis'
			    },
 			 grid:{
			    	left:'3%',
			    	right:'2%'
			    },
 		    xAxis: {
 		        type: 'category',
 		       	axisLabel:{color:'#FFFFFF',rotate:45},
 		      	axisLine: {onZero: true,
	            	lineStyle:{
	            		color:'#FFFFFF'
	            	}},
 		        data: [
	 	                '2017-11-01','2017-11-02','2017-11-03','2017-11-04','2017-11-05','2017-11-06','2017-11-07','2017-11-08','2017-11-09','2017-11-10',
	 	                '2017-11-11','2017-11-12','2017-11-13','2017-11-14','2017-11-15','2017-11-16','2017-11-17','2017-11-18','2017-11-19','2017-11-20',
	 	                '2017-11-21','2017-11-22','2017-11-23','2017-11-24','2017-11-25','2017-11-26','2017-11-27','2017-11-28','2017-11-29','2017-11-30'
	 		]
 		    },
 		    yAxis: {
 		    	axisLabel:{color:'#FFFFFF'},
		            axisLine: {onZero: true,
		            	lineStyle:{
	            		color:'#FFFFFF'
	            	}},
 		        type: 'value'
 		    },
 		    series: [{
 		        data: [7376,7111,7330,79,374,7200,7142,7500,7181,6887,411,545,7478,7546,7437,7526,7413,638,733,7262,7287,7468,7650,7444,816,728,7160,7353,7231,7155],
 		        type: 'line'
 		    }]
 		};
 	table1charts.setOption(table1option);
 	var table2charts=echarts.init(document.getElementById('table2'));
 	   var table2option = {
 			  title: {
 	 		        text: '博彩类网站访问数量',
 	 		        textStyle:{
 	 		        	color:'#FFFFFF'
 	 		        },
 	 		        x:'center'
 	 		    },
 			    tooltip : {
 			        trigger: 'axis',
 			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
 			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
 			        }
 			    },
 			    grid:{
 			    	left:'3%',
 			    	right:'2%'
 			    },
 			    legend: {
 			        data:['www.abcchina.com','www.codeguru.cn','www.wypblog.com'],
 			       	x:'left ',
 	 		        textStyle:{
 	 		        	color:'#FFFFFF'
 	 		        }
 			    },
 			    xAxis : [
					{
					     type : 'category',
						axisLabel:{color:'#FFFFFF',rotate:45},
		 		      	axisLine: {onZero: true,
			            	lineStyle:{
			            		color:'#FFFFFF'
			            	}},
						 nameRotate:90,
					     data : [
				 	                '2017-11-01','2017-11-02','2017-11-03','2017-11-04','2017-11-05','2017-11-06','2017-11-07','2017-11-08','2017-11-09','2017-11-10',
				 	                '2017-11-11','2017-11-12','2017-11-13','2017-11-14','2017-11-15','2017-11-16','2017-11-17','2017-11-18','2017-11-19','2017-11-20',
				 	                '2017-11-21','2017-11-22','2017-11-23','2017-11-24','2017-11-25','2017-11-26','2017-11-27','2017-11-28','2017-11-29','2017-11-30'
				 		]
					 }
 			    ],
 			    yAxis : [
 			        {
 			        	axisLabel:{color:'#FFFFFF'},
 	 		            axisLine: {onZero: true,
 	 		            	lineStyle:{
 			            		color:'#FFFFFF'
 			            	}},
 			            type : 'value'
 			        }
 			    ],
 			    series : [
 			        {
 			            name:'www.abcchina.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,0,0,0,1,5,2,2,2,0,0,1,2,2,1,1,0,0,1,0,2,2,1,0,0,3,0,2,1]
 			        },
 			        {
 			            name:'www.codeguru.cn',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[6,2,4,0,0,6,2,4,2,3,0,0,7,1,8,5,8,3,0,9,0,4,5,2,0,0,6,3,2,8]
 			        },
 			        {
 			            name:'www.wypblog.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[5,6,11,0,0,16,11,10,12,10,0,2,6,10,13,10,11,2,0,12,5,9,7,11,6,0,4,8,2,11]
 			        }
 			    ]
 			};
 	  table2charts.setOption(table2option);
 	  
 	 var xiao1charts=echarts.init(document.getElementById('xiao1'));
 	 var xiao2charts=echarts.init(document.getElementById('xiao2'));
 	 var xiao3charts=echarts.init(document.getElementById('xiao3'));
 	 
 	 var xiao1option={
			 title: {
 		        text: '网站平均访问数量',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        x:'center'
 		    },
 		   tooltip : {
		        trigger: 'axis',
		        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
		            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
		        }
		    },
 		    angleAxis: {
 		    	axisLabel:{color:'#FFFFFF',rotate:45},
		      	axisLine: {onZero: true,
	            	lineStyle:{
	            		color:'#FFFFFF'
	            	}},
 		        type: 'category',
 		        data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
 		        z: 10
 		    },
 		    radiusAxis: {
 		    	axisLabel:{color:'#FFFFFF',rotate:45},
		      	axisLine: {onZero: true,
	            	lineStyle:{
	            		color:'#FFFFFF'
	            	}}
 		    },
 		    polar: {
 		    },
 		    series: [{
 		        type: 'bar',
 		        data: [7275, 7332, 7402, 7324, 7261, 486, 595],
 		        coordinateSystem: 'polar'
 		    }],
 		};
 	 
 	 var xiao2option={
 			 title: {
	 		        text: '网站访问TOP10',
	 		        textStyle:{
	 		        	color:'#FFFFFF'
	 		        },
	 		        x:'center'
 		    },
 		    grid:{
 		    	top:'10%',
 		    	left:'18%',
 		    	bottom:'30%'
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
		      	axisLine: {onZero: true,
	            	lineStyle:{
	            		color:'#FFFFFF'
	            	}},
 		        data: ['email.hightech.com', 'OA.hightech.com', 'git.hightech.com', 'jira.hightech.com', 'lib01.hightech.com', 'lib02.hightech.com','www.baidu.com','www.google.com','www.yahoo.com','www.ruanyifeng.com']
 		    },
 		    yAxis: {
 		    	axisLabel:{color:'#FFFFFF'},
		            axisLine: {onZero: true,
		            	lineStyle:{
		            		color:'#FFFFFF'
		            	}},
 		        type: 'value'
 		    },
 		    series: [{
 		        data: [33097, 14378, 11664, 9564, 7512, 6632, 2036,1591,1021,1018],
 		        type: 'bar'
 		    }]
 		};
 	 
 	 
 	var xiao3option={
			 title: {
	 		        text: '访问博彩类网站员工数量',
	 		        textStyle:{
	 		        	color:'#FFFFFF'
	 		        },
	 		        x:'center'
		    },
		    grid:{
		    	top:'10%',
		    	left:'10%',
		    	bottom:'30%'
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
		      	axisLine: {onZero: true,
	            	lineStyle:{
	            		color:'#FFFFFF'
	            	}},
		        data: ['www.abcchina.com','www.codeguru.cn','www.wypblog.com']
		    },
		    yAxis: {
		    	axisLabel:{color:'#FFFFFF'},
		            axisLine: {onZero: true,
		            	lineStyle:{
		            		color:'#FFFFFF'
		            	}},
		        type: 'value'
		    },
		    series: [{
		        data: [6, 4, 9],
		        barMaxWidth:'40',
		        type: 'bar'
		    }]
		};
 	 
 	xiao1charts.setOption(xiao1option);
 	xiao2charts.setOption(xiao2option);
 	xiao3charts.setOption(xiao3option);
 	 
 	</script>
  </body>
</html>

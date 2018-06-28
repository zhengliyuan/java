<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>数据库异常</title>
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
	 	<div class="panel-body" style="width: auto;height: 900px;">
		 	<div id="table" style="width: 100%;height: 50%;">
		 		<div id="table1" style="width: 80%;height: 100%;float: left;"></div>
		 		<!-- <div id="table2" style="width: 50%;height: 100%;float: right;"></div> -->
		 	</div>
		 	<div id="tableHour" style="width: 100%;height: 50%;">
		 		<div id="tableHour1" style="width: 50%;height: 100%;float: left;"></div>
		 		<div id="tableHour2" style="width: 50%;height: 100%;float: right;"></div>
		 	</div>
	 	</div>	
 	</div>
 	<script type="text/javascript">
 	var table1charts=echarts.init(document.getElementById('table1'));
 	
 	var option1 = {
 		    title: {
 		        text: '邮箱发送数量折线图',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        x:'left'
 		    },
 		    tooltip : {
 		        trigger: 'axis',
 		        axisPointer: {
 		            type: 'cross',
 		            label: {
 		                backgroundColor: '#6a7985'
 		            }
 		        }
 		    },
 		    legend: {
 		        data:['alert@hightech.com','smail@hightech.com','work@hightech.com'],
 		        x:'right',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        }
 		    },
 		    grid: {
 		        left: '3%',
 		        right: '4%',
 		        bottom: '3%',
 		        containLabel: true
 		    },
 		    xAxis : [
 		        {
 		            type : 'category',
 		           axisLabel:{color:'#FFFFFF',rotate:45},
 		          axisLine:{
						 lineStyle:{
							 color:'#FFFFFF'
						 }
					 },
 		            boundaryGap : false,
 		            data : [
 		         		    "2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10","2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20","2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28","2017-11-29","2017-11-30"
  		         		   ]
 		        }
 		    ],
 		    yAxis : [
 		        {
 		        	axisLabel:{color:'#FFFFFF'},
 		        	axisLine:{
						 lineStyle:{
							 color:'#FFFFFF'
						 }
					 },
 		            type : 'value'
 		        }
 		    ],
 		    series : [
 		        {
 		            name:'alert@hightech.com',
 		            type:'bar',
 		            data:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
 		        },
 		       {
 		            name:'smail@hightech.com',
 		            type:'bar',
 		            data:[132,139,125,1,16,122,146,128,111,134,8,11,132,125,126,143,129,7,22,131,126,95,114,124,23,11,133,151,113,113]
 		        },
 		       {
 		            name:'work@hightech.com',
 		            type:'bar',
 		            data:[867,847,923,8,71,896,846,935,898,965,38,74,902,985,927,934,878,77,143,856,933,920,937,922,158,136,930,856,896,882]
 		        }
 		    ]
 		};

 	
   	table1charts.setOption(option1);
   	/*------------------------------------------------------------*/
 	</script>
  </body>
</html>

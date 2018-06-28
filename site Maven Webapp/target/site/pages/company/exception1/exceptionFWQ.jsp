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
  	<%-- <jsp:include page="../commons/top.jsp"></jsp:include> --%>
 	<div class="panel panel-default">
	 	<div class="panel-body" style="width: auto;height: 900px;">
	 		<div id="table2" style="width: 100%;height: 100%;"></div> 
	 	</div>	
 	</div>
 	<script type="text/javascript">
 	var table2charts=echarts.init(document.getElementById('table2'));
 		var option = {
 		    legend: {
 		        data: ['成功', '失败'],
 		       textStyle:{color:'#FFFFFF'},
 		        align: 'left',
 		        left: 10
 		    },
 		   tooltip: {},
 		    xAxis: {
 		        data: ['10.64.105.105','10.64.105.124','10.64.105.128','10.64.105.139','10.64.105.14','10.64.105.149','10.64.105.17','10.64.105.175','10.64.105.179','10.64.105.188','10.64.105.201','10.64.105.202','10.64.105.214','10.64.105.246','10.64.105.25','10.64.105.32','10.64.105.4','10.64.105.48','10.64.105.5','10.64.105.55','10.64.105.57','10.64.105.64','10.64.105.69','10.64.105.77','10.64.105.79','10.64.105.86','10.64.105.91','10.64.105.93','10.64.106.18','10.64.106.22','10.64.106.25','10.64.106.26','10.64.106.35','10.64.106.36','10.64.106.41','10.64.106.50'],
 		        name: '服务器',
 		        nameRotate:90,
 		        silent: false,
 		       axisLabel:{color:'#FFFFFF',rotate:45},
				 axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        axisLine: {onZero: true},
 		        splitLine: {show: false},
 		        splitArea: {show: false}
 		    },
 		    yAxis: {
 		        inverse: true,
 		       axisLabel:{color:'#FFFFFF'},
				 axisLine:{
					 lineStyle:{
						 color:'#FFFFFF'
					 }
				 },
 		        name:'次数',
 		        splitArea: {show: false}
 		    },
 		    grid: {
 		        left: 100,
 		        bottom:100
 		    },
 		    series: [
 		        {
 		            name: '成功',
 		            type: 'bar',
 		            stack: 'one',
 		           itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 		            data: [0,2,1,1,2,1,2,1,2,1,1,1,1,1,2,1,0,1,2,2,1,2,3,3,0,1,1,1,1,1,2,3,1,2,1,1]
 		        },
 		        {
 		            name: '失败',
 		            type: 'bar',
 		            stack: 'one',
 		           itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 		            data: [-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-22,0,0,0,0,0,0,0,-1,0,0,0,0,0]
 		        }
 		    ]
 		};
 	  table2charts.setOption(option);
 	</script>
  </body>
</html>

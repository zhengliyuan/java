<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>1487员工28日流量分析</title>
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
		 	<div id="table" style="width: 100%;height: 50%;">
		 		<div id="table1" style="width: 50%;height: 100%;float: left;"></div>
		 		<div id="table2" style="width: 50%;height: 100%;float: right;"></div>
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
 		        text: '1487员工11月28日各个服务器下载流量',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        x:'center'
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
 		        data:['上传','下载'],
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
 		            data : ["10.5.71.60 25","10.5.71.60 443","10.50.50.26 22","10.50.50.26 443","10.50.50.26 54238","10.50.50.26 8005","10.50.50.27 443","10.50.50.28 22","10.50.50.28 443","10.50.50.29 21","10.50.50.29 443","10.50.50.29 4443","10.50.50.29 8005","10.50.50.33 22","10.50.50.33 4443","10.50.50.33 8005","10.50.50.43 80","10.50.50.47 8005","10.63.120.70 22","10.63.120.70 443","115.231.74.62 443","122.228.74.177 443","198.7.31.192 443"]
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
 		            name:'下载',
 		            type:'bar',
 		            lineStyle:{
 		            	color:"yellow"
 		            },
 		            data:[715,37688799,210037886,28449559,18461,390034376,28208713,10650,19676139,120015065,17053542,150026688,60015016,28032,180005233,9420,102222258,120006059,210009335,8558297,39076179,19421682,7118994]
 		        }
 		    ]
 		};

 	
   	table1charts.setOption(option1);
   	/*------------------------------------------------------------*/
   	var table2charts=echarts.init(document.getElementById('table2'));
 	
 	var option2 = {
 		    title: {
 		        text: '1487员工11月份在10.50.50.26 8005下载流量',
 		       textStyle:{
		        	color:'#FFFFFF'
		        },
		        x:'center'
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
 		        data:['下载'],
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
 		           axisLabel:{color:'#FFFFFF'},
 		          axisLine:{
						 lineStyle:{
							 color:'#FFFFFF'
						 }
					 },
 		            boundaryGap : false,
 		            data :  [
 		         		    "2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10","2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20","2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28"
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
 		            name:'下载',
 		            type:'line',
 		            data:[90018911,9231,0,0,0,4169,90018919,0,3954,0,0,0,0,120015963,0,0,9351,0,0,0,30027208,0,0,0,0,0,0,390034376]
 		        }
 		    ]
 		};

 	
   	table2charts.setOption(option2);
   	/*-----------------------------------------------------------------*/
 	</script>
  </body>
</html>

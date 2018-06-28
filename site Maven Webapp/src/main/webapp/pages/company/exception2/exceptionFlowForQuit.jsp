<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>辞职人员流量分析</title>
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
		 		<div style="width: 66%;height: 100%;float: left;">
		 			<div id="table1" style="width: 50%;height: 100%;float: left;"></div>
		 			<div id="table2" style="width: 50%;height: 100%;float: right;"></div>
		 		</div>
		 		<div id="tableHour1" style="width: 33%;height: 100%;float: right;"></div>
		 	</div>
		 	<div id="table2" style="width: 100%;height: 50%;">
		 		<div id="table21" style="width: 50%;height: 100%;float: left;"></div>
		 		<div id="table22" style="width: 50%;height: 100%;float: right;"></div>
		 	</div>
	 	</div>	
 	</div>
 	<script type="text/javascript">
 	var table1charts=echarts.init(document.getElementById('table1'));
 	
 	var option1 = {
 		    title: {
 		        text: '用户1281流量',
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
 		            name:'上传',
 		            type:'line',
 		            data:[1681698450,2223953980,633989328,0,0,1082934316,2314323241,1954328680,1294124409,601268124,0,0,1051577251,784240685,1741020501,781053600,1381544435,0,873142609,722773424,784141144,992037190,1172437802,1474360897,0,0,1802084650,692415454]
 		        },
 		        {
 		            name:'下载',
 		            type:'line',
 		            lineStyle:{
 		            	color:"yellow"
 		            },
 		            data:[1664544121,2652081133,2072257982,0,0,1825793572,2416651388,1912424975,1613919646,964338654,0,0,1103320085,2094480080,1553253619,1094710537,1452572182,0,2615836450,1120155990,936803609,1558109276,1302138569,2713789476,0,0,1422710236,2012050305]
 		        }
 		    ]
 		};

 	
   	table1charts.setOption(option1);
   	/*------------------------------------------------------------*/
   	var table2charts=echarts.init(document.getElementById('table2'));
 	
 	var option2 = {
 		    title: {
 		        text: '用户1376流量',
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
 		            name:'上传',
 		            type:'line',
 		            data:[272098243,1353114413,752403733,0,0,1203048976,421997977,482014701,1052260006,181804037,61873,75827,63233575,812319465,542049579,1564328769,512903152,390038855,0,452053080,1141688129,1321941673,1261622880,1082243274,50496,42977,1233082149,783104161]
 		        },
 		        {
 		            name:'下载',
 		            type:'line',
 		           lineStyle:{
		            	color:"yellow"
		            },
 		            data:[1040370690,1667073001,1064646854,0,0,714056381,939962859,1468197490,1747839903,1008386392,107189,158411,716330199,2054460490,1239228293,2553878225,933164650,60092362,0,1484936861,1483780712,355111245,2310627372,2061998103,87927,102556,1280130073,1373244555]
 		        }
 		    ]
 		};

 	
   	table2charts.setOption(option2);
   	/*-----------------------------------------------------------------*/
   	var tableHour1charts=echarts.init(document.getElementById('tableHour1'));
 	
 	var optionHour1 = {
 		    title: {
 		        text: '用户1487流量',
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
 		            name:'上传',
 		            type:'line',
 		            data:[691997796,991350652,932613602,73945,0,542243815,991616911,362149920,631717435,451693365,26816,152804243,902549050,722064724,1081353453,662261646,363151911,60154,44716,1051952485,1922728731,571501938,541860637,1442438531,65865,55561,1081954707,2463427140]
 		        },
 		        {
 		            name:'下载',
 		            type:'line',
 		           lineStyle:{
		            	color:"yellow"
		            },
 		            data:[251488431,674804235,963796915,3501,0,1012065235,1411927174,430726777,1099766103,1272881030,40580,939876661,1383908580,1130032521,1251843980,1251642846,1089978058,60120643,92302,988763806,1322864846,801765050,1073346061,1838518123,101955,98928,112957936,1747691098]
 		        }
 		    ]
 		};

 	
 	tableHour1charts.setOption(optionHour1);
 	
 	
 	
	var table21charts=echarts.init(document.getElementById('table21'));
 	
 	var option21 = {
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
 		        bottom: '-1%',
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

 	
   	table21charts.setOption(option21);
   	/*------------------------------------------------------------*/
   	var table22charts=echarts.init(document.getElementById('table22'));
 	
 	var option22 = {
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
 		           axisLabel:{color:'#FFFFFF',rotate:45},
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

 	
   	table22charts.setOption(option22);
 	</script>
  </body>
</html>

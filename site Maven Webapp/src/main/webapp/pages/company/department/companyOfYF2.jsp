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
	<script src="${pageContext.request.contextPath}/static/echarts-wordcloud.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
  </head>
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../../commons/top.jsp"></jsp:include>
 	<div class="panel panel-default">
	 	<div class="panel-body" style="width: auto;height: 900px;">
		 	<div style="width:70%;height: 100%;float: left;">
				  <!-- Nav tabs -->
				  <ul class="nav nav-tabs" role="tablist">
				    <li role="presentation" class="active"><a href="#parallel" aria-controls="parallel" role="tab" data-toggle="tab" style="color:black">研发一组</a></li>
				    <li role="presentation"><a href="#parallel2" aria-controls="parallel2" role="tab" data-toggle="tab" style="color:black">研发二组</a></li>
				    <li role="presentation"><a href="#parallel3" aria-controls="parallel3" role="tab" data-toggle="tab" style="color:black">研发三组</a></li>
				  </ul>
				
				  <!-- Tab panes -->
				  <div class="tab-content" style="width:100%;height: 100%;">
				    <div id="parallel" role="tabpanel" class="tab-pane fade in active" style="width:100%;height: 100%;"></div>
				    <div role="tabpanel" class="tab-pane fade" id="parallel2" style="width:1310px;height: 900px;"></div>
				    <div role="tabpanel" class="tab-pane fade" id="parallel3" style="width:1310px;height: 900px;"></div>
				  </div>
			</div>
		 	<div style="width: 30%;height: 100%;float: right;">
		 		<div id="graph" style="width: 100%;height: 60%"></div>
		 		<div id="worldCloud" style="width: 100%;height: 40%"></div>
		 	</div>
	 	</div>
 	</div>
 	<script type="text/javascript">
 		//-------------------------服务器图-------------------------------------
 		var parallelcharts=echarts.init(document.getElementById('parallel'));
 		$.get('${pageContext.request.contextPath}/static/parallelData.json', function (data) {
			 	var schema = [
			 	    {name: 'date', index: 0, text: '小组'},
			 	    {name: 'AQIindex', index: 1, text: '人员id'},
			 	    {name: 'PM25', index: 2, text: '登陆ip'},
			 	    {name: 'CO', index: 3, text: ' 接收ip'},
			 	    {name: 'SO2', index: 4, text: '协议'},
			 	    {name: '等级', index: 5, text: '协议类型'}
			 	];
			
			 	var lineStyle = {
			 	    normal: {
			 	        width: 1,
			 	        opacity: 0.5
			 	    }
			 	};
			
			 	parallelcharts.setOption(paralleloption = {
			 	    parallelAxis: [
			 	        {dim: 0, name: schema[0].text, type: 'category', data: ['研发一组']},
			 	        {dim: 1, name: schema[1].text, type: 'category', data: ['1059','1080','1364','1181','1449','1311','1193','1422','1194','1297','1384','1376','1211','1411','1287','1382','1231','1365','1284','1497','1164','1101','1356','1241','1461','1313','1352','1175','1350','1179','1338','1325','1143','1434','1380','1438','1367','1355','1279','1163','1324','1304','1381','1217','1119','1135','1238','1244','1268','1401','1148','1274','1360','1390','1291','1155','1421','1216','1470','1409','1462','1444','1332','1206','1283','1389','1267','1058','1261','1171','1333','1424','1445','1450','1202','1130','1383','1245','1489','1228','1290','1465','1178','1177','1174','1394','1487','1273','1096','1402','1478','1239','1500','1254','1079','1262','1395','1219','1482','1057','1173','1374','1410','1361','1150','1142']},
			 	        {dim: 2, name: schema[2].text, type: 'category', data: ['10.64.106.49','10.64.105.175','10.64.105.33','10.64.106.22','10.64.106.21','10.64.105.11','10.64.105.117','10.64.105.223','10.64.106.33','10.64.105.202','10.64.105.181','10.64.105.219','10.64.105.63','10.64.105.167','10.64.105.252','10.64.105.138','10.64.105.139','10.64.105.173','10.64.105.95','10.64.105.106','10.64.106.26','10.64.105.102','10.64.106.41','10.64.105.23','10.64.105.172','10.64.105.154','10.64.105.174','10.64.105.10','10.64.106.27','10.64.105.118','10.64.105.91','10.64.105.14','10.64.105.180','10.64.105.105','10.64.105.69','10.64.105.20','10.64.105.247','10.64.106.50','10.64.105.196','10.64.105.144','10.64.105.86','10.64.105.35','10.64.105.246','10.64.105.3','10.64.105.166','10.64.105.26','10.64.105.5','10.64.105.38','10.64.105.228','10.64.105.115','10.64.105.186','10.64.105.56','10.64.105.185','10.64.105.40','10.64.106.40','10.64.105.194','10.64.105.156','10.64.105.53','10.64.105.61','10.64.105.50','10.64.105.232','10.64.105.66','10.64.105.47','10.64.105.19','10.64.105.162','10.64.105.79','10.64.105.191','10.64.105.218','10.64.105.239','10.64.105.241','10.64.105.32','10.64.105.136','10.64.105.141','10.64.105.220','10.64.105.49','10.64.105.207','10.64.105.60','10.64.105.98','10.64.105.132','10.64.105.146','10.64.105.96','10.64.105.168','10.64.105.237','10.64.105.57','10.64.106.44','10.64.105.179','10.64.105.4','10.64.105.244','10.64.105.204','10.64.105.178','10.64.105.37','10.64.106.37','10.64.105.55','10.64.105.183','10.64.105.152','10.64.105.24','10.64.105.206','10.64.105.97','10.64.105.130','10.64.105.94','10.64.105.64','10.64.105.108','10.64.105.224','10.64.105.111','10.64.105.51','10.64.105.143']},
			 	        {dim: 3, name: schema[3].text, type: 'category', data: ['10.5.71.60','10.50.50.26','10.50.50.28','10.50.50.29','10.50.50.30','10.50.50.31','10.50.50.33','10.50.50.34','10.50.50.35','10.50.50.36','10.50.50.37','10.50.50.38','10.50.50.39','10.50.50.40','10.50.50.41','10.50.50.42','10.50.50.43','10.50.50.44','10.50.50.45','10.50.50.46','10.50.50.47','10.50.50.48','10.50.50.49','10.63.120.70','10.7.133.15','10.7.133.16','10.7.133.18','10.7.133.19','10.7.133.20','10.7.133.21','10.7.133.22']},
			 	        {dim: 4, name: schema[4].text, type: 'category', data: ['ftp','mongodb','mysql','postgresql','sftp','ssh','tds']},
			 	        {dim: 5, name: schema[5].text,
			 	        type: 'category', data: ['文件传输','mongodb数据库','mysql数据库','postgresql数据库','安全文件传输','远程登陆','sqlserver数据库']}
			 	    ],
			 	    parallel: {
			 	        left: '3%',
			 	        right: '5%',
			 	        top:'5%',
			 	       	bottom: '5%',
			 	        parallelAxisDefault: {
			 	            type: 'value',
			 	            name: 'AQI指数',
			 	            nameLocation: 'end',
			 	            nameGap: 20,
			 	            nameTextStyle: {
			 	                color: '#fff',
			 	                fontSize: 12
			 	            },
			 	            axisLine: {
			 	                lineStyle: {
			 	                    color: '#aaa'
			 	                }
			 	            },
			 	            axisTick: {
			 	                lineStyle: {
			 	                    color: '#777'
			 	                }
			 	            },
			 	            splitLine: {
			 	                show: false
			 	            },
			 	            axisLabel: {
			 	                textStyle: {
			 	                    color: '#fff'
			 	                }
			 	            }
			 	        }
			 	    },
			 	    series: [
			 	        {
			 	            name: '研发一组',
			 	            type: 'parallel',
			 	            lineStyle: {
			 	            	color:"#218D88",
			 	            	 width: 0.5,
						 	     opacity: 0.5
			 	            },
			 	            data: data.dataYF1
			 	        }
			 	    ]
			 	});
 		});
 		//****************************************************2开始**************************************
 		var parallel2charts=echarts.init(document.getElementById('parallel2'));
 		$.get('${pageContext.request.contextPath}/static/parallelData.json', function (data) {
			 	var schema = [
			 	    {name: 'date', index: 0, text: '小组'},
			 	    {name: 'AQIindex', index: 1, text: '人员id'},
			 	    {name: 'PM25', index: 2, text: '登陆ip'},
			 	    {name: 'CO', index: 3, text: ' 接收ip'},
			 	    {name: 'SO2', index: 4, text: '协议'},
			 	    {name: '等级', index: 5, text: '协议类型'}
			 	];
			
			 	var lineStyle = {
			 	    normal: {
			 	        width: 1,
			 	        opacity: 0.5
			 	    }
			 	};
			
			 	parallel2charts.setOption(paralleloption = {
			 	    parallelAxis: [
			 	        {dim: 0, name: schema[0].text, type: 'category', data: ['研发二组']},
			 	        {dim: 1, name: schema[1].text, type: 'category', data: ['1068','1154','1176','1315','1152','1420','1191','1428','1483','1469','1156','1456','1204','1435','1207','1189','1330','1319','1296','1399','1263','1103','1100','1139','1481','1385','1147','1321','1493','1458','1170','1379','1305','1234','1362','1405','1159','1474','1098','1343','1127','1496','1277','1334','1209','1460','1126','1322','1339','1388','1349','1153','1060','1359','1457','1328','1145','1306','1440','1396','1446','1336']},
			 	        {dim: 2, name: schema[2].text, type: 'category', data: ['10.64.105.7','10.64.105.25','10.64.105.128','10.64.105.226','10.64.105.187','10.64.105.135','10.64.105.245','10.64.105.65','10.64.105.177','10.64.105.222','10.64.105.119','10.64.105.112','10.64.105.116','10.64.106.35','10.64.105.129','10.64.105.212','10.64.105.70','10.64.105.201','10.64.106.25','10.64.105.124','10.64.105.109','10.64.105.190','10.64.105.31','10.64.105.134','10.64.105.158','10.64.106.28','10.64.106.36','10.64.106.39','10.64.105.13','10.64.106.46','10.64.105.39','10.64.105.236','10.64.105.76','10.64.105.188','10.64.105.30','10.64.105.67','10.64.105.113','10.64.105.17','10.64.105.68','10.64.105.78','10.64.105.77','10.64.105.145','10.64.106.24','10.64.105.59','10.64.105.121','10.64.106.48','10.64.106.31','10.64.105.150','10.64.106.18','10.64.105.93','10.64.105.192','10.64.105.48','10.64.105.82','10.64.105.75','10.64.105.58','10.64.105.140','10.64.105.107','10.64.105.149','10.64.105.16','10.64.105.234','10.64.105.214','10.64.105.159']},
			 	        {dim: 3, name: schema[3].text, type: 'category', data: ['10.5.71.60','10.50.50.26','10.50.50.28','10.50.50.29','10.50.50.30','10.50.50.31','10.50.50.33','10.50.50.34','10.50.50.35','10.50.50.36','10.50.50.37','10.50.50.38','10.50.50.39','10.50.50.40','10.50.50.41','10.50.50.42','10.50.50.43','10.50.50.44','10.50.50.45','10.50.50.46','10.50.50.47','10.50.50.48','10.50.50.49','10.63.120.70','10.7.133.15','10.7.133.16','10.7.133.18','10.7.133.19','10.7.133.20','10.7.133.21','10.7.133.22']},
			 	        {dim: 4, name: schema[4].text, type: 'category', data: ['ftp','mongodb','mysql','postgresql','sftp','ssh','tds']},
			 	        {dim: 5, name: schema[5].text,
			 	        type: 'category', data: ['文件传输','mongodb数据库','mysql数据库','postgresql数据库','安全文件传输','远程登陆','sqlserver数据库']}
			 	    ],
			 	    parallel: {
			 	        left: '3%',
			 	        right: '5%',
			 	        top:'5%',
			 	       	bottom: '5%',
			 	        parallelAxisDefault: {
			 	            type: 'value',
			 	            name: 'AQI指数',
			 	            nameLocation: 'end',
			 	            nameGap: 20,
			 	            nameTextStyle: {
			 	                color: '#fff',
			 	                fontSize: 12
			 	            },
			 	            axisLine: {
			 	                lineStyle: {
			 	                    color: '#aaa'
			 	                }
			 	            },
			 	            axisTick: {
			 	                lineStyle: {
			 	                    color: '#777'
			 	                }
			 	            },
			 	            splitLine: {
			 	                show: false
			 	            },
			 	            axisLabel: {
			 	                textStyle: {
			 	                    color: '#fff'
			 	                }
			 	            }
			 	        }
			 	    },
			 	    series: [
			 	       {
			 	            name: '研发二组',
			 	            type: 'parallel',
			 	            lineStyle: {
			 	            	color:"#218D88",
			 	            	 width: 0.5,
						 	     opacity: 0.5
			 	            },
			 	            data: data.dataYF2
			 	        }
			 	    ]
			 	});
 		});
 		//**********************************************2结束************************************************
 		
 		//**********************************************3开始********************************************
 		var parallel3charts=echarts.init(document.getElementById('parallel3'));
 		$.get('${pageContext.request.contextPath}/static/parallelData.json', function (data) {
			 	var schema = [
			 	    {name: 'date', index: 0, text: '小组'},
			 	    {name: 'AQIindex', index: 1, text: '人员id'},
			 	    {name: 'PM25', index: 2, text: '登陆ip'},
			 	    {name: 'CO', index: 3, text: ' 接收ip'},
			 	    {name: 'SO2', index: 4, text: '协议'},
			 	    {name: '等级', index: 5, text: '协议类型'}
			 	];
			
			 	var lineStyle = {
			 	    normal: {
			 	        width: 1,
			 	        opacity: 0.5
			 	    }
			 	};
			
			 	parallel3charts.setOption(paralleloption = {
			 	    parallelAxis: [
			 	        {dim: 0, name: schema[0].text, type: 'category', data: ['研发三组']},
			 	        {dim: 1, name: schema[1].text, type: 'category', data: ['1007','1087','1151','1220','1286','1141','1494','1373','1115','1233','1423','1471','1243','1491','1464','1169','1408','1183','1425','1357','1459','1455','1230','1167','1182','1354','1265','1129','1252','1223','1404','1200','1172','1132','1490','1246','1466','1475','1314','1397','1436','1480','1257','1345','1477','1192','1282','1403','1303','1210','1340','1140','1484','1199','1348','1391','1278','1197','1486','1092','1270','1344','1112','1308','1301','1125','1307','1398','1113','1224','1281','1275','1406','1323','1102','1299','1134','1326','1106','1416','1205','1195','1221','1495','1393','1429','1351','1417']},
			 	        {dim: 2, name: schema[2].text, type: 'category', data: ['10.64.105.171','10.64.105.151','10.64.105.73','10.64.105.36','10.64.105.72','10.64.106.19','10.64.105.193','10.64.105.87','10.64.105.238','10.64.105.182','10.64.105.114','10.64.105.221','10.64.105.147','10.64.105.213','10.64.105.6','10.64.105.199','10.64.105.85','10.64.105.165','10.64.105.184','10.64.105.103','10.64.106.20','10.64.105.229','10.64.105.197','10.64.105.164','10.64.105.80','10.64.105.92','10.64.105.170','10.64.105.155','10.64.105.250','10.64.105.18','10.64.105.123','10.64.105.230','10.64.105.217','10.64.105.133','10.64.105.176','10.64.105.227','10.64.106.51','10.64.105.240','10.64.105.45','10.64.105.160','10.64.105.84','10.64.105.46','10.64.105.54','10.64.105.100','10.64.105.41','10.64.105.34','10.64.105.52','10.64.105.169','10.64.105.157','10.64.106.34','10.64.105.28','10.64.105.242','10.64.106.45','10.64.105.216','10.64.105.163','10.64.105.42','10.64.105.131','10.64.105.104','10.64.105.74','10.64.105.195','10.64.105.110','10.64.105.249','10.64.105.21','10.64.105.153','10.64.105.126','10.64.105.233','10.64.105.9','10.64.105.211','10.64.105.142','10.64.105.137','10.64.105.44','10.64.106.17','10.64.105.148','10.64.105.101','10.64.105.120','10.64.105.200','10.64.105.209','10.64.105.208','10.64.105.62','10.64.105.251','10.64.105.27','10.64.105.99','10.64.105.127','10.64.105.210','10.64.106.47','10.64.105.189','10.64.105.161','10.64.105.203']},
			 	        {dim: 3, name: schema[3].text, type: 'category', data: ['10.5.71.60','10.50.50.26','10.50.50.28','10.50.50.29','10.50.50.30','10.50.50.31','10.50.50.33','10.50.50.34','10.50.50.35','10.50.50.36','10.50.50.37','10.50.50.38','10.50.50.39','10.50.50.40','10.50.50.41','10.50.50.42','10.50.50.43','10.50.50.44','10.50.50.45','10.50.50.46','10.50.50.47','10.50.50.48','10.50.50.49','10.63.120.70','10.7.133.15','10.7.133.16','10.7.133.18','10.7.133.19','10.7.133.20','10.7.133.21','10.7.133.22']},
			 	        {dim: 4, name: schema[4].text, type: 'category', data: ['ftp','mongodb','mysql','postgresql','sftp','ssh','tds']},
			 	        {dim: 5, name: schema[5].text,
			 	        type: 'category', data: ['文件传输','mongodb数据库','mysql数据库','postgresql数据库','安全文件传输','远程登陆','sqlserver数据库']}
			 	    ],
			 	    parallel: {
			 	        left: '3%',
			 	        right: '5%',
			 	        top:'5%',
			 	       	bottom: '5%',
			 	        parallelAxisDefault: {
			 	            type: 'value',
			 	            name: 'AQI指数',
			 	            nameLocation: 'end',
			 	            nameGap: 20,
			 	            nameTextStyle: {
			 	                color: '#fff',
			 	                fontSize: 12
			 	            },
			 	            axisLine: {
			 	                lineStyle: {
			 	                    color: '#aaa'
			 	                }
			 	            },
			 	            axisTick: {
			 	                lineStyle: {
			 	                    color: '#777'
			 	                }
			 	            },
			 	            splitLine: {
			 	                show: false
			 	            },
			 	            axisLabel: {
			 	                textStyle: {
			 	                    color: '#fff'
			 	                }
			 	            }
			 	        }
			 	    },
			 	    series: [
			 	        {
			 	            name: '研发三组',
			 	            type: 'parallel',
			 	            lineStyle: {
			 	            	color:"#218D88",
			 	            	 width: 0.5,
						 	     opacity: 0.5
			 	            },
			 	            data: data.dataYF3
			 	        } 
			 	    ]
			 	});
 		});
 		//**********************************************3结束********************************************
 		//-------------------------各小组交互服务器图-------------------------------------
 		var graphcharts=echarts.init(document.getElementById('graph'));
 		var graphoption = {
 			    title: {
 			        text: '研发部各小组服务器使用情况',
 			        x:'center',
 			       	textStyle: {
			            fontSize: 23,
			            color:'#FFFFFF'
			        }
 			    },
 			    tooltip: {
 			        trigger: 'item',
 			        backgroundColor : 'rgba(0,0,250,0.2)'
 			    },
 			    legend: {
 			        type: 'scroll',
 			        bottom: 60,
 			       	pageIconColor:'#FFF',
 			        pageTextStyle:{
 			        	color:'#FFF'
 			        },
 			        textStyle:{
 			        	color:'#fff'
 			        },
 			        selected:{
 			        	'10.50.50.26':false,
 			        	'10.50.50.28':false,
 			        	'10.50.50.29':false
 			        },
 			        data: ['10.5.71.60','10.50.50.26','10.50.50.28','10.50.50.29','10.50.50.30','10.50.50.31','10.50.50.33','10.50.50.34','10.50.50.35','10.50.50.36','10.50.50.37','10.50.50.38','10.50.50.39','10.50.50.40','10.50.50.41','10.50.50.42','10.50.50.43','10.50.50.44','10.50.50.45','10.50.50.46','10.50.50.47','10.50.50.48','10.50.50.49','10.63.120.70','10.7.133.15','10.7.133.16','10.7.133.18','10.7.133.19','10.7.133.20','10.7.133.21','10.7.133.22']
 			    },
 			    visualMap: {
 			        top: 'middle',
 			        right: 10,
 			        color: ['red', 'yellow'],
 			        calculable: true
 			    }, 
 			    radar: {
 			       shape:'circle',
 			       radius:'70%',
 			       indicator : [
 			           { text: '研发一组', max: 100},
 			           { text: '研发二组', max: 60},
 			           { text: '研发三组', max: 80}
 			        ]
 			    },
 			    series : [
 			        {
		                name:'服务器',
		                type: 'radar',
		                symbol: 'none',
		                lineStyle: {
		                    width: 1
		                },
		                emphasis: {
		                    areaStyle: {
		                        color: 'rgba(0,250,0,0.3)'
		                    }
		                },
		                data:[
		                      {name: '10.5.71.60',value:[0,3,1]},
		                      {name: '10.50.50.26',value:[106,62,88]},
		                      {name: '10.50.50.28',value:[106,62,88]},
		                      {name: '10.50.50.29',value:[106,62,88]},
		                      {name: '10.50.50.30',value:[0,9,0]},
		                      {name: '10.50.50.31',value:[51,17,0]},
		                      {name: '10.50.50.33',value:[43,15,16]},
		                      {name: '10.50.50.34',value:[54,0,0]},
		                      {name: '10.50.50.35',value:[0,23,0]},
		                      {name: '10.50.50.36',value:[14,23,0]},
		                      {name: '10.50.50.37',value:[11,28,47]},
		                      {name: '10.50.50.38',value:[27,20,15]},
		                      {name: '10.50.50.39',value:[18,0,0]},
		                      {name: '10.50.50.40',value:[27,25,36]},
		                      {name: '10.50.50.41',value:[39,26,0]},
		                      {name: '10.50.50.42',value:[18,0,0]},
		                      {name: '10.50.50.43',value:[39,33,18]},
		                      {name: '10.50.50.44',value:[51,26,0]},
		                      {name: '10.50.50.45',value:[0,6,0]},
		                      {name: '10.50.50.46',value:[15,29,21]},
		                      {name: '10.50.50.47',value:[41,0,0]},
		                      {name: '10.50.50.48',value:[41,8,18]},
		                      {name: '10.50.50.49',value:[52,0,30]},
		                      {name: '10.63.120.70',value:[5,0,0]},
		                      {name: '10.7.133.15',value:[0,14,40]},
		                      {name: '10.7.133.16',value:[10,35,40]},
		                      {name: '10.7.133.18',value:[0,0,32]},
		                      {name: '10.7.133.19',value:[17,0,16]},
		                      {name: '10.7.133.20',value:[55,0,26]},
		                      {name: '10.7.133.21',value:[0,17,0]},
		                      {name: '10.7.133.22',value:[0,12,0]}
		                     ]
		            }
 			    ]
 			};
 		graphcharts.setOption(graphoption);
 		//-------------------------研发部词云图-------------------------------------
 		var worldCloudcharts=echarts.init(document.getElementById('worldCloud'));
 		var worldCloudoption = {
 			    title: {
 			        text: '研发部邮件主题分析',
 			        x: 'center',
 			        textStyle: {
 			            fontSize: 23,
 			            color:'#FFFFFF'
 			        }

 			    },
 			    tooltip: {
 			        show: true
 			    },
 			    series: [{
 			        name: '研发部邮件主题分析',
 			        type: 'wordCloud',
 			        sizeRange: [6, 66],
 			        rotationRange: [-45, 90],
 			        textPadding: 0,
 			        autoSize: {
 			            enable: true,
 			            minSize: 6
 			        },
 			        textStyle: {
 			            normal: {
 			                color: function() {
 			                    return 'rgb(' + [
 			                        Math.round(Math.random() * 160),
 			                        Math.round(Math.random() * 160),
 			                        Math.round(Math.random() * 160)
 			                    ].join(',') + ')';
 			                }
 			            },
 			            emphasis: {
 			                shadowBlur: 10,
 			                shadowColor: '#333'
 			            }
 			        },
 			        data: []
 			    }]
 			};

 			var JosnList = [];

 			JosnList.push({
 			    name: "Re:报名参加",
 			    value: "45"
 			}, {
 			    name: "Reply：辞职请求审核：批准。",
 			    value: "6"
 			}, {
 			    name: "api汇总",
 			    value: "169"
 			}, {
 			    name: "【辞职信】",
 			    value: "3"
 			}, {
 			    name: "传输设置",
 			    value: "197"
 			}, {
 			    name: "例会",
 			    value: "28"
 			}, {
 			    name: "例会会议纪要",
 			    value: "135"
 			}, {
 			    name: "关于平台的一些介绍",
 			    value: "62"
 			}, {
 			    name: "分析平台配置",
 			    value: "175"
 			}, {
 			    name: "初验文档",
 			    value: "168"
 			}, {
 			    name: "前后端接口",
 			    value: "161"
 			}, {
 			    name: "地图配置",
 			    value: "171"
 			}, {
 			    name: "实施方案",
 			    value: "168"
 			}, {
 			    name: "工作汇报",
 			    value: "8"
 			}, {
 			    name: "平台介绍",
 			    value: "113"
 			}, {
 			    name: "总结",
 			    value: "302"
 			}, {
 			    name: "技术分享及探讨",
 			    value: "55"
 			}, {
 			    name: "技术分享安排",
 			    value: "122"
 			}, {
 			    name: "搜索详细设计",
 			    value: "156"
 			}, {
 			    name: "月报总结",
 			    value: "23"
 			}, {
 			    name: "概要设计",
 			    value: "166"
 			}, {
 			    name: "测试脚本",
 			    value: "150"
 			}, {
 			    name: "特殊字段说明",
 			    value: "169"
 			}, {
 			    name: "用户手册",
 			    value: "164"
 			}, {
 			    name: "系统配置子系统",
 			    value: "160"
 			});
 			worldCloudoption.series[0].data = JosnList;

 		worldCloudcharts.setOption(worldCloudoption);
 	</script>
  </body>
</html>

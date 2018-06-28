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
	<script src="${pageContext.request.contextPath}/static/common.js" ></script>
	<script src="${pageContext.request.contextPath}/static/jquery-1.11.3.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/echarts.min.js" ></script>
	<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js" ></script>
  </head>
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../../commons/top.jsp"></jsp:include>
 	<div class="panel panel-default" style="height: 900px;">
	 	<div class="panel-body" style="width: auto;height: 600px;">
		 	<div  id="graph" style="width: 60%;height: 600px;float: left;"></div>
		 	<div  id="tree" style="width: 40%;height: 600px;float: left;"></div>
	 	</div>
	 	<div class="panel-body" style="width: auto;height: 300px;">
		 	<div id="table"style="width: 66%;height: 300px;float: left;"></div>
 			<div id="bar"style="width: 33%;height: 300px;float: left;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
	 	//初始化echarts
		var mycharts=echarts.init(document.getElementById('graph'));
		var treemycharts=echarts.init(document.getElementById('tree'));
		var tablecharts=echarts.init(document.getElementById('table'));
		var barcharts=echarts.init(document.getElementById('bar'));
	 	/**************************离散图*******************************/
		
		/**************************树tree图*******************************/
		
		/**************************下载实时折线图*******************************/
		var tableoption = {
				color:["red","yellow"],
				title : {
			        text: '公司网络流量上传下载实时图',
			        subtext: '数据来自hightech公司',
			        textStyle:{color:'#ffffff',fontWeight:'bold'},
			        x: 'center',
			        align: 'right'
			    },
			    grid: {
			        bottom: 80
			    },
			    tooltip : {
			        trigger: 'axis',
			        axisPointer: {
			            type: 'cross',
			            animation: false,
			            label: {
			                backgroundColor: '#505765'
			            }
			        }
			    },
			    legend: {
			        data:['上传','下载'],
			        textStyle:{color:'#ffffff',fontWeight:'bold'},
			        x: 'left'
			    },
			    dataZoom: [
			        {
			            show: true,
			            realtime: true,
			            start: 65,
			            end: 85
			        },
			        {
			            type: 'inside',
			            realtime: true,
			            start: 65,
			            end: 85
			        }
			    ],
			    xAxis : [
			        {
			            type : 'category',
			            boundaryGap : false,
			            axisLine: {onZero: false},
			            axisLine: {onZero: true,
	   		            	lineStyle:{
	  		            		color:'#FFFFFF'
	  		            	}},
			            data : ['2017-11-01 02','2017-11-01 07','2017-11-01 08','2017-11-01 09','2017-11-01 10','2017-11-01 11','2017-11-01 12',
			 	                '2017-11-01 13','2017-11-01 14','2017-11-01 15','2017-11-01 16','2017-11-01 17','2017-11-01 18','2017-11-01 19',
			 	                '2017-11-01 20','2017-11-01 21','2017-11-01 22','2017-11-02 02','2017-11-02 03','2017-11-02 04','2017-11-02 07',
			 	                '2017-11-02 08','2017-11-02 09','2017-11-02 10','2017-11-02 11','2017-11-02 12','2017-11-02 13','2017-11-02 14',
			 	                '2017-11-02 15','2017-11-02 16','2017-11-02 17','2017-11-02 18','2017-11-02 19','2017-11-02 20','2017-11-02 21',
			 	                '2017-11-02 22','2017-11-03 02','2017-11-03 03','2017-11-03 04','2017-11-03 07','2017-11-03 08','2017-11-03 09',
			 	                '2017-11-03 10','2017-11-03 11','2017-11-03 12','2017-11-03 13','2017-11-03 14','2017-11-03 15','2017-11-03 16',
			 	                '2017-11-03 17','2017-11-03 18','2017-11-03 19','2017-11-03 20','2017-11-03 21','2017-11-03 22','2017-11-04 03',
			 	                '2017-11-04 04','2017-11-04 08','2017-11-04 09','2017-11-04 10','2017-11-04 11','2017-11-04 12','2017-11-04 13',
			 	                '2017-11-04 14','2017-11-04 15','2017-11-04 16','2017-11-04 17','2017-11-04 18','2017-11-04 19','2017-11-04 20',
			 	                '2017-11-04 21','2017-11-05 02','2017-11-05 08','2017-11-05 09','2017-11-05 10','2017-11-05 11','2017-11-05 12',
			 	                '2017-11-05 13','2017-11-05 14','2017-11-05 15','2017-11-05 16','2017-11-05 17','2017-11-05 18','2017-11-05 19',
			 	                '2017-11-05 20','2017-11-05 21','2017-11-06 02','2017-11-06 07','2017-11-06 08','2017-11-06 09','2017-11-06 10',
			 	                '2017-11-06 11','2017-11-06 12','2017-11-06 13','2017-11-06 14','2017-11-06 15','2017-11-06 16','2017-11-06 17',
			 	                '2017-11-06 18','2017-11-06 19','2017-11-06 20','2017-11-06 21','2017-11-06 22','2017-11-07 02','2017-11-07 03',
			 	                '2017-11-07 04','2017-11-07 07','2017-11-07 08','2017-11-07 09','2017-11-07 10','2017-11-07 11','2017-11-07 12',
			 	                '2017-11-07 13','2017-11-07 14','2017-11-07 15','2017-11-07 16','2017-11-07 17','2017-11-07 18','2017-11-07 19',
			 	                '2017-11-07 20','2017-11-07 21','2017-11-07 22','2017-11-08 02','2017-11-08 03','2017-11-08 04','2017-11-08 07',
			 	                '2017-11-08 08','2017-11-08 09','2017-11-08 10','2017-11-08 11','2017-11-08 12','2017-11-08 13','2017-11-08 14',
			 	                '2017-11-08 15','2017-11-08 16','2017-11-08 17','2017-11-08 18','2017-11-08 19','2017-11-08 20','2017-11-08 21',
			 	                '2017-11-08 22','2017-11-09 02','2017-11-09 03','2017-11-09 04','2017-11-09 07','2017-11-09 08','2017-11-09 09',
			 	                '2017-11-09 10','2017-11-09 11','2017-11-09 12','2017-11-09 13','2017-11-09 14','2017-11-09 15','2017-11-09 16',
			 	                '2017-11-09 17','2017-11-09 18','2017-11-09 19','2017-11-09 20','2017-11-09 21','2017-11-09 22','2017-11-09 23',
			 	                '2017-11-10 02','2017-11-10 03','2017-11-10 04','2017-11-10 07','2017-11-10 08','2017-11-10 09','2017-11-10 10',
			 	                '2017-11-10 11','2017-11-10 12','2017-11-10 13','2017-11-10 14','2017-11-10 15','2017-11-10 16','2017-11-10 17',
			 	                '2017-11-10 18','2017-11-10 19','2017-11-10 20','2017-11-10 21','2017-11-10 22','2017-11-10 23','2017-11-11 03',
			 	                '2017-11-11 04','2017-11-11 07','2017-11-11 08','2017-11-11 09','2017-11-11 10','2017-11-11 11','2017-11-11 12',
			 	                '2017-11-11 13','2017-11-11 14','2017-11-11 15','2017-11-11 16','2017-11-11 17','2017-11-11 18','2017-11-11 19',
			 	                '2017-11-11 20','2017-11-11 21','2017-11-12 02','2017-11-12 09','2017-11-12 10','2017-11-12 11','2017-11-12 12',
			 	                '2017-11-12 13','2017-11-12 14','2017-11-12 15','2017-11-12 16','2017-11-12 17','2017-11-12 18','2017-11-12 19',
			 	                '2017-11-12 20','2017-11-12 21','2017-11-13 02','2017-11-13 03','2017-11-13 07','2017-11-13 08','2017-11-13 09',
			 	                '2017-11-13 10','2017-11-13 11','2017-11-13 12','2017-11-13 13','2017-11-13 14','2017-11-13 15','2017-11-13 16',
			 	                '2017-11-13 17','2017-11-13 18','2017-11-13 19','2017-11-13 20','2017-11-13 21','2017-11-13 22','2017-11-14 02',
			 	                '2017-11-14 03','2017-11-14 04','2017-11-14 07','2017-11-14 08','2017-11-14 09','2017-11-14 10','2017-11-14 11',
			 	                '2017-11-14 12','2017-11-14 13','2017-11-14 14','2017-11-14 15','2017-11-14 16','2017-11-14 17','2017-11-14 18',
			 	                '2017-11-14 19','2017-11-14 20','2017-11-14 21','2017-11-14 22','2017-11-14 23','2017-11-15 02','2017-11-15 03',
			 	                '2017-11-15 04','2017-11-15 07','2017-11-15 08','2017-11-15 09','2017-11-15 10','2017-11-15 11','2017-11-15 12',
			 	                '2017-11-15 13','2017-11-15 14','2017-11-15 15','2017-11-15 16','2017-11-15 17','2017-11-15 18','2017-11-15 19',
			 	                '2017-11-15 20','2017-11-15 21','2017-11-15 22','2017-11-16 02','2017-11-16 03','2017-11-16 04','2017-11-16 07',
			 	                '2017-11-16 08','2017-11-16 09','2017-11-16 10','2017-11-16 11','2017-11-16 12','2017-11-16 13','2017-11-16 14',
			 	                '2017-11-16 15','2017-11-16 16','2017-11-16 17','2017-11-16 18','2017-11-16 19','2017-11-16 20','2017-11-16 21',
			 	                '2017-11-16 22','2017-11-16 23','2017-11-17 02','2017-11-17 03','2017-11-17 04','2017-11-17 07','2017-11-17 08',
			 	                '2017-11-17 09','2017-11-17 10','2017-11-17 11','2017-11-17 12','2017-11-17 13','2017-11-17 14','2017-11-17 15',
			 	                '2017-11-17 16','2017-11-17 17','2017-11-17 18','2017-11-17 19','2017-11-17 20','2017-11-17 21','2017-11-17 22',
			 	                '2017-11-17 23','2017-11-18 03','2017-11-18 04','2017-11-18 07','2017-11-18 08','2017-11-18 09','2017-11-18 10',
			 	                '2017-11-18 11','2017-11-18 12','2017-11-18 13','2017-11-18 14','2017-11-18 15','2017-11-18 16','2017-11-18 17',
			 	                '2017-11-18 18','2017-11-18 19','2017-11-18 20','2017-11-18 21','2017-11-19 02','2017-11-19 03','2017-11-19 04',
			 	                '2017-11-19 07','2017-11-19 08','2017-11-19 09','2017-11-19 10','2017-11-19 11','2017-11-19 12','2017-11-19 13',
			 	                '2017-11-19 14','2017-11-19 15','2017-11-19 16','2017-11-19 17','2017-11-19 18','2017-11-19 19','2017-11-19 20',
			 	                '2017-11-19 21','2017-11-20 02','2017-11-20 04','2017-11-20 07','2017-11-20 08','2017-11-20 09','2017-11-20 10',
			 	                '2017-11-20 11','2017-11-20 12','2017-11-20 13','2017-11-20 14','2017-11-20 15','2017-11-20 16','2017-11-20 17',
			 	                '2017-11-20 18','2017-11-20 19','2017-11-20 20','2017-11-20 21','2017-11-20 22','2017-11-20 23','2017-11-21 02',
			 	                '2017-11-21 03','2017-11-21 04','2017-11-21 07','2017-11-21 08','2017-11-21 09','2017-11-21 10','2017-11-21 11',
			 	                '2017-11-21 12','2017-11-21 13','2017-11-21 14','2017-11-21 15','2017-11-21 16','2017-11-21 17','2017-11-21 18',
			 	                '2017-11-21 19','2017-11-21 20','2017-11-21 21','2017-11-21 22','2017-11-22 02','2017-11-22 03','2017-11-22 04',
			 	                '2017-11-22 07','2017-11-22 08','2017-11-22 09','2017-11-22 10','2017-11-22 11','2017-11-22 12','2017-11-22 13',
			 	                '2017-11-22 14','2017-11-22 15','2017-11-22 16','2017-11-22 17','2017-11-22 18','2017-11-22 19','2017-11-22 20',
			 	                '2017-11-22 21','2017-11-22 22','2017-11-22 23','2017-11-23 02','2017-11-23 03','2017-11-23 04','2017-11-23 07','2017-11-23 08','2017-11-23 09','2017-11-23 10','2017-11-23 11','2017-11-23 12','2017-11-23 13','2017-11-23 14','2017-11-23 15','2017-11-23 16','2017-11-23 17','2017-11-23 18','2017-11-23 19','2017-11-23 20','2017-11-23 21','2017-11-23 22','2017-11-24 02','2017-11-24 03','2017-11-24 04','2017-11-24 07','2017-11-24 08','2017-11-24 09','2017-11-24 10','2017-11-24 11','2017-11-24 12','2017-11-24 13','2017-11-24 14','2017-11-24 15','2017-11-24 16','2017-11-24 17','2017-11-24 18','2017-11-24 19','2017-11-24 20','2017-11-24 21','2017-11-24 22','2017-11-25 03','2017-11-25 04','2017-11-25 07','2017-11-25 08','2017-11-25 09','2017-11-25 10','2017-11-25 11','2017-11-25 12','2017-11-25 13','2017-11-25 14','2017-11-25 15','2017-11-25 16','2017-11-25 17','2017-11-25 18','2017-11-25 19','2017-11-25 20','2017-11-25 21','2017-11-26 02','2017-11-26 07','2017-11-26 08','2017-11-26 09','2017-11-26 10','2017-11-26 11','2017-11-26 12','2017-11-26 13','2017-11-26 14','2017-11-26 15','2017-11-26 16','2017-11-26 17','2017-11-26 18','2017-11-26 19','2017-11-26 20','2017-11-26 21','2017-11-27 02','2017-11-27 07','2017-11-27 08','2017-11-27 09','2017-11-27 10','2017-11-27 11','2017-11-27 12','2017-11-27 13','2017-11-27 14','2017-11-27 15','2017-11-27 16','2017-11-27 17','2017-11-27 18','2017-11-27 19','2017-11-27 20','2017-11-27 21','2017-11-27 22','2017-11-28 02','2017-11-28 03','2017-11-28 04','2017-11-28 07','2017-11-28 08','2017-11-28 09','2017-11-28 10','2017-11-28 11','2017-11-28 12','2017-11-28 13','2017-11-28 14','2017-11-28 15','2017-11-28 16','2017-11-28 17','2017-11-28 18','2017-11-28 19','2017-11-28 20','2017-11-28 21','2017-11-28 22','2017-11-29 02','2017-11-29 03','2017-11-29 04','2017-11-29 07','2017-11-29 08','2017-11-29 09','2017-11-29 10','2017-11-29 11','2017-11-29 12','2017-11-29 13','2017-11-29 14','2017-11-29 15','2017-11-29 16','2017-11-29 17','2017-11-29 18','2017-11-29 19','2017-11-29 20','2017-11-29 21','2017-11-29 22','2017-11-30 02','2017-11-30 03','2017-11-30 04','2017-11-30 07','2017-11-30 08','2017-11-30 09','2017-11-30 10','2017-11-30 11','2017-11-30 12','2017-11-30 13','2017-11-30 14','2017-11-30 15','2017-11-30 16','2017-11-30 17','2017-11-30 18','2017-11-30 19','2017-11-30 20','2017-11-30 21','2017-11-30 22'
				 ].map(function (str) {
			                return str.replace(' ', '\n')
			            })
			        }
			    ],
			    yAxis: [
			        {
			            name: '上传(byte)',
			            type: 'value',
			            max:90,
			            axisLine: {onZero: true,
	   		            	lineStyle:{
	  		            		color:'#FFFFFF'
	  		            	}}
			        },
			        {
			            name: '下载(byte)',
			            nameLocation: 'start',
			            type: 'value',
			            max:90,
			            axisLine: {onZero: true,
	   		            	lineStyle:{
	  		            		color:'#FFFFFF'
	  		            	}},
			            inverse: true
			        }
			    ],
			    series: [
			        {
			            name:'上传',
			            type:'line',
			            animation: false,
			            areaStyle: {
			                normal: {}
			            },
			            lineStyle: {
			                normal: {
			                    width: 1
			                }
			            },
			            markArea: {
			                silent: true,
			                data: [[{
			                    xAxis: '2009/9/12\n7:00'
			                }, {
			                    xAxis: '2009/9/22\n7:00'
			                }]]
			            },
			            data:[0.00011138897389173508,1.8535412708297372,18.628375608474016,41.96186463069171,4.684793871827424,71.88622285239398,34.78806276060641,9.654018312692642,42.75652968976647,38.18851580750197,37.72728846780956,36.65133183822036,30.06688134279102,22.13643791899085,6.458277136087418,3.1237383391708136,0.15905244648456573,0.00012438558042049408,0.0000019082799553871155,0.0000016493722796440125,2.021194748580456,17.92996436636895,44.840830388478935,3.3052456630393863,75.90069852303714,34.21410867199302,10.166315122507513,37.96069551538676,42.817566324956715,38.23939829971641,38.959884475916624,28.181455900892615,13.40370992012322,7.9660011427477,3.7850356018170714,0.00047238264232873917,0.00013172999024391174,0.0000016111880540847778,0.0000024167820811271667,2.477575169876218,15.843731732107699,37.902351637370884,3.826835938729346,68.45741377118975,33.424055609852076,6.4210450844839215,32.79800160601735,34.71704055182636,39.505644840188324,39.723475403152406,27.402571345679462,17.89814753551036,8.40526249539107,3.3113368591293693,0.001097491942346096,0.006624248810112476,0.0000015534460544586182,0.3912019142881036,0.17699066549539566,0.00003933347761631012,1.788802145048976,0.2704473650082946,0.0005338173359632492,1.379205166362226,0.2893583057448268,0.34591503161937,0.6902632061392069,0.5969173293560743,0.00018805544823408127,0.000002318061888217926,0.000001914799213409424,0.00015596114099025726,1.0617766855284572,1.6489063678309321,0.09561211429536343,2.88277720939368,0.7393386112526059,0.0018200986087322235,1.6884607896208763,0.9812539108097553,0.8508182829245925,1.0291399555280805,1.9676034757867455,0.11370138172060251,0.1405221363529563,0.000018161721527576447,0.000156475231051445,3.4648013981059194,18.470188544131815,39.847813750617206,4.348320082761347,67.90203257184476,31.62031537014991,9.996353042311966,38.69772252626717,33.1573690995574,40.55843581818044,36.47697355505079,32.2256686585024,20.977534935809672,8.49020170327276,1.3630702532827854,1.714711326174438,0.0001127561554312706,0.0000018347054719924927,0.0000025853514671325684,2.4962029522284865,17.836868497543037,38.79526573885232,4.478840890340507,66.50954473949969,34.73506907746196,7.632384181022644,41.8015628522262,35.64162889495492,39.207413650117815,37.937686142511666,36.07574184052646,18.23020112235099,8.610025824978948,1.624881535768509,0.4658459573984146,0.00014219991862773895,0.000001695007085800171,0.000002098269760608673,2.4589063990861177,19.429244830273092,39.71811490133405,4.542999040335417,72.39480228163302,38.494250394403934,13.131903898902237,37.45331853907555,35.80601068213582,35.096986474469304,39.873045241460204,31.87461711652577,14.315272307954729,3.8586439955979586,2.0259320279583335,0.8019375102594495,0.0001295013353228569,0.0000019026920199394226,0.0000014426186680793762,1.8721699425950646,17.79949406348169,44.35602409671992,3.623061307705939,69.43973225541413,35.3503739181906,7.304973448626697,35.91637315042317,36.16555199120194,39.41809391416609,35.385899665765464,27.581073919311166,19.31627762876451,8.276174454949796,3.4788538310676813,0.8854047488421202,0.11177494283765554,0.0001207944005727768,0.0000017741695046424866,0.0000009350478649139404,3.511361639946699,14.455849453806877,39.93217950500548,4.926412626169622,69.7322987858206,38.62562681362033,8.628169087693095,35.26901070680469,43.13737708516419,40.849439879879355,31.686012538149953,36.211120050400496,19.54997511766851,13.036026986315846,1.7741993162781,1.034360472112894,0.00026652775704860687,0.00576474703848362,0.000002559274435043335,0.27943289186805487,1.5648125894367695,2.8035597018897533,0.0015447577461600304,5.462130391038954,2.2122151097282767,0.691263378597796,3.2832808746024966,2.2016664315015078,4.213354738429189,1.6419210024178028,1.222450701519847,0.6802749345079064,0.5312844915315509,0.00031387899070978165,0.00012973323464393616,1.481491287238896,0.4033363927155733,3.5101508693769574,1.365116760134697,0.49629268888384104,1.8190294336527586,1.319044778123498,0.8801211267709732,0.665214859880507,1.1771816052496433,0.505439612083137,0.09428630582988262,0.7552624521777034,0.00010052509605884552,0.00000014621764421463013,2.226076226681471,17.678588995710015,40.73274336755276,4.313582739792764,71.47828175406903,33.54222745355219,11.189014618285,42.81906799506396,41.55485699046403,34.77644464466721,35.05997130088508,33.64276683796197,18.567676331847906,7.955964860506356,2.063872774131596,0.15897642355412245,0.00015241652727127075,0.0000014901161193847656,0.000000994652509689331,3.5113774994388223,18.712171837687492,42.39116901345551,4.917830944061279,62.63859142921865,38.646046072244644,7.6269081411883235,41.20354732405394,42.90164759289473,37.556265488266945,36.6537024481222,31.840153102762997,21.151268903166056,7.594697073101997,2.632273631170392,0.14977784547954798,0.00001444108784198761,0.0000952407717704773,0.0000015730038285255432,0.0000018058344721794128,3.418262545019388,19.895132104866207,45.19546061567962,2.9248619517311454,65.5538485320285,36.06543152034283,9.579772564582527,41.511788927949965,42.45433230418712,36.29120595753193,40.615868574008346,35.30625146627426,14.374312795698643,8.329078312963247,2.778089636936784,1.0069030355662107,0.00011911056935787201,0.0000012945383787155151,0.0000012526288628578186,3.064307280816138,17.594516299664974,45.30568730272353,2.3731351736932993,67.49483837652951,34.80207544192672,11.126464658416808,36.11827001068741,38.98342433292419,34.6523513821885,39.98531293775886,30.958992360159755,15.488448651507497,9.233115319162607,2.361716901883483,1.1742203533649445,0.0002514263615012169,0.00010607484728097916,0.000002491287887096405,0.000001644715666770935,3.5207229936495423,18.488750065676868,47.25258146971464,3.3888914585113525,71.39362492319196,41.83117184508592,7.512323375791311,40.98571001552045,34.05372289288789,38.7977371904999,35.15175316296518,32.21539552696049,15.399207698181272,6.169687547720969,2.1943725207820535,0.7082474930211902,0.00008280109614133835,0.005831792019307613,0.0000022901222109794617,0.5029799398034811,3.1761354254558682,2.794777858071029,0.0403436403721571,4.7196563659235835,2.596653077751398,0.9627597741782665,2.493707929737866,2.5679934602230787,3.163549404591322,2.9676020750775933,2.481887605972588,0.551431211642921,0.3263219175860286,0.00018923915922641754,0.0001055300235748291,0.0000001471489667892456,0.0000001043081283569336,0.07452499493956566,0.7265568794682622,2.032057523727417,0.09795272164046764,5.178244895301759,1.2013884084299207,0.5257233651354909,0.7619289746508002,2.118467860855162,3.062346361577511,2.688251088373363,0.8605941291898489,0.5897105094045401,0.0010160300880670547,0.00005654245615005493,0.00014977622777223587,0.00000017415732145309448,3.4275425700470805,15.871555976569653,40.062507406808436,3.6906386259943247,73.0793288294226,39.82540048379451,7.661406219936907,35.755442056804895,39.64259564969689,37.09390914533287,35.0665103495121,34.09219579678029,15.375309352762997,7.238956821151078,2.3231598995625973,0.13181846123188734,0.00015612412244081497,0.00014480296522378922,0.000002259388566017151,0.0000020312145352363586,2.8967351727187634,18.367876954376698,39.643029138445854,3.285949921235442,69.87356729153544,39.32835445087403,11.22996620181948,36.43749743048102,42.17211867775768,31.336987708695233,35.45885650347918,30.81391616910696,15.687818679958582,10.045396347530186,2.472850225865841,0.29819941241294146,0.0001598810777068138,0.000002141110599040985,0.0000014668330550193787,2.64517820533365,20.007051050662994,42.40036457963288,4.043103205040097,63.260802128352225,37.36727604083717,10.190313297323883,41.098075908608735,37.80257955938578,32.91756725683808,32.889954081736505,34.560961144044995,18.452566641382873,8.69488383922726,1.9703333918005228,0.084189566783607,0.000000013969838619232178,0.00013983901590108871,0.000001261010766029358,0.0000013867393136024475,1.5927971815690398,17.408412735909224,44.16125338431448,3.4181928420439363,70.64125174470246,39.89513667952269,11.06369397137314,38.06743921712041,36.125030210241675,35.93565492331982,35.6251025442034,34.68149784300476,19.336448413319886,9.343945313245058,2.2012938000261784,0.00023076683282852173,0.0001259148120880127,0.0000016083940863609314,0.0000025043264031410217,2.747644734568894,21.078073135577142,43.26667815912515,4.731551893986762,68.64099356159568,32.417840282432735,8.138328485190868,35.926391990855336,36.90296126436442,39.32203552033752,38.184247110038996,28.680144496262074,13.123000275343657,7.101647652685642,2.7804166730493307,0.02817797940224409,0.006613133475184441,0.000001426786184310913,0.03725962154567242,0.07459435984492302,2.711311531253159,0.17294447030872107,2.859190101735294,1.4448306951671839,0.47159442212432623,1.9921675398945808,1.1159129533916712,1.8514953488484025,1.561048679985106,1.512659901753068,0.24361248593777418,0.9140340276062489,0.00031175650656223297,0.00012736767530441284,0.4191608326509595,0.5774858240038157,1.6498103942722082,0.14483731612563133,2.59018468670547,1.8711800435557961,0.23795849177986383,1.1523615457117558,1.468166632577777,1.8497418323531747,0.4817881667986512,0.7860403042286634,0.0018385937437415123,0.16824472229927778,0.27986168023198843,0.00009784195572137833,1.8907459620386362,17.44580512214452,42.05604032985866,5.999435502104461,69.4529642900452,31.419188354164362,10.335815248079598,41.327332644723356,34.9456094475463,42.58773256652057,37.93092078715563,26.628614156506956,19.122600129805505,9.884197885170579,3.421802405267954,0.5689733745530248,0.00012401025742292404,0.000002154149115085602,0.000002368353307247162,3.6045661717653275,19.513321445323527,44.029822090640664,3.845938707701862,75.14696174114943,40.47815661877394,10.98856326751411,32.92524588201195,37.69092238228768,35.37540855910629,41.921758259646595,32.81725695822388,19.894719813019037,10.371060364879668,3.348265303298831,1.006789824925363,0.0001509031280875206,0.0000012852251529693604,0.0000014873221516609192,2.514839776791632,17.17563806474209,43.27582751773298,2.950473751872778,70.69672171398997,32.85097462683916,7.696527788415551,36.37546708807349,42.601471156813204,33.13803356606513,40.24653452821076,23.037816112861037,15.507379186339676,7.276571218855679,1.5609949445351958,0.15016785357147455,0.00010592769831418991,0.0000020042061805725098,0.000002098269760608673,2.2912698853760958,19.587761083617806,39.36460244189948,4.710771085694432,68.84339032322168,31.12421114370227,8.966266334988177,34.83879566658288,36.4984612101689,33.424509472213686,31.59488599561155,28.797360027208924,20.164511770009995,8.03980730008334,3.263965322636068,1.1277913860976696]
			        },
			        {
			            name:'下载',
			            type:'line',
			            yAxisIndex:1,
			            animation: false,
			            areaStyle: {
			                normal: {}
			            },
			            lineStyle: {
			                normal: {
			                    width: 1
			                }
			            },
			            markArea: {
			                silent: true,
			                data: [[{
			                    xAxis: '2009/9/10\n7:00'
			                }, {
			                    xAxis: '2009/9/20\n7:00'
			                }]]
			            },
			            data: [0.00005736667662858963,1.6114269914105535,14.828782251104712,43.727135334163904,5.5381350396201015,89.09763899166137,42.585097439587116,15.047851549461484,49.25113673321903,50.01676674373448,43.88834377191961,40.81142572965473,36.95592904277146,20.981738205067813,7.077234756201506,4.12436771672219,0.2980639133602381,0.00006158184260129929,0.0000031497329473495483,0.0000028284266591072083,2.2819805638864636,17.706732781603932,42.456531746312976,4.573391128331423,81.42639258410782,44.925447394140065,15.682771006599069,43.23112502414733,43.738336032256484,41.33030101284385,42.59574915189296,32.00207354128361,18.656764446757734,6.274281967431307,4.966684854589403,0.37408404517918825,0.0000628940761089325,0.000002477318048477173,0.000003824010491371155,2.440368021838367,18.144369908608496,44.506958610378206,5.650428564287722,80.68400730378926,47.81848900578916,11.662783621810377,42.91364493779838,42.90081818588078,41.2769876960665,40.79778368957341,34.61534916702658,25.30016104876995,11.170267938636243,3.811981917358935,0.10098072234541178,0.002355208620429039,0.0000026151537895202637,0.25151441991329193,0.2980639133602381,0.0033567482605576515,1.0646770158782601,0.21330795530229807,0.04358462058007717,0.8532758243381977,0.9885771414265037,0.4825535137206316,1.0508146798238158,0.40474608168005943,0.02254173532128334,0.00000010523945093154907,0.00000031478703022003174,0.00007634237408638,0.5588719565421343,1.4137113569304347,0.5229832576587796,3.9547210540622473,0.5870432890951633,0.21266810595989227,1.3150111241266131,1.4289713148027658,1.9376812251284719,2.039748373441398,1.9247537273913622,0.6462976960465312,0.059564041905105114,0.008228723891079426,0.00007409602403640747,2.486943842843175,21.534573094919324,38.79005357250571,7.895285098813474,75.53228275291622,39.51170863956213,13.877704325132072,44.70027220714837,39.047178940847516,48.26125858537853,42.584931899793446,38.45249819383025,22.871006850153208,8.711429785005748,2.189492514356971,0.9737429972738028,0.00005038827657699585,0.000003123655915260315,0.000004363246262073517,2.1237478014081717,17.306302649900317,34.358121988363564,6.8101248778402805,79.18038047757,43.157503593713045,11.719515555538237,44.20645643956959,44.40796445123851,43.14489940367639,44.364342420361936,40.65144496038556,17.532326048240066,11.592279457487166,3.0740799279883504,0.17593360226601362,0.00006501376628875732,0.00000296812504529953,0.000003684312105178833,2.0212189173325896,18.368077606894076,37.984772828407586,6.135038969106972,79.12915103789419,47.01043034903705,15.896226271986961,48.82230048440397,37.78486089408398,42.3700085086748,40.04703011084348,33.417930057272315,18.20114367827773,8.652818217873573,1.568185637705028,0.37441655341535807,0.00006424542516469955,0.0000033406540751457214,0.0000022510066628456116,2.0025303894653916,15.853273758664727,44.48564646206796,7.334058832377195,83.15957958716899,45.233521457761526,12.868128404021263,42.0359241515398,41.142093708738685,43.34833993483335,39.995030514895916,37.23397917114198,21.756640299223363,9.604883691295981,3.645211646333337,0.8466542083770037,0.11261442955583334,0.00006469804793596268,0.0000023301690816879272,0.000001759268343448639,2.8967503057792783,16.21635980065912,40.027548274956644,9.393206265754998,76.51913744490594,43.24915946088731,15.290660944767296,42.10094321332872,46.06789265014231,43.316818316467106,37.28764223959297,39.35126802325249,22.43740021903068,14.026988236233592,2.6108909705653787,1.1047322042286396,0.6657088752835989,0.0020766882225871086,0.000004490837454795837,0.30739819537848234,1.6859063878655434,2.4496883871033788,0.4202624699100852,6.21041998360306,2.231812858954072,0.5713872108608484,2.983338952064514,3.0072894850745797,3.059206558391452,2.2773924618959427,2.5456711361184716,0.6665851036086679,0.7341695241630077,0.019748891703784466,0.00006303936243057251,0.9010742353275418,0.329873263835907,3.457534779794514,1.7088922802358866,0.9446883341297507,1.6395611921325326,2.6451043589040637,1.176198834553361,1.6451160423457623,1.5592084070667624,0.8622538391500711,0.16125568188726902,0.36740853264927864,0.00005193520337343216,0.0000002784654498100281,2.2261270536109805,20.556820075027645,42.841243584640324,5.204126115888357,85.56879066023976,44.19530782010406,14.583422613330185,44.2725427262485,48.12991933617741,40.44999208860099,43.62212062254548,35.33717201463878,18.685285789892077,9.224018107168376,2.186228702776134,0.07933270651847124,0.00007303524762392044,0.0000022780150175094604,0.0000015338882803916931,2.012022635899484,16.663656764663756,44.02099163085222,7.432041652500629,78.03184554446489,45.3201957475394,13.041361381299794,45.533132332377136,48.517896730452776,42.52752029336989,40.4312585927546,39.290204680524766,23.687686312012374,10.566373392939568,2.640977442264557,0.08968673553317785,0.002593986690044403,0.00005703698843717575,0.0000029960647225379944,0.0000031981617212295532,3.409036393277347,20.864141612313688,42.70141389872879,6.262785066850483,81.73712050542235,47.55668936856091,12.674631625413895,47.93185744062066,45.568279271014035,45.030846202746034,42.18961263448,40.8836880447343,21.816325664520264,10.114848829805851,3.8910216856747866,0.8580148424953222,0.000059650279581546783,0.0000017704442143440247,0.0000022174790501594543,2.626652730628848,15.81611693277955,39.47975079435855,6.329807649366558,78.80134378094226,47.3445909768343,14.716151257045567,46.974614122882485,42.56697281263769,41.906069265678525,45.90863312128931,31.58043480385095,22.231073010712862,11.284669717773795,4.028846830129623,2.0141073036938906,0.016133743338286877,0.00005783233791589737,0.000003912486135959625,0.00000279303640127182,2.6731940489262342,19.67173575144261,38.622782167978585,6.549233477562666,85.83150975499302,49.53155711758882,13.68536822590977,44.8930611750111,42.39505517948419,39.79075917135924,42.68600065167993,34.516980569809675,20.827764158137143,7.894927069544792,3.015268457122147,0.2825579550117254,0.012484845705330372,0.002116103656589985,0.000004195608198642731,0.6613214258104563,3.4927934734150767,3.125096277333796,0.3244550433009863,7.004714225418866,3.8124289084225893,2.230644744820893,2.771192262880504,2.513510834425688,4.277442954480648,3.237947271205485,3.108687227591872,0.964658067561686,0.33318853098899126,0.020578160881996155,0.00005917064845561981,0.00000028032809495925903,0.00000011362135410308838,0.000028567388653755188,0.8383225379511714,2.524867821484804,0.4100327780470252,5.039590699598193,3.599895098246634,0.8937229560688138,2.2716799871996045,2.745182503014803,3.1258457954972982,2.209952755831182,1.1903499383479357,0.7252700366079807,0.6742925234138966,0.14327965676784515,0.000056760385632514954,0.00000016298145055770874,2.3192677292972803,17.37133917119354,39.063471919856966,6.5910926796495914,84.61320873629302,45.85078620351851,14.836713469587266,42.93272700160742,42.752549244090915,45.985594276338816,39.77331148739904,36.01007165014744,21.15630856063217,6.572951333597302,2.8358835903927684,0.470036786980927,0.028962107375264168,0.0000681895762681961,0.000003844499588012695,0.0000029141083359718323,3.343831649981439,21.749077023006976,40.012773076072335,6.478354551829398,86.98742327932268,47.4548589233309,16.658371304161847,44.0155111765489,48.30589429102838,37.87622782308608,43.136681113392115,35.47965222410858,21.432331839576364,9.81692261248827,4.899719617329538,0.45568546932190657,0.00006880145519971848,0.000004174187779426575,0.000002905726432800293,2.207487553358078,19.88621429540217,41.85849139466882,6.296253434382379,75.054220225662,50.47349984198809,15.626136948354542,44.123631057329476,47.30994156189263,41.356142519041896,37.20296361576766,40.66134458128363,22.828631755895913,9.552356553263962,3.209713022224605,0.2854191279038787,0.003338792361319065,0.00006912369281053543,0.000001866370439529419,0.000002314336597919464,2.2726599583402276,18.954644872806966,45.901300678029656,5.685361511074007,76.71482900064439,46.24505497422069,14.800594123080373,44.45636504050344,43.85300136078149,41.36160051077604,41.387447754852474,40.144381856545806,22.043072141706944,9.45970178488642,2.8334501879289746,0.16779375169426203,0.000058797188103199005,0.0000022817403078079224,0.000003789551556110382,1.4345344472676516,20.212216824293137,37.949111737310886,7.434938931837678,82.9109570523724,40.23143777158111,13.046413023024797,42.54003593418747,44.48103804793209,44.96130760293454,39.339865929447114,33.94313264079392,15.025575209408998,9.829180974513292,3.3420017333701253,0.832022262737155,0.002153678797185421,0.0000023636966943740845,0.13971728179603815,1.4808992249891162,3.262263554148376,0.6378538096323609,5.1604941906407475,2.5874271783977747,1.352876415476203,1.6880106199532747,1.7581848250702024,4.254757831804454,1.9771104278042912,0.9582177167758346,0.9817166989669204,0.5442456249147654,0.021938391029834747,0.00006631296128034592,1.0058812461793423,0.8010510103777051,2.1713484805077314,0.8429995104670525,3.7774789351969957,2.688942639157176,1.2041312335059047,2.1866781720891595,1.720270269550383,1.9403525656089187,2.1648726826533675,0.7347000995650887,0.7808355046436191,0.8420092891901731,0.5162449916824698,0.00005185510963201523,1.3320256592705846,21.49731025658548,43.568289957009256,8.49707211367786,79.63823425490409,46.675625496543944,13.458941371180117,45.70640663057566,45.64237645547837,41.96413495577872,35.47102884761989,32.807052198797464,20.218926801346242,9.880596563220024,2.5279218666255474,0.0683049438521266,0.00006580352783203125,0.000003994442522525787,0.000004579313099384308,3.7629163339734077,19.532277417369187,38.85247959755361,6.306918825954199,85.4914434030652,43.048682873137295,13.479248931631446,43.46447166800499,44.25151579454541,42.402157849632204,40.998554807156324,36.94510100129992,21.265445315279067,10.743756849318743,4.486065836623311,1.2180247912183404,0.00006599724292755127,0.0000017499551177024841,0.000002530403435230255,1.695318921469152,20.500666053965688,41.06527367513627,4.886669939383864,84.00105267949402,43.03716064803302,14.160000110045075,43.04156804550439,45.674332942813635,39.118073619902134,43.15957345068455,32.43339401111007,19.98000536300242,8.305521237663925,2.7171892877668142,0.5659020934253931,0.00005753710865974426,0.000003416091203689575,0.000003296881914138794,2.011928883381188,19.02010700944811,42.3642678167671,6.410103552043438,86.54272670578212,42.57064062450081,14.343633604235947,39.77743770182133,41.13684146013111,42.73098468594253,40.204884422942996,34.57985414285213,19.065129020251334,9.060837741941214,3.0149340983480215,0.6584457214921713]
			        }
			    ]
		};
		/**************************公司部门人数图*******************************/
		var baroption = {
			title:{
				text:'hightech公司各部门人数',
				subtext: '数据来自heghtech公司',
   				textStyle:{color:'#ffffff',fontWeight:'bold'},
   				x:'right'
			},
		 	tooltip : {
		        trigger: 'axis'
		    },
		    xAxis: {
		        type: 'category',
		        axisLabel:{color:'#ffffff'},
		        data: ['总经理','自动邮箱','人力资源部', '财务部', '研发部']
		    },
		    yAxis: {
		        type: 'value',
		        axisLabel:{color:'#ffffff'},
		    },
		    series: [{
		        data: [1,14,18,24,256],
		        type: 'bar',
		        barWidth:'50'
		    }]
		};
		
		/*************************************结束************************************/
			$.get('${pageContext.request.contextPath}/static/graphToOneColor.json', function (data) {
				var option = {
				        tooltip: {
				            trigger: 'item',
				            triggerOn: 'mousemove'
				        },
				        series: [{
				            type: 'graph',
				            focusNodeAdjacency: 'true',
				            layout: 'force',
				            animation: false,
				            label: {
				                normal: {
				                    position: 'right',
				                    formatter: '{b}'
				                }
				            },
				            draggable: true,
				            data: data.nodes,
				            categories:[],
				            roam: true,
				            force: {
				                edgeLength: 5,
				                repulsion: 2,
				                gravity: 0.2
				            },
				            symbolSize:'5',
				            edges: data.links
				        }]
				    };
				mycharts.setOption(option)
			});
		
		
			$.get('${pageContext.request.contextPath}/static/treeCompany2.json', function (data) {
				treemycharts.setOption(treeoption={
						title:{
							text:'hightech公司员工组织结构图',
							subtext: '数据来自heghtech公司',
		    				textStyle:{color:'#ffffff',fontWeight:'bold'},
		    				x:'right'
						},
				        tooltip: {
				            trigger: 'item',
				            triggerOn: 'mousemove'
				        },
				        series: [
				            {
				                type: 'tree',
				                label:{
				                	color:'#ffffff'
			                	},
				                data: [data],
				                top: '5%',
				                bottom: '4%',
				                left: '1%',
				                right: '1%',
				                layout: 'radial',
				                symbol: 'emptyCircle',
				                symbolSize: 7,
				                initialTreeDepth: 3,
				                animationDurationUpdate: 750
				            }
				        ]
				    });
			});
			tablecharts.setOption(tableoption);
			barcharts.setOption(baroption);
			barcharts.on('click', function (params) {
				showCommonAlert("error","${pageContext.request.contextPath}/depatment/departmentHR");
			});
 	</script>
  </body>
</html>

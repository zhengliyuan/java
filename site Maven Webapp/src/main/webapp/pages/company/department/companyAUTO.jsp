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
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../../commons/top.jsp"></jsp:include>
 	<div class="panel panel-default">
	 	<div class="panel-body" style="width: auto;height: 900px;">
		 	<div  id="tree" style="width: 55%;height: 100%;float: left;"></div>
		 	<div  style="width: 45%;height: 100%;float: left;">
		 		<div id="emailC" style="width: 100%;height: 50%;"></div>
		 		<div id="alertEmail" style="width: 100%;height: 50%"></div>
		 	</div>
	 	</div>	
 	</div>
 	<script type="text/javascript">
		var treemycharts=echarts.init(document.getElementById('tree'));
		var emailCcharts=echarts.init(document.getElementById('emailC'));
		$.get('${pageContext.request.contextPath}/static/companyAuto.json', function (data) {
			treemycharts.setOption(option = {
				        title: {
				            text: '公共邮箱邮件分类',
				            textStyle:{color:'#ffffff',fontWeight:'bold'},
					        x: 'center',
					        align: 'right'
				        },
				        tooltip: {
				            trigger: 'item',
				            triggerOn: 'mousemove'
				        },
				        series: [
				            {
				                type: 'sankey',
				                layout: 'none',
				                data: data.nodes,
				                links: data.links,
				                right:'5%',
				                lable:{
				                	color:'#FFFFFF'
				                },
				                itemStyle: {
				                    normal: {
				                        borderWidth: 1,
				                        borderColor: "yellow"
				                    }
				                },
				                lineStyle: {
				                    normal: {
				                        color: 'source',
				                        curveness: 0.5
				                    }
				                }
				            }
				        ]
				    });
		});
		var emailCoption={
 			    tooltip : {
 			        trigger: 'axis',
 			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
 			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
 			        }
 			    },
 			    grid:{
 			    	right:'3%'
 			    },
 			    legend: {
 			    	type: 'scroll',
 			    	pageIconColor:'#FFF',
 			        pageTextStyle:{
 			        	color:'#FFF'
 			        },
 			        textStyle:{
 			        	color:'#fff'
 			        },
 			        data:['alert@hightech.com','allstaff@hightech.com','finance@hightech.com','fuli@hightech.com','guanhuai@hightech.com','hr@hightech.com','it@hightech.com','kaoqin@hightech.com','meeting@hightech.com','notice@hightech.com','school@hightech.com','smail@hightech.com','work@hightech.com']
 			    },
 			    xAxis : [
					{
					     type : 'category',
						 axisLabel:{color:'#FFFFFF',rotate:45},
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
 			            type : 'value'
 			        }
 			    ],
 			    series : [
 			        {
 			            name:'alert@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
 			        },
 			        {
 			            name:'allstaff@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
 			        },
 			        {
 			            name:'finance@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[3,0,0,0,0,0,2,1,1,1,1,0,0,2,4,1,2,0,0,1,0,2,2,1,0,0,2,3,1,0]
 			        },
 			        {
 			            name:'fuli@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,1,0,0,0,1,1,1,2,0,0,1,0,1,0,0,0,2,1,1,1,0,0,0,0,0,2,0,2]
 			        },
 			        {
 			            name:'guanhuai@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[1,0,0,0,0,1,1,1,1,1,0,0,1,0,0,1,0,0,0,2,1,1,1,0,0,0,0,2,0,3]
 			        },
 			        {
 			            name:'hr@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[1,1,1,0,0,1,0,0,3,0,0,0,0,0,1,2,0,0,0,0,1,0,2,0,0,0,0,1,1,1]
 			        },
 			        {
 			            name:'it@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,1,0,0,1,4,0,1,1,0,0,0,1,1,1,0,0,0,0,2,1,1,0,0,0,1,5,1,1]
 			        },
 			        {
 			            name:'kaoqin@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[1,26,28,26,0,1,31,29,24,17,36,0,1,18,24,21,31,29,0,1,31,28,19,31,16,0,1,36,21,30]
 			        },
 			        {
 			            name:'meeting@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[4,0,1,0,0,1,0,0,1,0,0,0,0,5,0,1,0,0,0,2,0,1,1,0,0,0,0,0,2,2]
 			        },
 			        {
 			            name:'notice@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[1,2,3,7,0,4,0,4,1,2,7,0,1,2,2,0,0,7,0,0,3,1,5,2,7,0,2,3,3,0]
 			        },
 			        {
 			            name:'school@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[3,0,1,0,0,0,1,2,2,2,0,0,1,1,0,2,1,0,0,0,1,0,2,0,0,0,0,0,0,2]
 			        },
 			        {
 			            name:'smail@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[924,973,875,7,112,854,1022,896,777,938,56,77,924,875,882,1001,903,49,154,917,882,665,798,868,161,77,931,1057,791,791]
 			        },
 			        {
 			            name:'work@hightech.com',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[876,847,923,8,71,896,846,935,898,965,38,74,902,985,928,934,878,77,143,856,933,920,937,922,158,136,930,856,896,882]
 			        }
 			    ]
 			};
		emailCcharts.setOption(emailCoption);
		
		
		
		var alertEmailcharts=echarts.init(document.getElementById('alertEmail'));
	 	
	 	var alertEmailoption = {
	 		    title: {
	 		        text: '告警类邮箱发送数量',
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

	 	
	 	alertEmailcharts.setOption(alertEmailoption);
 	</script>
  </body>
</html>

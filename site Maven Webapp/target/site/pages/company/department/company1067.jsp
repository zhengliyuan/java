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
		 	<div style="width: 50%;height: 100%;float: left;">
		 		<div id="bar1" style="width: 100%;height: 50%;"></div>
		 		<div id="bar2" style="width: 100%;height: 50%;"></div>
		 	</div>
		 	<div id="kaoqin" style="width: 50%;height: 100%;float: right;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
	 	//初始化echarts
	var bar1mycharts=echarts.init(document.getElementById('bar1'));
	var data1 = [{
	    name: '公司邮箱',
	    children: [{
	        name: '年度计划',
	        value: 7
	    }, {
	        name: '公司发展计划',
	        value: 3
	    }]
	}, {
	    name: '非公司邮箱',
	    value: 0
	}];
	var bar1option =  {
			title: {
			        text: '1067@hightech.com发送邮件主题',
			        x:'center',
			       	textStyle: {
		            fontSize: 23,
		            color:'#FFFFFF'
	        		}
		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: "{b}: {c}"
		    },
		    legend: {
		        orient: 'vertical',
		        x: 'left',
		        textStyle:{
			        	color:'#fff'
			        },
		        data:['公司邮箱','非公司邮箱']
		    },
		    series: {
		        type: 'sunburst',
		        data: data1,
		        radius: [0, '70%'],
		        label: {
		            rotate: 'radial'
		        }
		    }
		};
	bar1mycharts.setOption(bar1option);
	
	var bar2mycharts=echarts.init(document.getElementById('bar2'));
	var data2 = [{
	    name: '公司邮箱',
	    children: [{
	        name: '工作汇报',
	        value: 27
	    }, {
	        name: '考勤',
	        value: 21
	    }]
	}, {
	    name: '非公司邮箱',
	    children: [{
	        name: '介绍',
	        value: 109
	    }, {
	        name: '合作',
	        value: 111
	    }]
	}];

	var bar2option =  {
			title: {
			        text: '1067@hightech.com收到邮件主题',
			        x:'center',
			       	textStyle: {
		            fontSize: 23,
		            color:'#FFFFFF'
	        		}
		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: "{b}: {c}"
		    },
		    legend: {
		        orient: 'vertical',
		        x: 'left',
		        textStyle:{
			        	color:'#fff'
			        },
		        data:['公司邮箱','非公司邮箱']
		    },
		    series: {
		        type: 'sunburst',
		        data: data2,
		        radius: [0, '70%'],
		        label: {
		            rotate: 'radial'
		        }
		    }
		};
	bar2mycharts.setOption(bar2option);
	

	var kaoqinmycharts=echarts.init(document.getElementById('kaoqin'));
	var hours = ['00:00', '01:00', '02:00', '03:00', '04:00', '05:00', '06:00',
	        '07:00', '08:00', '09:00','10:00','11:00',
	        '12:00', '13:00', '14:00', '15:00', '16:00', '17:00',
	        '18:00', '19:00', '20:00', '21:00', '22:00', '23:00'];
	var days = [
					'11-01','11-02','11-03','11-04','11-05','11-06','11-07','11-08','11-09','11-10',
					'11-11','11-12','11-13','11-14','11-15','11-16','11-17','11-18','11-19','11-20',
					'11-21','11-22','11-23','11-24','11-25','11-26','11-27','11-28','11-29','11-30'
				];
	var data1 = [[12,1,1],
	             [13,3,1],
	             [12,11,1],
	             [13,13,1],
	             [12,14,1],
	             [13,18,1],
	             [12,23,1],
	             [11,24,1],
	             [13,27,1],
	             [13,30,1]
	            ];
	var data2 = [[14,1,1],
	             [17,3,1],
	             [15,11,1],
	             [15,13,1],
	             [18,14,1],
	             [13,18,1],
	             [15,23,1],
	             [15,24,1],
	             [14,27,1],
	             [17,30,1]
	            ];
	var kaoqinoption = {
			color:["red","yellow"],
		    title: {
		        text: '1067员工11月份考勤记录',
		        x:'center',
		       	textStyle: {
	            fontSize: 23,
	            color:'#FFFFFF'
        		}
		    },
		    legend: {
		        data: ['上班','下班'],
		        textStyle:{
			        	color:'#fff'
			        },
		        left: 'left'
		    },
		    grid: {
		        left: 2,
		        bottom: 10,
		        right: 10,
		        containLabel: true
		    },
		    xAxis: {
		        type: 'category',
		        data: hours,
		        boundaryGap: false,
		        axisLabel:{color:'#FFFFFF',rotate:45},
		        splitLine: {
		            show: true,
		            lineStyle: {
		                color: '#FFFFFF',
		                type: 'dashed'
		            }
		        },
		        axisLine: {
		            show: false
		        }
		    },
		    yAxis: {
		        type: 'category',
		        data: days,
		        axisLabel:{color:'#FFFFFF'},
		        axisTick:{
		        	lineStyle:{
		        		color:'#FFFFFF'
		        	}
		        },
		        axisLine: {
		            show: false
		        }
		    },
		    series: [
		             {
				        name: '上班',
				        type: 'scatter',
				        data: data1
				    },
				    {
				        name: '下班',
				        type: 'scatter',
				        data: data2
				    }
		    ]
		};
	kaoqinmycharts.setOption(kaoqinoption);
 	</script>
  </body>
</html>

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
	 	<div id="div1" style="width: 75%;height:100%;float: left;">
	 		<div  id="area1" style="width: 25%;height: 100%;float: left;"></div>
		 	<div  id="area2" style="width: 75%;height: 900px;float: right;"></div>
	 	</div>
		 	<div  id="area3" style="width: 25%;height: 900px;float: right;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
	var area1charts=echarts.init(document.getElementById('area1'));
	var area2charts=echarts.init(document.getElementById('area2'));
	var area3charts=echarts.init(document.getElementById('area3'));
	var area1option={};
	var area2option={
			title: {
 		        text: '财务部门邮件发送分类',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        x:'center'
 		    },
		    tooltip: {
		        trigger: 'item',
		        formatter: "{a} <br/>{b}: {c} ({d}%)"
		    },
		    series: [
		        {
		            name:'部门邮件',
		            type:'pie',
		            selectedMode: 'single',
		            radius: ['20%', '35%'],

		            label: {
		                normal: {
		                    position: 'inner'
		                }
		            },
		            labelLine: {
		                normal: {
		                    show: false
		                }
		            },
		            data:[
		                {value:707, name:'财务部'},
		                {value:264, name:'研发部'},
		                {value:87, name:'人力资源部'}
		            ]
		        },
		        {
		            name:'邮件主题',
		            type:'pie',
		            radius: ['40%', '55%'],
		            label: {
		                normal: {
		                    formatter: '{b} \n{d}% '
		                }
		            },
		            data:[
		                {value:492, name:'财务报账'},
		                {value:112, name:'会计核算'},
		                {value:106, name:'税务'},
		                {value:109, name:'成本控制'},
		                {value:99, name:'财务分析'},
		                {value:115, name:'资金管理'},
		            ]
		        }
		    ]
		};
	var area3option={};
	area1charts.setOption(area1option);
	area2charts.setOption(area2option);
	area3charts.setOption(area3option);
 	</script>
  </body>
</html>

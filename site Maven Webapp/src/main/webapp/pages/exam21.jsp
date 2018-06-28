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
 	<jsp:include page="./commons/top.jsp"></jsp:include>
 	<div class="panel panel-default" style="width: auto;height: 800px;">
	 	<div class="panel-body" style="width: auto;height: 800px;">
		 	<div id="countByHour" style="width: 50%;height: 600px;float: left;"></div>
		 	<div id="countByHour1" style="width: 50%;height: 600px;float: right;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
    	$(function(){
    		var hourEcharts=echarts.init(document.getElementById('countByHour'));
    		var option = {
    	    		title:{
    	    			text:'online time',
    	    			textStyle:{color:'#ffffff',fontWeight:'bold'},
    	    			x:'center'
   	    			},
    	    		tooltip:{
    	    			trigger:'axis'
    	    		},
    	    		legend:{
    	    			x:'right',
    	    			textStyle: {
    			            color: '#fff'
    			        }
    	    		},
    			    xAxis: {
    			        type: 'category',
    			        data: [],
    			        axisLabel:{color:'#ffffff'}
    			    },
    			    yAxis: {
    			        type: 'value',
    			        axisLabel:{color:'#ffffff'}
    			    },
    			    dataZoom:{
    			    	type:'slider'
    			    },
    			    series: [{
    			    	name:'people',
    			        data: [],
    			        type: 'line'
    			    }]
    			};
    		var hourEcharts1=echarts.init(document.getElementById('countByHour1'));
    		var myoption={
    			title:{
    				text:'online time',
    				textStyle:{color:'#ffffff',fontWeight:'bold'},
    				x:'center'
    			},
    			tooltip:{
    				show:true
    			},
    			legend:{
	    			x:'right',
	    			textStyle: {
			            color: '#fff'
			        }
	    		},
    			angleAxis: {
    		        type: 'category',
    		        axisLabel:{color:'#ffffff'},
    		        data: []
    		    },
    		    radiusAxis: {
			    },
			    polar: {
			    },
    		    series: [{
			    	name:'人数',
			        data: [],
			        type: 'bar',
			        coordinateSystem: 'polar',
			        name: 'people'
			    }]
    		};
   	    	hourEcharts.setOption(option);
   	    	hourEcharts1.setOption(myoption);
   	    	hourEcharts.showLoading();
   	    	hourEcharts1.showLoading();
   	    	$.post("${pageContext.request.contextPath}/siteRecord/time",{},function(data){
   	    		hourEcharts.hideLoading();
   	    		hourEcharts1.hideLoading();
   	    		hourEcharts.setOption({
   	    			xAxis: {
    			        data: data.times
    			    },
    			    series: [{
    			        data: data.sums
    			    }]
   	    		});
   	    		hourEcharts1.setOption({
   	    			angleAxis: {
    			        data: data.times
    			    },
    			    series: [{
    			        data: data.sums
    			    }]
   	    		});
   	    	}, 'json')
    	})
 	</script>
  </body>
</html>

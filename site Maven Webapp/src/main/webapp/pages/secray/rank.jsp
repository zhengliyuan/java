<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>风险分析</title>
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
	<script src="${pageContext.request.contextPath}/static/secray/home.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/public_rank.js" ></script>
  </head>
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../commons/secraytop.jsp"></jsp:include>
 	<div class="panel panel-default" style="height: 800px;">
 		<div id="div1" style="width: 100%;height: 50%"></div>
 		<div id="div2" style="width: 100%;height: 50%">
 			<div id="pieRank" style="width: 50%;height: 100%;float: left;"></div>
 			<div id="barRank" style="width: 50%;height: 100%;float: right;"></div>
 		</div>
 	</div>
 	<script type="text/javascript">
 	
 	var pieRankcharts=echarts.init(document.getElementById("pieRank"));
 	var pieRankOption={
 			title: {
	            text: '风险统计',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
 		    tooltip : {
 		        trigger: 'item',
 		        formatter: "{a} <br/>{b} : {c} ({d}%)"
 		    },
 		    legend: {
 		        type: 'scroll',
 		        orient: 'vertical',
 		        pageIconColor:'#FFFFFF',
 		        pageTextStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        right: 10,
 		        top: 20,
 		        bottom: 20,
 		        align:'left',
 		        textStyle:{
 		        	color:'#FFFFFF'
 		        },
 		        data: ["低危","中低危","中危","中高危","高危"]
 		    },
 		    series : [
 		        {
 		            name: '数量',
 		            type: 'pie',
 		            radius : '80%',
 		            center: ['50%', '50%'],
 		            data: [{name:"低危",value:5},
 		                   {name:"中低危",value:3},
 		                   {name:"中危",value:4},
 		                   {name:"中高危",value:3},
 		                   {name:"高危",value:3}],
 		            itemStyle: {
 		                emphasis: {
 		                    shadowBlur: 10,
 		                    shadowOffsetX: 0,
 		                    shadowColor: 'rgba(0, 0, 0, 0.5)'
 		                }
 		            }
 		        }
 		    ]
 		};
 	pieRankcharts.setOption(pieRankOption);
 	var rankdata1=["郑州","商丘","开封","洛阳","南阳","三门峡","济源","安阳","驻马店","周口","信阳","鹤壁","漯河","新乡","许昌","濮阳","焦作","平顶山"];
 	var rankdata2=[90,81,80,72,70,63,58,50,50,48,32,30,30,18,15,10,8,0];
 	topCharFun("barRank",rankdata1,rankdata2,"风险值","区域风险排行");
 	
 	
 	timelineCityLevelChar("div1","123","456");
 	</script>
  </body>
</html>

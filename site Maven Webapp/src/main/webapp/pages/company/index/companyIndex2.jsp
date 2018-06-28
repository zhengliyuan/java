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
  	<%-- <jsp:include page="../commons/top.jsp"></jsp:include> --%>
 	<div class="panel panel-default">
	 	<div class="panel-body" style="width: auto;height: 1000px;">
		 	<div  id="table" style="width: 100%;height: 900px;float: left;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
	 	//初始化echarts
		/* var mycharts=echarts.init(document.getElementById('graph'));
			$.get('${pageContext.request.contextPath}/static/graphToOne.json', function (data) {
				var option = {
				        legend: {
				            data: ['HTMLElement', 'WebGL', 'SVG', 'CSS', 'Other']
				        },
				        tooltip: {
				            trigger: 'item',
				            triggerOn: 'mousemove'
				        },
				        series: [{
				            type: 'graph',
				           // focusNodeAdjacency: 'true',
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
				            categories: [],
				            roam: true,
				            force: {
				                edgeLength: 5,
				                repulsion: 2,
				                gravity: 0.2
				            },
				            symbolSize:'5',
				           // symbol:'emptyCircle',
				            edges: data.links
				        }]
				    };
				mycharts.setOption(option)
			});  */
			//mycharts.setOption(option);
			var treemycharts=echarts.init(document.getElementById('tree'));
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
				                initialTreeDepth: 4,
				                animationDurationUpdate: 750
				            }
				        ]
				    });
			}); 
 	</script>
  </body>
</html>

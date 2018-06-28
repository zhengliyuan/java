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
  <!-- <body background="../static/img/bg.jpg"> -->
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../../commons/top.jsp"></jsp:include>
 	<div class="panel panel-default">
	 	<div class="panel-body" style="width: auto;height: 900px;">
	 		<div class="panel-body" style="width: auto;height: 50%;">
	 			<div id="table1" style="width: 100%;height: 100%;float: left;"></div>
		 		<div id="table2" style="width: 100%;height: 100%;float: right;"></div> 
	 		</div>
		 	<div id="tableHour" style="width: 100%;height: 50%;"></div>
	 	</div>	
 	</div>
 	<script type="text/javascript">
 	var table1charts=echarts.init(document.getElementById('table1'));
 	var table2charts=echarts.init(document.getElementById('table2'));
 		var ips = ['10.5.71.60','10.50.50.26','10.50.50.28','10.50.50.29','10.50.50.30','10.50.50.31','10.50.50.33','10.50.50.34','10.50.50.35','10.50.50.36','10.50.50.37','10.50.50.38','10.50.50.39','10.50.50.40','10.50.50.41','10.50.50.42','10.50.50.43','10.50.50.44','10.50.50.45','10.50.50.46','10.50.50.47','10.50.50.48','10.50.50.49','10.63.120.70','10.7.133.15','10.7.133.16','10.7.133.17','10.7.133.18','10.7.133.19','10.7.133.20','10.7.133.21','10.7.133.22'];
 	    var ports =['21','22','4443','54238','5432','8005'];

 	    var data = [[0,0,0],[1,0,20],[2,0,0],[3,0,0],[4,0,0],[5,0,0],[0,1,2715],[1,1,5523],[2,1,2720],[3,1,2776],[4,1,2684],[5,1,2793],[0,2,1540],[1,2,3146],[2,2,1662],[3,2,1566],[4,2,1601],[5,2,1646],[0,3,1525],[1,3,3166],[2,3,1605],[3,3,1627],[4,3,1500],[5,3,1623],[0,4,12],[1,4,34],[2,4,21],[3,4,14],[4,4,13],[5,4,18],[0,5,141],[1,5,300],[2,5,138],[3,5,144],[4,5,131],[5,5,156],[0,6,155],[1,6,379],[2,6,191],[3,6,198],[4,6,165],[5,6,175],[0,7,92],[1,7,204],[2,7,104],[3,7,94],[4,7,101],[5,7,113],[0,8,59],[1,8,122],[2,8,60],[3,8,70],[4,8,47],[5,8,45],[0,9,67],[1,9,163],[2,9,84],[3,9,81],[4,9,81],[5,9,87],[0,10,274],[1,10,541],[2,10,253],[3,10,293],[4,10,264],[5,10,281],[0,11,163],[1,11,294],[2,11,152],[3,11,147],[4,11,163],[5,11,150],[0,12,40],[1,12,66],[2,12,29],[3,12,43],[4,12,41],[5,12,38],[0,13,254],[1,13,443],[2,13,246],[3,13,224],[4,13,239],[5,13,213],[0,14,136],[1,14,333],[2,14,158],[3,14,140],[4,14,158],[5,14,152],[0,15,26],[1,15,55],[2,15,24],[3,15,31],[4,15,33],[5,15,27],[0,16,218],[1,16,485],[2,16,197],[3,16,214],[4,16,242],[5,16,227],[0,17,167],[1,17,381],[2,17,168],[3,17,160],[4,17,170],[5,17,149],[0,18,11],[1,18,21],[2,18,11],[3,18,17],[4,18,8],[5,18,10],[0,19,172],[1,19,338],[2,19,188],[3,19,176],[4,19,179],[5,19,165],[0,20,78],[1,20,171],[2,20,75],[3,20,85],[4,20,79],[5,20,106],[0,21,130],[1,21,304],[2,21,143],[3,21,163],[4,21,163],[5,21,142],[0,22,203],[1,22,460],[2,22,209],[3,22,240],[4,22,223],[5,22,247],[0,23,0],[1,23,22],[2,23,0],[3,23,0],[4,23,0],[5,23,0],[0,24,226],[1,24,430],[2,24,225],[3,24,220],[4,24,215],[5,24,192],[0,25,251],[1,25,522],[2,25,234],[3,25,238],[4,25,232],[5,25,240],[0,26,0],[1,26,30],[2,26,0],[3,26,0],[4,26,0],[5,26,0],[0,27,140],[1,27,315],[2,27,129],[3,27,145],[4,27,139],[5,27,160],[0,28,115],[1,28,228],[2,28,105],[3,28,105],[4,28,97],[5,28,113],[0,29,178],[1,29,355],[2,29,182],[3,29,168],[4,29,186],[5,29,196],[0,30,27],[1,30,101],[2,30,38],[3,30,32],[4,30,35],[5,30,37],[0,31,20],[1,31,58],[2,31,24],[3,31,20],[4,31,24],[5,31,19]];

 	    data = data.map(function (item) {
 	        return [item[1], item[0], item[2] || '-'];
 	    });

 	    var table1option = {
 	        grid: {
 	            height: '60%',
 	            y: '10%'
 	        },
 	        xAxis: {
 	            type: 'category',
 	            data: ips,
 	            axisLabel:{color:'#FFFFFF',rotate:45},
 	            splitArea: {
 	                show: true
 	            }
 	        },
 	        yAxis: {
 	            type: 'category',
 	            data: ports,
 	           	axisLabel:{color:'#FFFFFF'},
 	            splitArea: {
 	                show: true
 	            }
 	        },
 	        visualMap: {
 	        	min: 0,
 	            max: 5000,
 	            calculable: true,
 	            orient: 'horizontal',
 	            left: 'left',
 	            orient:'vertical',
 	            bottom: '30%'
 	        },
 	        series: [{
 	            type: 'heatmap',
 	            data: data,
 	            label: {
 	                normal: {
 	                    show: true
 	                }
 	            },
 	            itemStyle: {
 	                emphasis: {
 	                    shadowBlur: 10,
 	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
 	                }
 	            }
 	        }]
 	    };
 	    
 	   var table2option = {
 			    tooltip : {
 			        trigger: 'axis',
 			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
 			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
 			        }
 			    },
 			    legend: {
 			        data:['21','22','4443','54238','5432','8005']
 			    },
 			    toolbox: {
 			        show : true,
 			        feature : {
 			            mark : {show: true},
 			            magicType : {show: true, type: ['line', 'bar', 'tiled']},
 			            restore : {show: true},
 			            saveAsImage : {show: true}
 			        }
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
 			            name:'21',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[419,398,415,5,7,414,389,399,401,413,25,15,421,445,440,406,420,35,16,398,430,413,405,399,18,18,389,391,374,417]
 			        },
 			        {
 			            name:'22',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[838,833,874,51,37,881,850,787,793,851,67,33,808,852,867,875,853,83,53,832,839,881,871,889,44,39,820,862,845,802]
 			        },
 			        {
 			            name:'4443',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[419,396,430,9,23,421,428,444,415,402,29,18,414,404,429,443,413,31,20,436,395,414,445,399,25,18,398,434,414,409]
 			        },
 			        {
 			            name:'54238',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[434,396,407,4,11,425,419,436,399,426,26,18,417,453,448,410,422,30,27,397,431,420,398,449,15,19,416,450,401,427]
 			        },
 			        {
 			            name:'5432',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[396,449,405,5,19,441,390,367,438,447,25,15,410,382,415,450,384,30,22,435,426,449,416,402,22,16,387,396,384,390]
 			        },
 			        {
 			            name:'8005',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[405,409,427,6,6,422,451,422,440,461,28,19,447,433,432,408,436,34,13,414,416,406,382,435,22,20,445,430,415,436]
 			        }
 			    ]
 			};
 			                    
 	   
 	  table1charts.setOption(table1option);
 	  table2charts.setOption(table2option);
 	</script>
  </body>
</html>

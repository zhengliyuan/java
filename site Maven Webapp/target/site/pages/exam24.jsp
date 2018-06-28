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
		 	<div id="countByHour" style="width: auto;height: 600px;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
    	$(function(){
    		var hourEcharts=echarts.init(document.getElementById('countByHour'));
    		var dataMap = {};
    		function dataFormatter(obj) {
    		    var pList = ['1号','2号','3号','4号','5号','6号','7号','8号','9号','10号','11号','12号','13号','14号','15号','16号','17号','18号','19号','20号','21号','22号','23号','24号','25号','26号','27号','28号','29号','30号','31号'];
    		    var temp;
    		    for (var year = 10; year <= 12; year++) {
    		        temp = obj[year];
    		        for (var i = 0, l = temp.length; i < l; i++) {
    		            obj[year][i] = {
    		                name : pList[i],
    		                value : temp[i]
    		            }
    		        }
    		    }
    		    return obj;
    		}
    		dataMap.dataTI = dataFormatter({
    		    //max : 25000,
    		    12:[191674,172522,170183,164210,161319,162559,154445,133410,139612,123618,126072,126584,130973,153018,178170,168993,128423,126144,126343,127997,153034,177485,183019,129213,129594,123236,130077,154903,177643,164395,129554],
    		    11:[254476,251702,252227,301683,355538,319709,244669,236482,251790,252570,298262,316244,319820,243190,243352,246960,255312,302736,352406,338018,255550,253280,256162,252948,293134,338292,315386,237168,273742,272474],
    		    10:[132669,154307,183949,163144,123353,123429,125056,126402,147641,172543,162923,126847,131375,128170,132970,151605,173472,162376,126693,122337,81083,120887,140984,168451,163136,128976,0,0,0,0,0]
    		});
    		var option = {
    			    baseOption: {
    			        timeline: {
    			            axisType: 'category',
    			            autoPlay: false,
    			            playInterval: 2000,
    			            data: [
    			                '10月','11月','12月'
    			            ],
    			        },
    			        title: {
    			            text: '数据来自国家统计局',
    			            x:'center',
    			            textStyle:{color:'#ffffff',fontWeight:'bold'}
    			        },
    			        tooltip: {
    			        },
    			        color:['#c23531','#2f4554', '#61a0a8', '#d48265', '#91c7ae','#749f83',  '#ca8622', '#bda29a','#6e7074', '#546570'],
    			        legend: {
    			            x: 'right',
    			            data: ['人数'],
    			            
    			        },
    			        calculable : true,
    			        grid: {
    			            top: 80,
    			            bottom: 100,
    			            tooltip: {
    			                trigger: 'axis',
    			                axisPointer: {
    			                    type: 'shadow',
    			                    label: {
    			                        show: true,
    			                        formatter: function (params) {
    			                            return params.value.replace('\n', '');
    			                        }
    			                    }
    			                }
    			            }
    			        },
    			        xAxis: [
    			            {
    			                'type':'category',
    			                'axisLabel':{'interval':0},
    			                'data':[
    			                    '1号','\n2号','3号','\n4号','5号','\n6号','7号','\n8号',
    			                    '9号','\n10号','11号','\n12号','13号','\n14号','15号','\n16号',
    			                    '17号','\n18号','19号','\n20号','21号','\n22号','23号','\n24号',
    			                    '25号','\n26号','27号','\n28号','29号','\n30号','31号'
    			                ],
    			                splitLine: {show: false},
    			                axisLabel:{color:'#ffffff'}
    			            }
    			        ],
    			        yAxis: [
    			            {
    			                type: 'value',
    			                name: '人数（个）',
    			                axisLabel:{color:'#ffffff'}
    			            }
    			        ],
    			        series: [
    			           
    			         {name: '流动人口', type: 'bar'}
    			        ]
    			    },
    			    options: [
    			        {
    			            title: {text: '2016年10月流动人口上网数量'},
    			            series: [
    			                {data: dataMap.dataTI['10']}
    			            ]
    			        },
    			        {
    			            title : {text: '2016年11月流动人口上网数量'},
    			            series : [
    			                {data: dataMap.dataTI['11']}
    			            ]
    			        },
    			        {
    			            title : {text: '2016年12月流动人口上网数量'},
    			            series : [
    			                {data: dataMap.dataTI['12']}
    			            ]
    			        }
    			    ]
    			};
   	    	hourEcharts.setOption(option);
   	    	//hourEcharts.showLoading();
   	    	/* $.post("${pageContext.request.contextPath}/siteRecord/duration",{},function(data){
   	    		hourEcharts.hideLoading();
   	    	}, 'json') */
    	})
 	</script>
  </body>
</html>

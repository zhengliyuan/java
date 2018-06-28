<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>网络安全态势感知</title>
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
	<script src="${pageContext.request.contextPath}/static/secray/home_world_data.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home_china_data.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home_henan_data.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home_world_map.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home_china_map.js" ></script>
	<script src="${pageContext.request.contextPath}/static/secray/home_henan_map.js" ></script>
  </head>
  <body background="../static/img/bg.jpg">
  	<jsp:include page="../commons/secraytop.jsp"></jsp:include>
 	<div class="panel panel-default" style="height: 850px;">
	 	<div id="div1" style="width: 100%;height: 30%">
	 		<div id="div11" style="width: 70%;height: 100%;float: left;">
	 			<div id="div111" style="width: 66%;height: 100%;float: left;">
	 				<div id="div1111" style="width: 50%;height: 100%;float: left;"></div>
	 				<div id="div1112" style="width: 50%;height: 100%;float: right;"></div>
	 			</div>
	 			<div id="div112" style="width: 33%;height: 100%;float: left;"></div>
	 		</div>
	 		<div class="jumbotron" style="width: 30%;height: 100%;float: right;background-color:rgba(0,0,0,0)">
			  <h2 style="color: red;text-align: center;">今日关注</h2>
			  <p style="color: red;text-align: center;">今日攻击总数为:50000;<br>漏洞总数为:620;<br>总体风险值为:38;<br>系统处于中低危状态</p>
			</div>
	 	</div>
	 	<div id="div2" style="width: 100%;height: 70%">
	 		<div id="div21" style="width: 70%;height: 100%;float: left;">
	 			<div class="mapBox" style="width: 100%;height: 100%">
                    <div class="container-fluid carousel slide" id="carousel-example-generic" data-ride="carousel" data-interval="false"
                         style="width: auto;height: 100%;padding: 0px">
                        <ol class="carousel-indicators" id="map_ol">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox" id="map_div" style="width:100%;height:100%;">
                            <%--世界地图--%>
                            <div class="item active">
                                <div id="worldMap" style="width: 100%;height:100%;margin: 0 auto"></div>
                            </div>
                            <%--中国地图--%>
                            <div class="item">
                                <div id="chinaMap" style="width: 100%;height:100%;margin: 0 auto"></div>
                            </div>
                            <%--河南地图--%>
                            <div class="item">
                                <div style="width: 100%;height:80%;margin: 0 auto;">
                                    <div id="vulnPie" style="float:right; width: 50%;height:100%;"></div>
                                    <div id="provinceMap" style="float:left;width: 50%;height:100%;"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
	 		</div>
	 		<div id="div22" style="width: 30%;height: 100%;float: left;">
	 			<div id="attack" style="width: 100%;height: 33%"></div>
	 			<div id="loop" style="width: 100%;height: 33%"></div>
	 			<div id="rank" style="width: 100%;height: 33%"></div>
	 		</div>
	 	</div>
 	</div>
 	<script type="text/javascript">
 		var div1111charts=echarts.init(document.getElementById('div1111'));
 		var div1111option = {
 				title: {
 		            show: true,
 		            text: '攻击总值',
 		            x: 'center',
 		            y: 'top',
 		            bottom: '0',
 		            padding: [2, 0, 0, 0],
 		            textStyle: {
 		                fontSize: 12,
 		                color: '#FFF'
 		            }
 		        },
 			    tooltip : {
 			        formatter: "{a} : {c}"
 			    },
 			    series: [
 			        {
 			            name: '攻击值',
 			            type: 'gauge',
 			            startAngle:'180',
 			            endAngle:'0',
 			           	center: ['50%', '90%'],
 			            radius: '110%',
 			            axisLine: {
 			                show: true,
 			                lineStyle: {
 			                    color: [[0.2, '#276FD8'], [0.4, '#00BDEF'], [0.6, '#EEDB23'], [0.8, '#ED7C15'], [1, '#D61D18']],
 			                    width: 8
 			                }
 			            },
 			            axisTick: {
 			                show: true,
 			                splitNumber: 5,
 			                length: 12,
 			                lineStyle: {
 			                    color: 'auto',
 			                    width: 1,
 			                    type: 'solid'
 			                }
 			            },
 			            axisLabel: {
 			                show: true,
 			                formatter: null,
 			                textStyle: {
 			                    color: '#ccc'
 			                }
 			            },
 			            splitLine: {
 			                show: true,
 			                length: 18,
 			                lineStyle: {
 			                    color: 'auto',
 			                    width: 1,
 			                    type: 'solid'
 			                }
 			            },
 			            pointer: {
 			                length: '68%',
 			                width: 6
 			            },
 			            itemStyle: {
 			                normal: {
 			                    color: '#FFF',
 			                }
 			            },
 			            data: [{value: 20}]
 			        }
 			    ]
 			};
 		div1111charts.setOption(div1111option);
 		
 		var div1112charts=echarts.init(document.getElementById('div1112'));
 		var div1112option = {
 				title: {
 		            show: true,
 		            text: '漏洞总值',
 		            x: 'center',
 		            y: 'top',
 		            bottom: '0',
 		            padding: [2, 0, 0, 0],
 		            textStyle: {
 		                fontSize: 12,
 		                color: '#FFF'
 		            }
 		        },
 			    tooltip : {
 			        formatter: "{a}: {c}"
 			    },
 			    series: [
 			        {
 			            name: '漏洞值',
 			            type: 'gauge',
 			           startAngle:'180',
			            endAngle:'0',
			            center: ['50%', '90%'],
			            radius: '110%',
			            axisLine: {
			                show: true,
			                lineStyle: {
			                    color: [[0.2, '#276FD8'], [0.4, '#00BDEF'], [0.6, '#EEDB23'], [0.8, '#ED7C15'], [1, '#D61D18']],
			                    width: 8
			                }
			            },
			            axisTick: {
			                show: true,
			                splitNumber: 5,
			                length: 12,
			                lineStyle: {
			                    color: 'auto',
			                    width: 1,
			                    type: 'solid'
			                }
			            },
			            axisLabel: {
			                show: true,
			                formatter: null,
			                textStyle: {
			                    color: '#ccc'
			                }
			            },
			            splitLine: {
			                show: true,
			                length: 18,
			                lineStyle: {
			                    color: 'auto',
			                    width: 1,
			                    type: 'solid'
			                }
			            },
			            pointer: {
			                length: '68%',
			                width: 6
			            },
			            itemStyle: {
			                normal: {
			                    color: '#FFF',
			                }
			            },
 			            data: [{value: 40}]
 			        }
 			    ]
 			};
 		div1112charts.setOption(div1112option);
 		
 		var div112charts=echarts.init(document.getElementById('div112'));
 		var div112option = {
 				animation: false,
 		        title: {
 		            show: true,
 		            text: '风险总值',
 		            x: 'center',
 		            y: 'top',
 		            bottom: '0',
 		            padding: [2, 0, 0, 0],
 		            textStyle: {
 		                fontSize: 12,
 		                color: '#FFF'
 		            }
 		        },
 			    tooltip : {
 			        formatter: "{a}: {c}"
 			    },
 			    series: [
 			        {
 			            name: '风险值',
 			            type: 'gauge',
 			           startAngle:'180',
			            endAngle:'0',
			            center: ['50%', '90%'],
			            radius: '110%',
			            axisLine: {
			                show: true,
			                lineStyle: {
			                    color: [[0.2, '#276FD8'], [0.4, '#00BDEF'], [0.6, '#EEDB23'], [0.8, '#ED7C15'], [1, '#D61D18']],
			                    width: 8
			                }
			            },
			            axisTick: {
			                show: true,
			                splitNumber: 5,
			                length: 12,
			                lineStyle: {
			                    color: 'auto',
			                    width: 1,
			                    type: 'solid'
			                }
			            },
			            axisLabel: {
			                show: true,
			                formatter: null,
			                textStyle: {
			                    color: '#ccc'
			                }
			            },
			            splitLine: {
			                show: true,
			                length: 18,
			                lineStyle: {
			                    color: 'auto',
			                    width: 1,
			                    type: 'solid'
			                }
			            },
			            pointer: {
			                length: '68%',
			                width: 6
			            },
			            itemStyle: {
			                normal: {
			                    color: '#FFF',
			                }
			            },
 			            data: [{value: 38}]
 			        }
 			    ]
 			};
 		div112charts.setOption(div112option);
 		
 		/*************************三张地图****************************/
 		mapWorldCharFun("worldMap");
 		mapChinaCharFun("chinaMap");
 		mapHenanCharFun("provinceMap");
 		vulnPieCharFun("vulnPie");
 		
 		var attackdata1=["郑州","商丘","开封","洛阳","南阳","三门峡","济源","安阳","驻马店","周口"];
 		var attackdata2=[244395,178806,117823,83083,66357,60832,49908,43119,32766,21095];
 		topCharFun("attack",attackdata1,attackdata2,"攻击数量","攻击排行TOP10");
 		var loopdata1=["郑州","商丘","开封","南阳","洛阳","三门峡","安阳","驻马店","周口","信阳"];
 		var loopdata2=[1305,1200,970,850,740,600,490,456,399,350];
 		topCharFun("loop",loopdata1,loopdata2,"漏洞数量","漏洞排行TOP10");
 		var rankdata1=["郑州","商丘","开封","洛阳","南阳","三门峡","济源","安阳","驻马店","周口"];
 		var rankdata2=[90,81,80,72,70,63,58,50,50,48];
 		topCharFun("rank",rankdata1,rankdata2,"风险值","风险排行TOP10");
 	</script>
  </body>
</html>

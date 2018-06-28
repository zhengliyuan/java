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
	 		<div  style="width: 40%;height: 100%;float: left;">
	 			<div id="emailNUm" style="width: 100%;height: 35%;"></div>
	 			<div id="emailNUm2" style="width: 100%;height: 65%;"></div>
	 		</div>
		 	<div  id="tree" style="width: 60%;height: 100%;float:right;"></div>
	 	</div>
 	</div>
 	<script type="text/javascript">
	 	//初始化echarts
		var treemycharts=echarts.init(document.getElementById('tree'));
		var emailNUmcharts=echarts.init(document.getElementById('emailNUm'));
		var emailNum2charts=echarts.init(document.getElementById('emailNUm2'));
		var cellSize = [150, 150];
		var pieRadius = 70;

		function getVirtulData() {
		    var date = +echarts.number.parseDate('2017-02-01');
		    var end = +echarts.number.parseDate('2017-03-01');
		    var dayTime = 3600 * 24 * 1000;
		    var data = [];
		    for (var time = date; time < end; time += dayTime) {
		        data.push([
		            echarts.format.formatTime('yyyy-MM-dd', time),
		            Math.floor(Math.random() * 10000)
		        ]);
		    }
		    return data;
		}

		var data0 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 2
		    },
		    {
		        name: '合同',
		        value: 5
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 5
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 10
		    },
		    {
		        name: '公司简介',
		        value: 6
		    },
		    {
		        name: '复试通知',
		        value: 7
		    },
		    {
		        name: '录用通知',
		        value: 7
		    },
		    {
		        name: '新员工必读',
		        value: 4
		    },
		    {
		        name: '面试通知',
		        value: 5
		    }
		    ]
		}];
		var data1 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 7
		    },
		    {
		        name: '岗位说明书',
		        value: 1
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 5
		    },
		    {
		        name: '财务报账',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 7
		    },
		    {
		        name: '公司简介',
		        value: 7
		    },
		    {
		        name: '复试通知',
		        value: 9
		    },
		    {
		        name: '录用通知',
		        value: 7
		    },
		    {
		        name: '新员工必读',
		        value: 6
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data2 = [{
		    name: '内部',
		    children: [
		    {
		        name: '合同',
		        value: 4
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '年度工作目标',
		        value: 3
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 3
		    },
		    {
		        name: '绩效考核',
		        value: 1
		    },
		    {
		    	name: '考勤相关',
		    	value: 1
		    },
		    {
		        name: '财务',
		        value: 4
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 4
		    },
		    {
		        name: '公司简介',
		        value: 5
		    },
		    {
		        name: '复试通知',
		        value: 11
		    },
		    {
		        name: '录用通知',
		        value: 6
		    },
		    {
		        name: '新员工必读',
		        value: 11
		    },
		    {
		        name: '面试通知',
		        value: 6
		    }
		    ]
		}];
		var data3 = [/* {
		    name: '内部',
		    value:1
		}, {
		    name: '外部',
		    value:1
		} */];
		var data4 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 1
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 1
		    },
		    {
		        name: '公司简介',
		        value: 4
		    },
		    {
		        name: '录用通知',
		        value: 1
		    },
		    {
		        name: '新员工必读',
		        value: 1
		    },
		    {
		        name: '面试通知',
		        value: 3
		    }
		    ]
		}];
		var data5 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 4
		    },
		    {
		        name: '合同',
		        value: 5
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '年度工作目标',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 5
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 6
		    },
		    {
		        name: '公司简介',
		        value: 10
		    },
		    {
		        name: '复试通知',
		        value: 5
		    },
		    {
		        name: '录用通知',
		        value: 4
		    },
		    {
		        name: '新员工必读',
		        value: 5
		    },
		    {
		        name: '面试通知',
		        value: 14
		    }
		    ]
		}];
		var data6 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 4
		    },
		    {
		        name: '年度工作目标',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 4
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 4
		    },
		    {
		        name: '公司简介',
		        value: 8
		    },
		    {
		        name: '复试通知',
		        value: 7
		    },
		    {
		        name: '录用通知',
		        value: 4
		    },
		    {
		        name: '新员工必读',
		        value: 7
		    },
		    {
		        name: '面试通知',
		        value: 4
		    }
		    ]
		}];
		var data7 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 5
		    },
		    {
		        name: '合同',
		        value: 6
		    },
		    {
		        name: '岗位说明书',
		        value: 1
		    },
		    {
		        name: '工作汇报',
		        value: 3
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 3
		    },
		    {
		        name: '绩效考核',
		        value: 1
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    },
		    {
		        name: '财务',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 7
		    },
		    {
		        name: '公司简介',
		        value: 8
		    },
		    {
		        name: '复试通知',
		        value: 6
		    },
		    {
		        name: '录用通知',
		        value: 5
		    },
		    {
		        name: '新员工必读',
		        value: 6
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data8 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 4
		    },
		    {
		        name: '合同',
		        value: 6
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 2
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 4
		    },
		    {
		        name: '公司简介',
		        value: 11
		    },
		    {
		        name: '复试通知',
		        value: 3
		    },
		    {
		        name: '录用通知',
		        value: 4
		    },
		    {
		        name: '新员工必读',
		        value: 3
		    },
		    {
		        name: '面试通知',
		        value: 11
		    }
		    ]
		}];
		var data9 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 9
		    },
		    {
		        name: '岗位说明书',
		        value: 6
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '招聘信息总结',
		        value: 3
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 4
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 10
		    },
		    {
		        name: '公司简介',
		        value: 7
		    },
		    {
		        name: '复试通知',
		        value: 12
		    },
		    {
		        name: '录用通知',
		        value: 5
		    },
		    {
		        name: '新员工必读',
		        value: 10
		    },
		    {
		        name: '面试通知',
		        value: 3
		    }
		    ]
		}];
		var data10 = [/* {
		    name: '内部',
		    value:1
		}, {
		    name: '外部',
		   value:1
		} */];
		var data11 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 1
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 2
		    },
		    {
		        name: '公司简介',
		        value: 3
		    },
		    {
		        name: '复试通知',
		        value: 1
		    },
		    {
		        name: '录用通知',
		        value: 4
		    },
		    {
		        name: '新员工必读',
		        value: 4
		    },
		    {
		        name: '面试通知',
		        value: 1
		    }
		    ]
		}];
		var data12 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 3
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 3
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
		    {
		        name: '考勤相关',
		        value: 6
		    },
		    {
		        name: '财务',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 6
		    },
		    {
		        name: '公司简介',
		        value: 9
		    },
		    {
		        name: '复试通知',
		        value: 5
		    },
		    {
		        name: '录用通知',
		        value: 9
		    },
		    {
		        name: '新员工必读',
		        value: 9
		    }
		    ]
		}];
		var data13 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 3
		    },
		    {
		        name: '岗位说明书',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 3
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 7
		    },
		    {
		        name: '公司简介',
		        value: 8
		    },
		    {
		        name: '复试通知',
		        value: 5
		    },
		    {
		        name: '录用通知',
		        value: 5
		    },
		    {
		        name: '新员工必读',
		        value: 4
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data14 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 5
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '年度工作目标',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 3
		    },
		    {
		        name: '绩效考核',
		        value: 4
		    },
		    {
		        name: '考勤相关',
		        value: 2
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 5
		    },
		    {
		        name: '公司简介',
		        value: 14
		    },
		    {
		        name: '复试通知',
		        value: 10
		    },
		    {
		        name: '录用通知',
		        value: 10
		    },
		    {
		        name: '新员工必读',
		        value: 7
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data15 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 2
		    },
		    {
		        name: '合同',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 6
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 6
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 5
		    },
		    {
		        name: '公司简介',
		        value: 8
		    },
		    {
		        name: '复试通知',
		        value: 6
		    },
		    {
		        name: '录用通知',
		        value: 7
		    },
		    {
		        name: '新员工必读',
		        value: 2
		    },
		    {
		        name: '面试通知',
		        value: 4
		    }
		    ]
		}];
		var data16 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 3
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
		    {
		        name: '考勤相关',
		        value: 6
		    },
		    {
		        name: '财务',
		        value: 4
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 10
		    },
		    {
		        name: '公司简介',
		        value: 6
		    },
		    {
		        name: '复试通知',
		        value: 6
		    },
		    {
		        name: '录用通知',
		        value: 6
		    },
		    {
		        name: '新员工必读',
		        value: 7
		    },
		    {
		        name: '面试通知',
		        value: 8
		    }
		    ]
		}];
		var data17 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 4
		    },
		    {
		        name: '工作汇报',
		        value: 3
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 1
		    },
		    {
		        name: '公司简介',
		        value: 1
		    },
		    {
		        name: '复试通知',
		        value: 5
		    },
		    {
		        name: '录用通知',
		        value: 3
		    },
		    {
		        name: '面试通知',
		        value: 1
		    }
		    ]
		}];
		var data18 = [{
		    name: '内部',
		    children: [
		    {
		        name: '合同',
		        value: 1
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 2
		    },
		    {
		        name: '新员工必读',
		        value: 2
		    },
		    {
		        name: '面试通知',
		        value: 3
		    }
		    ]
		}];
		var data19 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 8
		    },
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '年度工作目标',
		        value: 2
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 1
		    },
		    {
		        name: '考勤相关',
		        value: 5
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 6
		    },
		    {
		        name: '公司简介',
		        value: 5
		    },
		    {
		        name: '复试通知',
		        value: 9
		    },
		    {
		        name: '录用通知',
		        value: 8
		    },
		    {
		        name: '新员工必读',
		        value: 8
		    },
		    {
		        name: '面试通知',
		        value: 2
		    }
		    ]
		}];
		var data20 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 2
		    },
		    {
		        name: '合同',
		        value: 2
		    },
		    {
		        name: '岗位说明书',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '招聘信息总结',
		        value: 3
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 2
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 8
		    },
		    {
		        name: '公司简介',
		        value: 8
		    },
		    {
		        name: '复试通知',
		        value: 8
		    },
		    {
		        name: '录用通知',
		        value: 5
		    },
		    {
		        name: '新员工必读',
		        value: 4
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data21 = [{
		    name: '内部',
		    children: [
		    {
		        name: '合同',
		        value: 5
		    },
		    {
		        name: '岗位说明书',
		        value: 5
		    },
		    {
		        name: '工作汇报',
		        value: 4
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 1
		    },
		    {
		        name: '考勤相关',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 3
		    },
		    {
		        name: '公司简介',
		        value: 9
		    },
		    {
		        name: '复试通知',
		        value: 4
		    },
		    {
		        name: '录用通知',
		        value: 6
		    },
		    {
		        name: '新员工必读',
		        value: 9
		    },
		    {
		        name: '面试通知',
		        value: 13
		    }
		    ]
		}];
		var data22 = [{
		    name: '内部',
		    children: [
		    {
		        name: '合同',
		        value: 2
		    },
		    {
		        name: '岗位说明书',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 3
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 5
		    },
		    {
		        name: '考勤相关',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 8
		    },
		    {
		        name: '公司简介',
		        value: 4
		    },
		    {
		        name: '复试通知',
		        value: 8
		    },
		    {
		        name: '录用通知',
		        value: 5
		    },
		    {
		        name: '新员工必读',
		        value: 2
		    },
		    {
		        name: '面试通知',
		        value: 6
		    }
		    ]
		}];
		var data23 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 2
		    },
		    {
		        name: '合同',
		        value: 4
		    },
		    {
		        name: '工作汇报',
		        value: 6
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 1
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 8
		    },
		    {
		        name: '公司简介',
		        value: 11
		    },
		    {
		        name: '复试通知',
		        value: 11
		    },
		    {
		        name: '录用通知',
		        value: 6
		    },
		    {
		        name: '新员工必读',
		        value: 5
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data24 = [{
		    name: '内部',
		    children: [
		    {
		        name: '工作汇报',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 2
		    },
		    {
		        name: '复试通知',
		        value: 3
		    },
		    {
		        name: '录用通知',
		        value: 3
		    }
		    ]
		}];
		var data25 = [/* {
		    name: '内部',
		   value:1
		}, {
		    name: '外部',
		    value:1
		} */];
		var data26 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 7
		    },
		    {
		        name: '岗位说明书',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 3
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 5
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 5
		    },
		    {
		        name: '公司简介',
		        value: 5
		    },
		    {
		        name: '复试通知',
		        value: 4
		    },
		    {
		        name: '录用通知',
		        value: 8
		    },
		    {
		        name: '新员工必读',
		        value: 7
		    },
		    {
		        name: '面试通知',
		        value: 3
		    }
		    ]
		}];
		var data27 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 2
		    },
		    {
		        name: '合同',
		        value: 2
		    },
		    {
		        name: '岗位说明书',
		        value: 1
		    },
		    {
		        name: '工作汇报',
		        value: 6
		    },
		    {
		        name: '年度工作目标',
		        value: 1
		    },
		    {
		        name: '招聘信息总结',
		        value: 3
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 2
		    },
		    {
		        name: '考勤相关',
		        value: 4
		    },
		    {
		        name: '财务',
		        value: 3
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 6
		    },
		    {
		        name: '公司简介',
		        value: 3
		    },
		    {
		        name: '复试通知',
		        value: 3
		    },
		    {
		        name: '录用通知',
		        value: 6
		    },
		    {
		        name: '新员工必读',
		        value: 5
		    },
		    {
		        name: '面试通知',
		        value: 7
		    }
		    ]
		}];
		var data28 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 1
		    },
		    {
		        name: '合同',
		        value: 4
		    },
		    {
		        name: '岗位说明书',
		        value: 3
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '招聘信息总结',
		        value: 2
		    },
		    {
		        name: '福利保障',
		        value: 1
		    },
		    {
		        name: '绩效考核',
		        value: 4
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 3
		    },
		    {
		        name: '公司简介',
		        value: 4
		    },
		    {
		        name: '复试通知',
		        value: 2
		    },
		    {
		        name: '录用通知',
		        value: 8
		    },
		    {
		        name: '新员工必读',
		        value: 4
		    },
		    {
		        name: '面试通知',
		        value: 4
		    }
		    ]
		}];
		var data29 = [{
		    name: '内部',
		    children: [
             {
		        name: '人员档案',
		        value: 3
		    },
		    {
		        name: '合同',
		        value: 4
		    },
		    {
		        name: '岗位说明书',
		        value: 2
		    },
		    {
		        name: '工作汇报',
		        value: 5
		    },
		    {
		        name: '招聘信息总结',
		        value: 1
		    },
		    {
		        name: '福利保障',
		        value: 2
		    },
		    {
		        name: '绩效考核',
		        value: 3
		    },
		    {
		        name: '考勤相关',
		        value: 3
		    },
		    {
		        name: '财务',
		        value: 2
		    }
            ]
		}, {
		    name: '外部',
		    children: [{
		        name: 'offer',
		        value: 9
		    },
		    {
		        name: '公司简介',
		        value: 9
		    },
		    {
		        name: '复试通知',
		        value: 7
		    },
		    {
		        name: '录用通知',
		        value: 4
		    },
		    {
		        name: '新员工必读',
		        value: 10
		    },
		    {
		        name: '面试通知',
		        value: 8
		    }
		    ]
		}];
		function getPieSeries(scatterData, chart) {
		    return echarts.util.map(scatterData, function (item, index) {
		        var center = chart.convertToPixel('calendar', item);
		        if(index=="0"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data0,
			            radius: [0, '17%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="1"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data1,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="2"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data2,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="3"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data3,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="4"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data4,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="5"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data5,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="6"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data6,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="7"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data7,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="8"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data8,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="9"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data9,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="10"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data10,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="11"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data11,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="12"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data12,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="13"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data13,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="14"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data14,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="15"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data15,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="16"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data16,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="17"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data17,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="18"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data18,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="19"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data19,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="20"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data20,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="21"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data21,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="22"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data22,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="23"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data23,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="24"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data24,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="25"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data25,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="26"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data26,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="27"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data27,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="28"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data28,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }else if(index=="29"){
		        	return {
			            id: index + 'pie',
			            type: 'sunburst',
			            center: center,
		            	data: data29,
			            radius: [0, '15%'],
			            label: {
			                rotate: 'radial'
			            }
			        };
		        }
		    });
		}

		function getPieSeriesUpdate(scatterData, chart) {
		    return echarts.util.map(scatterData, function (item, index) {
		        var center = chart.convertToPixel('calendar', item);
		        return {
		            id: index + 'pie',
		            center: center
		        };
		    });
		}

		var scatterData = getVirtulData();

		var option = {
			title:{
				text:'人力资源部邮件来往主题（日）',
				textStyle:{color:'#ffffff',fontWeight:'bold'},
				x:'center'
			},
		    tooltip : {},
		    legend: {
		        data: ['内部', '外部'],
		        bottom: 20
		    },
		    calendar: {
		        top: 'middle',
		        left: 'center',
		        orient: 'vertical',
		        cellSize: cellSize,
		        itemStyle:{
		        	opacity:0
		        },
		        splitLine:{
		        	lineStyle:{
		        		color:'#FFFFFF'
		        	}
		        },
		        yearLabel: {
		            show: false,
		            textStyle: {
		                fontSize: 30
		            }
		        },
		        dayLabel: {
		            margin: 20,
		            firstDay: 1,
		            color:'#FFFFFF',
		            nameMap: ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']
		        },
		        monthLabel: {
		            show: true,
		            color:'#FFFFFF',
		        },
		        range: ['2017-02']
		    },
		    series: [{
		        id: 'label',
		        type: 'scatter',
		        coordinateSystem: 'calendar',
		        symbolSize: 1,
		        label: {
		            normal: {
		                show: true,
		                formatter: function (params) {
		                    return echarts.format.formatTime('dd', params.value[0]);
		                },
		                offset: [-cellSize[0] / 2 + 10, -cellSize[1] / 2 + 10],
		                textStyle: {
		                    color: '#FFFFFF',
		                    fontSize: 14
		                }
		            }
		        },
		        data: scatterData
		    }]
		};

	    var pieInitialized;
	    setTimeout(function () {
	        pieInitialized = true;
	        treemycharts.setOption({
	            series: getPieSeries(scatterData, treemycharts)
	        });
	    }, 10);

	    onresize = function () {
	        if (pieInitialized) {
	        	treemycharts.setOption({
	                series: getPieSeriesUpdate(scatterData, treemycharts)
	            });
	        }
	    };
	    
	    
	    
	    
	    var emailNumoption={
	 		    title: {
	 		        text: '人力资源部每日邮件数量',
	 		        textStyle:{
	 		        	color:'#FFFFFF'
	 		        },
	 		        x:'center'
	 		    },
	 		    tooltip : {
	 		        trigger: 'axis'
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
	 		           axisLabel:{color:'#FFFFFF'},
	 		          axisLine:{
							 lineStyle:{
								 color:'#FFFFFF'
							 }
						 },
	 		            boundaryGap : false,
	 		            data :  [
	 		         		    "2017-11-01","2017-11-02","2017-11-03","2017-11-04","2017-11-05","2017-11-06","2017-11-07","2017-11-08","2017-11-09","2017-11-10","2017-11-11","2017-11-12","2017-11-13","2017-11-14","2017-11-15","2017-11-16","2017-11-17","2017-11-18","2017-11-19","2017-11-20","2017-11-21","2017-11-22","2017-11-23","2017-11-24","2017-11-25","2017-11-26","2017-11-27","2017-11-28"
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
	 		            name:'数量',
	 		            type:'line',
	 		            data:[347,226,290,138,392,275,343,376,464,103,360,240,366,290,325,88,35,341,294,259,224,278,35,377,277,311,311]
	 		        }
	 		    ]
	 		};
	    
		treemycharts.setOption(option);
		emailNUmcharts.setOption(emailNumoption)
		
		
		/*******************************************************/
		var num2option={
			title: {
	            text: '每日考勤情况',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'left',
		        align: 'right'
	        },
 			    tooltip : {
 			        trigger: 'axis',
 			        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
 			            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
 			        }
 			    },
 			    legend: {
 			    	type: 'scroll',
 			    	x:'right',
 			    	pageIconColor:'#FFF',
 			        pageTextStyle:{
 			        	color:'#FFF'
 			        },
 			        textStyle:{
 			        	color:'#fff'
 			        },
 			        data:['上班','迟到','早退','旷工','旷工-早退','迟到-早退']
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
 			            name:'上班',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[274,272,273,3,15,269,273,271,274,263,15,20,281,276,279,269,270,22,31,269,273,280,271,283,34,32,267,278,270,299]
 			        },
 			        {
 			            name:'迟到',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[16,20,17,0,0,20,19,20,19,25,0,0,11,18,17,24,23,0,0,23,16,17,25,11,0,0,21,13,15,0]
 			        },
 			        {
 			            name:'早退',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[1,0,1,0,0,0,1,1,0,0,0,0,1,0,1,0,2,0,0,1,0,0,0,0,0,0,0,0,0,0]
 			        },
 			        {
 			            name:'旷工',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[8,7,7,0,0,10,6,7,6,10,0,0,6,5,2,6,4,0,0,6,10,2,3,5,0,0,11,7,14,0]
 			        },
 			        {
 			            name:'旷工-早退',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
 			        },
 			        {
 			            name:'迟到-早退',
 			            type:'bar',
 			            stack: '总量',
 			            itemStyle : { normal: {label : {show: true, position: 'insideRight'}}},
 			            data:[0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0]
 			        }
 			    ]
 			};
		emailNum2charts.setOption(num2option);
 	</script>
  </body>
</html>

/**
 * 加时间轴的区域等级图表
 * @param char
 * @param url
 */
function timelineCityLevelChar(char, yname, piename) {
    //初始化图表宽高
    var myDom = document.getElementById(char);
    resizeCharContainer(char);
    var attackBarChar = echarts.init(myDom);

    Date.prototype.format = function (format) {
        var o = {
            "M+": this.getMonth() + 1, //month
            "d+": this.getDate(), //day
            "h+": this.getHours(), //hour
            "m+": this.getMinutes(), //minute
            "s+": this.getSeconds(), //second
            "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
            "S": this.getMilliseconds() //millisecond
        }

        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }

        for (var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
            }
        }
        return format;
    }
    var mm = [];
    for (var i = 0; i < 12; i++) {
        var now = new Date();
        now.setMonth(now.getMonth() - i);
        var nowStr = now.format("yyyy-MM");
        mm.push(nowStr);
    }
    attackBarChar.setOption({
        baseOption: {
        	title: {
	            text: '区域12个月风险对比',
	            textStyle:{color:'#ffffff',fontWeight:'bold'},
		        x: 'center',
		        align: 'right'
	        },
            timeline: {
                axisType: 'category',
                autoPlay: true,
                currentIndex: 11,
                playInterval: 3000,
                data: ["2017-06","2017-07","2017-08","2017-09","2017-10","2017-11","2017-12","2018-01","2018-02","2018-03","2018-04","2018-05"],
                label: {color:'#ffffff'}
            },
            tooltip: {},
            color: ['#276FD8', '#00BDEF', '#EEDB23', '#ED7C15', '#D61D18', '#00868B'],
            grid: {
                left: '6%',
                right: '4%',
                bottom: '20%',
                top: '10%'
            },
            xAxis: [
                {
                    'type': 'category',
                    'axisLabel': {'interval': 0},
                    axisLabel:{color:'#FFFFFF'},
     		    	axisLine:{
    					 lineStyle:{
    						 color:'#FFFFFF'
    					 }
    				 },	
                    'data': [],
                    splitLine: {show: false}
                }
            ],
            yAxis: [
                {
                	axisLabel:{color:'#FFFFFF'},
     		    	axisLine:{
    					 lineStyle:{
    						 color:'#FFFFFF'
    					 }
    				 },
                    type: 'value',
                    name: /*'攻击总数（次）'*/ yname
                }
            ],
            series: [
             {
                name: '风险值',
                type: 'bar', 
                barMaxWidth: '30',
                "data": []
                },
                {
                    name: piename,
                    type: 'pie',
                    center: ['86%', '30%'],
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    radius: '30%'
                }
            ]
        }
    });
    var xdata=["郑州","商丘","开封","洛阳","南阳","三门峡","济源","安阳","驻马店","周口","信阳","鹤壁","漯河","新乡","许昌","濮阳","焦作","平顶山"];
    var data01=[28,71,85,92,67,83,2,59,81,8,3,22,9,27,60,59,76,31];
    var data02=[89,34,15,5,46,50,17,58,10,41,16,66,35,46,7,31,7,1];
    var data03=[58,39,44,26,92,82,22,39,33,61,37,59,24,28,66,26,97,66]; 
    var data04=[20,24,41,15,14,63,31,43,35,56,49,31,74,85,39,86,75,78];
    var data05=[30,58,53,17,9,49,52,60,26,38,0,10,62,39,12,21,92,11];
    var data06=[86,43,36,88,35,24,1,31,1,6,16,82,25,15,19,24,49,26];
    var data07=[9,78,37,40,79,84,40,97,94,76,86,17,22,57,85,34,58,67];
    var data08=[76,18,34,84,0,41,54,7,0,60,27,81,32,47,32,78,67,86];
    var data09=[35,65,34,58,13,26,35,70,83,51,2,26,72,30,77,14,48,64];
    var data10=[98,61,12,36,38,79,24,20,45,72,31,58,54,30,23,26,75,24];
    var data11=[50,80,67,21,54,64,33,98,85,37,16,6,97,43,63,5,88,17];
    var data12=[31,47,39,29,57,62,43,75,7,88,92,26,53,45,72,13,44,10];
    var dataTime=["2017-06","2017-07","2017-08","2017-09","2017-10","2017-11","2017-12","2018-01","2018-02","2018-03","2018-04","2018-05"];
    attackBarChar.setOption({
        baseOption: {
            timeline: {
                data: dataTime
            },
            xAxis: [
                {
                    'data': xdata
                }
            ],
        },
        options: [
            {
                /*title: {text: data.times[0] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data01},
                    {
                        data: [
                            {name: '低危', value:4 },
                            {name: '中低危', value: 4},
                            {name: '中危', value:2 },
                            {name: '中高危', value: 4},
                            {name: '高危', value:4 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[1] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data02},
                    {
                        data: [
                            {name: '低危', value:8 },
                            {name: '中低危', value: 3},
                            {name: '中危', value:5 },
                            {name: '中高危', value: 1},
                            {name: '高危', value:1 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[2] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data03},
                    {
                        data: [
                            {name: '低危', value:0 },
                            {name: '中低危', value: 9},
                            {name: '中危', value:3 },
                            {name: '中高危', value: 3},
                            {name: '高危', value:3 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[3] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data04},
                    {
                        data: [
                            {name: '低危', value:2 },
                            {name: '中低危', value: 6},
                            {name: '中危', value:4 },
                            {name: '中高危', value: 4},
                            {name: '高危', value:2 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[4] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data05},
                    {
                        data: [
                            {name: '低危', value:6 },
                            {name: '中低危', value: 5},
                            {name: '中危', value:4 },
                            {name: '中高危', value: 2},
                            {name: '高危', value:1 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[5] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data06},
                    {
                        data: [
                            {name: '低危', value:6 },
                            {name: '中低危', value: 7},
                            {name: '中危', value:2 },
                            {name: '中高危', value: 0},
                            {name: '高危', value:3 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[6] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data07},
                    {
                        data: [
                            {name: '低危', value:2 },
                            {name: '中低危', value: 3},
                            {name: '中危', value:4 },
                            {name: '中高危', value: 4},
                            {name: '高危', value:5 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[7] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data08},
                    {
                        data: [
                            {name: '低危', value:4 },
                            {name: '中低危', value: 4},
                            {name: '中危', value:3 },
                            {name: '中高危', value: 4},
                            {name: '高危', value:3 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[8] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data09},
                    {
                        data: [
                            {name: '低危', value:3 },
                            {name: '中低危', value: 6},
                            {name: '中危', value:3 },
                            {name: '中高危', value: 5},
                            {name: '高危', value:1 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[9] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data10},
                    {
                        data: [
                            {name: '低危', value:1 },
                            {name: '中低危', value: 9},
                            {name: '中危', value:3 },
                            {name: '中高危', value: 4},
                            {name: '高危', value:1 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[10] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data11},
                    {
                        data: [
                            {name: '低危', value:4 },
                            {name: '中低危', value: 3},
                            {name: '中危', value:3 },
                            {name: '中高危', value: 3},
                            {name: '高危', value:5 }

                        ]
                    }
                ]
            },
            {
                /*title: {text: data.times[11] + "各个区域的攻击总数对比"},*/
                series: [
                    {data: data12},
                    {
                        data: [
                            {name: '低危', value:3 },
                            {name: '中低危', value: 4},
                            {name: '中危', value:6 },
                            {name: '中高危', value: 3},
                            {name: '高危', value:2 }

                        ]
                    }
                ]
            },
        ]
    });

    attackBarChar.on('timelinechanged', function (timelineIndex) {
        // 设置 每个series里的xAxis里的值
        var arrIndex = parseInt(timelineIndex.currentIndex);
        if (arrIndex == 12) // 这里 12可理解为 节点数组的长度,此处的目的是防止 5.xAxis not found
            arrIndex = 0
        // 动态修改x轴的值
        attackBarChar.setOption({
            xAxis: [
                {
                    'data': xdata
                }
            ]
        });

    });
    return attackBarChar;
}
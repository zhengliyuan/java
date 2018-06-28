/**
 * 通用仪表盘
 * @param char
 * @returns {*}
 */
function gaugeCharFun(name, char, url) {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById(char));
    // 指定图表的配置项和数据
    myChart.setOption({
        animation: false,
        title: {
            show: true,
            text: name + '总值',
            x: 'center',
            y: 'top',
            bottom: '0',
            padding: [2, 0, 0, 0],
            textStyle: {
                fontSize: 12,
                color: '#FFF'
            }
        },
        tooltip: {
            formatter: name + " : {c}"
        },
        series: [{
            type: 'gauge',
            splitNumber: 5,
            startAngle: 180,
            endAngle: 0,
            center: ['50%', '90%'],
            radius: '130%',
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
            data: 0
        }]
    });
   /* myChart.showLoading();
    $.post(url, {}, function (data) {
        myChart.hideLoading();
        myChart.setOption({
            series: [{data: data.count_}]
        });
    }, 'json');*/

    return myChart;
}

/**
 * 排行Char
 */
function topCharFun(char, data1,data2, seriesname,title) {
    var myChart = echarts.init(document.getElementById(char));
    myChart.setOption({
        title: {
            text: title,
            x: 'center',
            padding: 20,
            textStyle: {
                "fontSize": 20,
                "fontWeight": "bolder",
                "color": "#FFFFFF"
            }
        },
        grid: { // 控制图的大小
            left: '4%',
            right: '18%',
            top: '25%',
            bottom: '16%'
        },
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'none'
            }
        },
        calculable: true,
        xAxis: [{
            type: 'category',
            // inverse:true,
            axisLine: {
                show: false
            },
            splitArea: {
                show: false
            },
            axisLabel: {
                interval: 0,
                rotate: 0,
                textStyle: {
                    fontSize: '12',
                    color: ["#FFFFFF"],
                },

            },
            axisTick: {
                show: false
            },
            data: data1

        }],
        yAxis: [{
            position: 'right',
            type: 'value',
            axisLine: {
                show: false
            },
            splitArea: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    fontSize: '12',
                    color: ["#FFFFFF"],
                },
            },
            splitLine: {
                show: true,
                lineStyle: {
                    color: ['#1e2847'],
                    width: 1,
                    type: 'solid'
                }
            },
        }],
        color: ['#004f80'],
        series: [{
            name: seriesname,
            type: 'bar',
            itemStyle: {
                normal: {
                    color: '#1790CF',
                    opacity: 0.8
                }
            },
            label: {
                normal: {
                    show: true,
                    position: 'top'
                }
            },
            barMaxWidth: 26,
            barCategoryGap: '20',
            data: data2
        }]
    });

    /*myChart.showLoading();
    $.post(url, {}, function (data) {
        myChart.hideLoading();
        myChart.setOption({
            xAxis: [{
                axisLabel: {
                    formatter: function (val) {
                        if (val.length > 2) {
                            var city = val.replace("市", "").replace("区", "").replace("县", "");
                            if (city.length > 2) {
                                return city.substr(0, 2) + '...';
                            }else{
                                return city;
                            }
                        } else {
                            return val;
                        }
                    }
                },
                data: data.xAxisData
            }],
            series: [{data: data.seriesData}]
        });
    }, 'json');*/

    return myChart;
}

/**
 * 攻击折线图
 * @param char
 * @param url
 * @returns {*}
 */
function attackLineCharFun(char, url) {
    var myChart = echarts.init(document.getElementById(char));
    myChart.setOption({
        title: {
            text: '24小时内拦截攻击数量：0',
            x: '30',
            textStyle: {
                "fontSize": 12,
                "color": "#FFF"
            }
        },
        grid: { // 控制图的大小
            left: '10%',
            right: '2%',
            top: '15%',
            bottom: '24%'
        },
        tooltip: {
            trigger: 'axis',
            formatter: "攻击数量: {c}<br/>时间:{b} ",
            axisPointer: {
                type: 'none'
            }
        },
        calculable: true,
        xAxis: {
            type: 'category',
            boundaryGap: false,
            axisLine: {
                show: false
            },
            splitArea: {
                show: false
            },
            splitLine: {
                show: true,
                lineStyle: {
                    color: ['#1e2847'],
                    width: 1,
                    type: 'solid'
                }
            },
            axisLabel: {
                textStyle: {
                    fontSize: '12',
                    color: ["#FFFFFF"],
                },
                rotate: 45,
                interval: 0,
            },
            axisTick: {
                boundaryGap: true,
            },
            data: []

        },
        yAxis: {
            position: 'left',
            type: 'value',
            axisLine: {
                show: false,
            },
            axisTick: {
                show: false,
                inside: true,
            },
            splitArea: {
                show: false
            },
            axisLabel: {
                textStyle: {
                    fontSize: '12',
                    color: ["#FFFFFF"],
                },
            },
            splitLine: {
                show: true,
                lineStyle: {
                    color: ['#1e2847'],
                    width: 1,
                    type: 'solid'
                }
            },
            minInterval: 1
        },
        color: ['#004f80'],
        series: [{
            name: '攻击数量',
            type: 'line',
            smooth: true,
            symbol: 'none',
            areaStyle: {
                normal: {opacity: 0.8}
            },
            data: []
        }]
    });
    /*myChart.showLoading();

    $.post(url, {}, function (data) {
        myChart.hideLoading();
        myChart.setOption({
            title: {
                text: '24小时内拦截攻击数量：' + data.count_,
            },
            xAxis: {
                data: data.xData
            },
            series: [{
                name: '攻击数量',
                data: data.seriesData
            }]
        });
    }, 'json')*/
    return myChart;
}

/**
 * 统计攻击数据
 */
function countNumberAnimate(url) {
    //总攻击数数字滚动效果
    var time_num = $("#countAll").numberAnimate({num: "0", speed: 1500, symbol: ",", dom: "mt-number-animate-dom"});
    var countNum = 0;
    //24小时攻击数数字滚动效果
    var time_24_count = $("#countNow").numberAnimate({
        num: "0",
        speed: 1500,
        symbol: ",",
        dom: "mt-number-animate-dom-small"
    });
    var time_24_num = 0;
   /* $.post(url, {}, function (data) {
        if (data) {
            var new_countNum = data.attack_count_all;
            countNum = new_countNum;
            time_num.resetData(new_countNum);

            var new_time_24_num = data.attack_count_day;
            time_24_num = new_time_24_num;
            time_24_count.resetData(new_time_24_num);
        }
    }, "json");*/
}

/**
 * 滚动表格
 * @param url
 */
function attackTableFun(url) {
    /*$.post(url, {}, function (data) {
        if (data.length) {
            $('#attack_time').val(data[data.length - 1].attack_time);
        }
        //添加表格内容
        addScrollContent(data);
        //开启定时
        initScrollTable();
    }, 'json');*/
}

/**
 * 漏洞饼图
 */
function vulnPieCharFun(char) {
    var myDom = document.getElementById(char);
    resizeVulnContainer(myDom);
    var myChart_pie = echarts.init(myDom);
    myChart_pie.setOption({
        title: {
            text: '风险统计图',
            x: 'center',
            padding: 20,
            textStyle: {
                fontSize: 12,
                color: '#FFF'
            }
        },
        grid: { // 控制图的大小
            left: 'center',
            top: '5%',
            bottom: '20%'
        },
        color: ['#276FD8', '#00BDEF', '#EEDB23', '#ED7C15', '#D61D18'],
        calculable: false,
        series: [{
            name: '风险值',
            type: 'pie',
            radius: ['50%', '65%'],
            avoidLabelOverlap: false,
            label: {
                normal: {
                    show: true,
                    position: 'outside'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '15',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: true,
                }
            },
            itemStyle: {
                normal: {
                    opacity: 0.8,
                }
            },
            data: [{name:"低危",value:5},
                   {name:"中低危",value:3},
                   {name:"中危",value:4},
                   {name:"中高危",value:3},
                   {name:"高危",value:3}]
        }]
    });
    //显示加载动画
   /* myChart_pie.showLoading();
    $.post(url, {}, function (data) {
        myChart_pie.hideLoading();
        // 使用刚指定的配置项和数据显示图表。
        myChart_pie.setOption({
            tooltip: {
                trigger: 'item',
                formatter: "{b} <br/>{a}: {c} ({d}%)"
            },
            series: [
                {
                    data: data
                }
            ]
        });
    }, 'json');*/
    // 饼图单击事件
    /*    myChart_pie.on('click', function (param) {
     var name = param.name;
     var rank;
     if (name == '低危') {
     rank = 1;
     } else if (name == '中低危') {
     rank = 2;
     } else if (name == '中危') {
     rank = 3;
     } else if (name == '中高危') {
     rank = 4;
     } else if (name == '高危') {
     rank = 5;
     }
     showCommonAlert(name + '的网站列表详情', '../loophole/indexDetail?type=level&rank=' + rank);
     });*/
    return myChart_pie;
}

/**
 * 调整地图容器大小
 * @param char
 */
function resizeMapContainer(dom) {
    var mapDivDom = document.getElementById('map_div');
    dom.style.width = mapDivDom.offsetWidth + 'px';
    dom.style.height = mapDivDom.offsetHeight + 'px';
};

function resizeVulnContainer(dom) {
    var mapDivDom = document.getElementById('map_div');
    dom.style.width = ((mapDivDom.offsetWidth / 2) - 20) + 'px';
    dom.style.height = mapDivDom.offsetHeight + 'px';
};

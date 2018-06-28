/**
 * 河南地图
 * @param char
 * @param url
 * @returns {*}
 */
function mapHenanCharFun(char) {
    //char所属dom
    var myDom = document.getElementById(char);
    //设置容器高宽
    resizeVulnContainer(myDom);
    var myChart_province = echarts.init(myDom);
    myChart_province.setOption({
        tooltip: {
            trigger: 'item',
            formatter: "{b}<br/>风险值:{c}"
        },
        color: ['#276FD8', '#00BDEF', '#EEDB23', '#ED7C15', '#D61D18'],
        grid:{
        	top:'1%'
        },
        visualMap: {
            left: 'left',
            top: 'center',
            align:'right',
            selectedMode: 'multiple',
            pieces: [
                {
                    min: 0,
                    max: 20.00,
                    label: '低危',
                    color: '#276FD8',
                    textStyle: {
                        color: '#276FD8',
                    }
                },
                {
                    min: 20.01,
                    max: 40.00,
                    label: '中低危',
                    color: '#00BDEF',
                    textStyle: {
                        color: '#00BDEF',
                    }
                },
                {
                    min: 40.01,
                    max: 60.00,
                    label: '中危',
                    color: '#EEDB23',
                    textStyle: {
                        color: '#EEDB23',
                    }
                },
                {
                    min: 60.01,
                    max: 80.00,
                    label: '中高危',
                    color: '#ED7C15',
                    textStyle: {
                        color: '#ED7C15',
                    }
                },
                {
                    min: 80.01,
                    max: 100.00,
                    label: '高危',
                    color: '#D61D18',
                    textStyle: {
                        color: '#D61D18',
                    }
                }
            ]
        },
        legend: {
            orient: 'vertical',
            left: 'left',
            top:'center',
            align:'right',
            selectedMode: 'multiple',
            data: ['低危', '中低危', '中危', '中高危', '高危'],
            selected: {'低危': true,'中低危': true,'中危': true,'中高危': true,'高危': true },
            textStyle: {
                color: ['#276FD8', '#00BDEF', '#EEDB23', '#ED7C15', '#D61D18'],
            }
        },
        series: [
            {
                name: '低危',
                type: 'map',
                mapType: '河南',
                roam: false,
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                            color: '#FFF',
                            fontWeight: 'bold',
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        borderColor: '#FFF',
                        borderWidth: 0.5,
                        areaColor: 'rgba(0,0,0,0)',
                        opacity: 0.8,
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                        },
                        shadowColor: 'rgba(0,0,0,0)',
                        opacity: 0.8
                    }
                },
                data: [{name:'濮阳市',value:10},{name:'新乡市',value:18},{name:'焦作市',value:8},{name:'平顶山市',value:0},{name:'许昌市',value:15}]
            },
            {
                name: '中低危',
                type: 'map',
                map: '河南',
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                            color: '#FFF',
                            fontWeight: 'bold',
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        borderColor: '#FFF',
                        borderWidth: 0.5,
                        areaColor: 'rgba(0,0,0,0)',
                        opacity: 0.8,
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                        },
                        opacity: 0.8
                    }
                },
                data: [{name:'鹤壁市',value:30},{name:'漯河市',value:30},{name:'信阳市',value:32}]
            },
            {
                name: '中危',
                type: 'map',
                map: '河南',
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                            color: '#FFF',
                            fontWeight: 'bold',
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        borderColor: '#FFF',
                        borderWidth: 0.5,
                        areaColor: 'rgba(0,0,0,0)',
                        opacity: 0.8,
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                        },
                        opacity: 0.8
                    }
                },
                data: [{name:'安阳市',value:50},{name:'济源市',value:58},{name:'驻马店市',value:50},{name:'周口市',value:48}]
            },
            {
                name: '中高危',
                type: 'map',
                map: '河南',
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                            color: '#FFF',
                            fontWeight: 'bold',
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        borderColor: '#FFF',
                        borderWidth: 0.5,
                        areaColor: 'rgba(0,0,0,0)',
                        opacity: 0.8,
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                        },
                        opacity: 0.8
                    }
                },
                data: [{name:'三门峡市',value:63},{name:'洛阳市',value:72},{name:'南阳市',value:70}]
            },
            {
                name: '高危',
                type: 'map',
                map: '河南',
                label: {
                    normal: {
                        show: true,
                        textStyle: {
                            color: '#FFF',
                            fontWeight: 'bold',
                        }
                    }
                },
                itemStyle: {
                    normal: {
                        borderColor: '#FFF',
                        borderWidth: 0.5,
                        areaColor: 'rgba(0,0,0,0)',
                        opacity: 0.8,
                        label: {
                            show: true
                        }
                    },
                    emphasis: {
                        label: {
                            show: true,
                        },
                        opacity: 0.8
                    }
                },
                data: [{name:'郑州市',value:90},{name:'开封市',value:85},{name:'商丘市',value:81}]
            },
        ]
    });
    /*myChart_province.showLoading();
    $.post(url, {}, function (data) {
        myChart_province.hideLoading();
        myChart_province.setOption({
            series: [
                {data: data.lowData},
                {data: data.midLowData},
                {data: data.midData},
                {data: data.midHighData},
                {data: data.highData},
            ]
        });
    }, 'json');*/
    /*myChart_province.on('click', function (params) {
     if (roleId == 1 || params.name == cityName) {
     showCommonAlert(params.name + "的风险详情", basePath + '/risk/getSiteDetailByCityName?cityName=' + params.name);
     }
     })*/
    return myChart_province;
}
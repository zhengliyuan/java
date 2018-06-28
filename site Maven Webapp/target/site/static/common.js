
/**
 * 跳转
 */
function goUrl(url) {
    if (url) {
        window.location.href = url;
    }
}

/**
 * 全选
 */
function checkAll() {
    $("#checkAll").click(function () {
        $('input[name="subBox"]').prop("checked", this.checked);
    });
    var $subBox = $("input[name='subBox']");
    $subBox.click(function () {
        $("#checkAll").prop("checked", ($subBox.length == $("input[name='subBox']:checked").length) ? true : false);
    });
}

/**
 *查询绑定事件
 */
function keywordChange(id) {
    $('#' + id).on("change", function () {
        try {
            $('#currentPage').val(1);
        } catch (e) {
        }
    });
}

/**
 * 弹出提示消息
 */
function alertMsg(msg) {
    var myMsgModalLength = $('#myMsgModal').length;
    if (!myMsgModalLength) {
        var divStr = "<div id=\"myMsgModal\" class=\"modal fade\" ><div class=\"modal-dialog\" ><div class=\"modal-content\" ><div class=\"modal-header\"><button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button><h4 class=\"modal-title\">提示</h4></div><div class=\"modal-body\"><p id=\"alertMsg\">" + msg + "</p></div><div class=\"modal-footer\"></div></div></div></div>";
        $(document.body).append(divStr);
        $('#myMsgModal').modal('show');
    } else {
        $('#alertMsg').text(msg);
        $('#myMsgModal').modal('show');
    }

}


/**
 * 根据url弹出列表详情
 * @param msg
 */
function showCommonAlert(title, url, width, height) {

    if (typeof(width) == 'undefined') {
        width = 1080;
    }
    if (typeof(height) == 'undefined') {
        height = 460;
    }

    var id = "myModal_" + new Date().getTime();

    var htmlStr = '<div id="' + id + '" class="modal fade">' + //
        '<div class="modal-dialog mydialog" style = "width: ' + (width + 32) + 'px"> ' + //
        '<div class="modal-content mydialog-content" >' +//
        '<div class="modal-header mydialog-header" >' + //
        '<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFFFFF">&times;</button> ' +//
        '<h4 class="modal-title" id="myModalLabel" style="color:#FFFFFF">' + title + '</h4>' +//
        '</div>' +//
        '<div class="modal-body mydialog-body"> ' +//
        '<iframe width=' + width + ' height=' + height + ' frameborder=0 scrolling=scrolling  src="' + url + '"></iframe>' +//
        //'<div class="modal-footer" ></div>' + //
        '</div></div></div></div>';

    $(window.top.document.body).append(htmlStr);
    $("#" + id, window.top.document).modal({show: true});
}


/**
 * 根据url弹出列表详情
 * @param msg
 */
function showCommonAlert1(title, url, width, height) {

    if (typeof(width) == 'undefined') {
        width = 1080;
    }
    if (typeof(height) == 'undefined') {
        height = 560;
    }

    var id = "myModal_" + new Date().getTime();

    var htmlStr = '<div id="' + id + '" class="modal fade">' + //
        '<div class="modal-dialog modal-lg" style = "background-color:#F5F5F5; width: ' + (width + 30) + 'px"> ' + //
        '<div class="modal-content" >' +//
        '<div class="modal-header" style="background-color:#337ab7;">' + //
        '<button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFFFFF">&times;</button> ' +//
        '<h4 class="modal-title" id="myModalLabel" style="color:#FFFFFF">' + title + '</h4>' +//
        '</div>' +//
        '<div class="modal-body" style="background-color:#F5F5F5; "> ' +//
        '<iframe width=' + width + ' height=' + height + ' frameborder=0 scrolling=scrolling  src="' + url + '"></iframe>' +//
        '<div class="modal-footer" ></div>' + //
        '</div></div></div></div>';

    $(window.top.document.body).append(htmlStr);
    $("#" + id, window.top.document).modal({show: true});
}

/**
 * 弹出警告框
 */
function alertWarning(msg, myFun) {
    var myWarningModalLength = $('#myWarningModal').length;
    if (!myWarningModalLength) {
        var divStr = "<div id=\"myWarningModal\" class=\"modal fade\"><div class=\"modal-dialog\"><div class=\"modal-content\"><div class=\"modal-header\"><button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button><h4 class=\"modal-title\">警告</h4></div><div class=\"modal-body\"><p id=\"warningMsg\">" + msg + "</p></div><div class=\"modal-footer\"><button type=\"button\" class=\"btn btn-mybtn\" data-dismiss=\"modal\"><i class=\"fa fa-close\"></i>&nbsp;取消</button><button id=\"warningOkBtn\" type=\"button\" class=\"btn btn-mybtn\" onclick=\"closeMyModal('myWarningModal');\"><i class=\"fa fa-check\"></i>&nbsp;确认</button></div></div></div></div>";
        $(document.body).append(divStr);
        $('#warningOkBtn').off('click').one('click', function (event) {
            try {
                closeMyModal('myWarningModal');
                myFun();
            } catch (e) {
            }
        });

    } else {
        $('#warningMsg').text(msg);
        $('#warningOkBtn').off('click').one('click', function (event) {
            try {
                closeMyModal('myWarningModal');
                myFun();
            } catch (e) {
            }
        });
    }

    $('#myWarningModal').modal('show');
}

/**
 * 隐藏弹出框
 */
function closeMyModal(id) {
    try {
        $("#" + id).modal("hide");
    } catch (e) {
    }
}

/**
 * 将对象转换为数组
 * @param obj
 * @returns {Array}
 */
function transform(obj) {
    var arr = [];
    for (var item in obj) {
        arr.push(obj[item]);
    }
    return arr;
}

/**
 * 获取时间字符串
 */
function getTimeStr(startTime, endTime) {
    $('#timeInfo').html(startTime + '~' + endTime);
    $('#startTime').val(startTime);
    $('#endTime').val(endTime);
    $('.timeSelect').hide();
    $('#topForm').submit();
}

/**
 * 更改top类型
 * @param type
 */
function topTypeChange(type) {
    $('#startTime').val('');
    $('#endTime').val('');
    $('#topType').val(type);
    $('#topForm').submit();
}

/**
 * 提交
 */
function goTopAction() {
    var startTime = $('#startTime').val();
    var endTime = $('#endTime').val();
    $('.timeSelect').hide();
    if (startTime != '' && endTime != '') {
        $('#topForm').submit();
    }
}

/**
 * 清空表单
 * @param id
 */
function clearForm(id) {
    $(':input', '#' + id).not(':button, :submit, :reset, :hidden').val('').removeAttr('checked').removeAttr('selected');
}

/**
 * 提交表单
 * @param id
 */
function queryForm(id) {
    if (document.getElementById('currentPage') != null) {
        document.getElementById('currentPage').value = 1;
    }
    $('#' + id).submit();
}

/**
 * 点击问号按钮提示
 */
function quest(id) {
    $('#' + id).toggle(0);
}

/**
 * boxmax底部按钮点击事件
 */
function footBtnClick(obj, type) {
    $(obj).addClass('hover').siblings().removeClass('hover');
    var box = $(obj).parent().parent().parent();
    if (type == 'char') {
        box.find('.box_table').hide();
        box.find('.box_char').show();
        box.find('.box-footer > .pageBox').empty();
    } else if (type == 'table') {
        box.find('.box_char').hide();
        box.find('.box_table').show();
    }
}

/**
 * 显示动态加载
 */
function showSpin(id) {
    var spinnerOpts = {
        lines: 12, // The number of lines to draw
        length: 7, // The length of each line
        width: 5, // The line thickness
        radius: 10, // The radius of the inner circle
        corners: 1, // Corner roundness (0..1)
        rotate: 0, // The rotation offset
        direction: 1, // 1: clockwise, -1: counterclockwise
        color: '#2F86A2', // #rgb or #rrggbb or array of colors
        speed: 1, // Rounds per second
        trail: 60, // Afterglow percentage
        shadow: false, // Whether to render a shadow
        hwaccel: false, // Whether to use hardware acceleration
        className: 'spinner', // The CSS class to assign to the spinner
        zIndex: 2e9, // The z-index (defaults to 2000000000)
        top: '50%', // Top position relative to parent in px
        left: '50%' // Left position relative to parent in px
    };
    var spinTarget = document.getElementById(id);
    new Spinner(spinnerOpts).spin(spinTarget);
};

/**
 * 重新初始化图表宽高
 * @param dom
 */
function resizeCharContainer(char) {
    var myDom = document.getElementById(char);
    var charDiv = $('#' + char).parent('.box_char');
    myDom.style.width = charDiv.outerWidth(false) + 'px';
    myDom.style.height = charDiv.outerHeight(false) + 'px';
};

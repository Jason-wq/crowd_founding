
// 执行分页，生成页面效果，任何时候调用这个函数都会重新加载页面
function generatePage() {

    // 1.获取分页数据
    var pageInfo = getPageInfoRemote();

    // 2.填充表格
    fillTableBody(pageInfo);

}

// 远程访问服务器端程序获取pageInfo数据
function getPageInfoRemote() {

    // 调用$.ajax()函数发送请求并接受$.ajax()函数的返回值
    var ajaxResult = $.ajax({
        "url": "project/get/page/info.json",
        "type":"post",
        "data": {
            "pageNum": window.pageNum,
            "pageSize": window.pageSize,
        },
        "async":false,
        "dataType":"json"
    });

    console.log(ajaxResult);

    // 判断当前响应状态码是否为200
    var statusCode = ajaxResult.status;

    // 如果当前响应状态码不是200，说明发生了错误或其他意外情况，显示提示消息，让当前函数停止执行
    if(statusCode != 200) {
        layer.msg("失败！响应状态码="+statusCode+" 说明信息="+ajaxResult.statusText);
        return null;
    }

    // 如果响应状态码是200，说明请求处理成功，获取pageInfo
    var resultEntity = ajaxResult.responseJSON;

    // 从resultEntity中获取result属性
    var result = resultEntity.result;

    // 判断result是否成功
    if(result == "FAILED") {
        layer.msg(resultEntity.message);
        return null;
    }

    // 确认result为成功后获取pageInfo
    var pageInfo = resultEntity.data;

    // 返回pageInfo
    return pageInfo;
}

// 填充表格
function fillTableBody(pageInfo) {

    // 清除tbody中的旧的内容
    $("#projectPageBody").empty();

    // 这里清空是为了让没有搜索结果时不显示页码导航条
    $("#Pagination").empty();

    // 判断pageInfo对象是否有效
    if(pageInfo == null || pageInfo == undefined || pageInfo.list == null || pageInfo.list.length == 0) {
        $("#rolePageBody").append("<tr><td colspan='8' align='center'>抱歉！没有查询到您搜索的数据！</td></tr>");
        return ;
    }

    // 使用pageInfo的list属性填充tbody
    for(var i = 0; i < pageInfo.list.length; i++) {

        var project = pageInfo.list[i];

        var projectId = project.id;
        var project_name=project.project_name;
        var username=project.username;
        var money=project.money;
        var day=project.day;
        var createdate=project.createdate;
        var projectStatus = project.status;

        var numberTd = "<td>"+(i+1)+"</td>";
        var project_nameTd = "<td>"+project_name+"</td>";
        var usernameTd = "<td>"+username+"</td>";
        var money = "<td>"+money+"</td>";
        var day = "<td>"+day+"</td>";
        var createdate = "<td>"+createdate+"</td>";
        var projectStatus = "<td>"+projectStatus+"</td>";
        var buttonTd = "<td><button id='"+projectId+"' type='button' class='btn btn-primary btn-xs pencilBtn'><i class=' glyphicon glyphicon-pencil'></i></button></td>";

        var tr = "<tr>"+numberTd+project_nameTd+usernameTd+money+day+createdate+projectStatus+buttonTd+"</tr>";
        $("#projectPageBody").append(tr);
    }

    // 生成分页导航条
    generateNavigator(pageInfo);
}

// 生成分页页码导航条
function generateNavigator(pageInfo) {

    // 获取总记录数
    var totalRecord = pageInfo.total;

    // 声明相关属性
    var properties = {
        "num_edge_entries": 3,
        "num_display_entries": 5,
        "callback": paginationCallBack,
        "items_per_page": pageInfo.pageSize,
        "current_page": pageInfo.pageNum - 1,
        "prev_text": "上一页",
        "next_text": "下一页"
    }

    // 调用pagination()函数
    $("#Pagination").pagination(totalRecord, properties);
}

// 翻页时的回调函数
function paginationCallBack(pageIndex, jQuery) {

    // 修改window对象的pageNum属性
    window.pageNum = pageIndex + 1;

    // 调用分页函数
    generatePage();

    // 取消页码超链接的默认行为
    return false;

}
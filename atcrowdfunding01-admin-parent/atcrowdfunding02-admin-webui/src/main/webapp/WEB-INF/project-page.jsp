<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<%@include file="/WEB-INF/include-head.jsp"%>
<link rel="stylesheet" href="css/pagination.css" />
<script type="text/javascript" src="jquery/jquery.pagination.js"></script>
<script type="text/javascript" src="crowd/my-project.js"></script>
<script type="text/javascript">

    $(function(){

        // 1.为分页操作准备初始化数据
        window.pageNum = 1;
        window.pageSize = 5;

        // 2.调用执行分页的函数，显示分页效果
        generatePage();

        // 6.给页面上的“铅笔”按钮绑定单击响应函数，目的是打开模态框
        // 传统的事件绑定方式只能在第一个页面有效，翻页后失效了
        // $(".pencilBtn").click(function(){
        // 	alert("aaaa...");
        // });

        // 使用jQuery对象的on()函数可以解决上面问题
        // ①首先找到所有“动态生成”的元素所附着的“静态”元素
        // ②on()函数的第一个参数是事件类型
        // ③on()函数的第二个参数是找到真正要绑定事件的元素的选择器
        // ③on()函数的第三个参数是事件的响应函数
        $("#projectPageBody").on("click",".pencilBtn",function(){
            // 打开模态框
            $("#editModal").modal("show");

            // 获取表格中当前行中的角色名称
            var projectStatus = $(this).parent().prev().text();

            // 获取当前角色的id
            // 依据是：var pencilBtn = "<button id='"+roleId+"' ……这段代码中我们把roleId设置到id属性了
            // 为了让执行更新的按钮能够获取到roleId的值，把它放在全局变量上
            window.projectId = this.id;
            // 使用roleName的值设置模态框中的文本框
            $("#editModal [name=projectStatus]").val(projectStatus);
        });

        // 7.给更新模态框中的更新按钮绑定单击响应函数
        $("#updateProjectBtn").click(function(){

            // ①从文本框中获取新的角色名称
            var projectStatus = $("#editModal [name=projectStatus]").val();

            // ②发送Ajax请求执行更新
            $.ajax({
                "url":"project/update.json",
                "type":"post",
                "data":{
                    "id":window.projectId,
                    "status":projectStatus
                },
                "dataType":"json",
                "success":function(response){

                    var result = response.result;

                    if(result == "SUCCESS") {
                        layer.msg("操作成功！");

                        // 重新加载分页数据
                        generatePage();
                    }

                    if(result == "FAILED") {
                        layer.msg("操作失败！"+response.message);
                    }

                },
                "error":function(response){
                    layer.msg(response.status+" "+response.statusText);
                }
            });
            // ③关闭模态框
            $("#editModal").modal("hide");
        });

    });
</script>
<body>

<%@ include file="/WEB-INF/include-nav.jsp"%>
<div class="container-fluid">
    <div class="row">
        <%@ include file="/WEB-INF/include-sidebar.jsp"%>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">
                        <i class="glyphicon glyphicon-th"></i> 数据列表
                    </h3>
                </div>
                <div class="panel-body">
                    <hr style="clear: both;">
                    <div class="table-responsive">
                        <table class="table  table-bordered">
                            <thead>
                            <tr >
                                <th width="30">#</th>
                                <th>项目名称</th>
                                <th>发起人</th>
                                <th>目标金额（元）</th>
                                <th>众筹周期(天)</th>
                                <th>创建时间</th>
                                <th>项目状态</th>
                                <th width="100">审核</th>
                            </tr>
                            </thead>
                            <tbody id="projectPageBody">

                            </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="8" align="center">
                                    <div id="Pagination" class="pagination"><!-- 这里显示分页 --></div>
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/modal-project-eddit.jsp" %>
</body>
</html>
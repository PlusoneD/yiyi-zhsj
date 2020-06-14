<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>易医 - 管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/triage.css">
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="../index.html">Yiyi</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="Manager_Changepwd.html"><i class="fa fa-cog fa-lg"></i> 修改密码</a></li>
                <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
            </ul>
        </li>
    </ul>
</header>

<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../images/manager.jpg " alt="User Image">
        <div>
            <p class="app-sidebar__user-name">管理人员名</p>
            <p class="app-sidebar__user-designation">管理员编号</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item active" href="Manager_Appointment.html"><i
                class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">预约管理</span></a></li>
        <li><a class="app-menu__item" href="Manager_Drug.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">药品管理</span></i></a>

        </li>
        <li><a class="app-menu__item" href="Manager_Symptom.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">病症管理</span></i></a>

        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">用户管理</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Manager_Data_Patient.html"><i class="icon fa fa-circle-o"></i>患者管理</a></li>
                <li><a class="treeview-item" href="Manager_Data_Staff.html"><i class="icon fa fa-circle-o"></i>职工管理</a>
                </li>
            </ul>
        </li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>预约管理</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">预约管理</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="row" style="margin-top: 10px;margin-bottom: 20px;">
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <button class="btn btn-outline-primary" type="button" style="float: right;margin-left: 10px;"
                                data-method="addItem" id="addItem">添加</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tile-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="AppointmentTable">
                                    <thead>
                                    <tr>
                                        <th class="hidden">id</th>
                                        <th>科室</th>
                                        <th>门诊时间</th>
                                        <th>时间段</th>
                                        <th>规定人数</th>
                                        <th>预约人数</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    </tbody>
                                    <script type="text/html" id="tbody-script">
                                        {{each data value i}}
                                    <tr>
                                        <td class="Appointment_id hidden">{{value.App_id}}</td>
                                        <td class="Name">{{value.D_Name}}</td>
                                        <td class="Date">{{value.A_Date}}</td>
                                        <td class="Time">{{value.A_Time}}-{{value.endTime}}</td>
                                        <td class="UpNum">{{value.A_UpNum}}</td>
                                        <td class="Num">{{value.A_Num}}</td>
                                        <td><button class="btn btn-primary btn-sm select" type="button">修改</button>
                                            <button class="btn btn-primary btn-sm delete" type="button">删除</button>
                                        </td>
                                    </tr>
                                        {{/each}}
                                    </script>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<div id="add">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
        <form class="form-horizontal">
            <div class="form-group row">
                <label class="control-label col-md-3">科室</label>
                <div class="col-md-8">
                    <select class="form-control" id="addDep">
                    </select>
                    <script type="text/html" id="addDep-script">
                        <optgroup label="请选择科室">
                            {{each data value i}}
                            <option value="{{value.department_id}}">{{value.name}}</option>
                            {{/each}}
                        </optgroup>
                    </script>
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">预约日期</label>
                <div class="col-md-8">
                    <input class="form-control" id="addDate" type="text" placeholder="请选择日期">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">开始时间</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" placeholder="请填写时间段" id="addTime">
                    <p> * 应为预约就诊时间段开始时间</p>
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">人数上限</label>
                <div class="col-md-8">
                    <input class="form-control" type="number" placeholder="请填写规定人数" id="addNumber">
                </div>
            </div>
        </form>
    </div>
</div>



<div id="change-area">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
        <form class="form-horizontal">
            <div class="form-group row">
                <label class="control-label col-md-3">科室</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="department">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">预约日期</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="date">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">时间段</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="time">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">规定人数</label>
                <div class="col-md-8">
                    <input class="form-control" type="number" disabled="" id="number">
                </div>
            </div>
        </form>
    </div>
</div>

<!-- Essential javascripts for application to work-->
<script src="../js/jquery-3.3.1.min.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<script src="../layui/layui.js"></script>
<script src="../js/template.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="../js/plugins/bootstrap-datepicker.min.js"></script>
<!-- Google analytics script-->
<script type="text/javascript">
    function updateData(){
        $("#AppointmentTable").dataTable().fnDestroy();
        $.ajax({
            url: "getAllApp",
            type: "post",
            success: function (data) {
                console.log(data);
                var i = 0;
                $("#tbody").empty();
                for (i = 0; i < data.length; i++) {
                    data[i]['endTime'] = (parseInt(data[i]['A_Time'].substr(0, 2))+2).toString() + ":00:00";
                }
                $("#tbody").append(template("tbody-script", {data: data}));

                //渲染dataTable
                $("#AppointmentTable").dataTable({
                    'iDisplayLength': 10, //每页初始显示5条记录
                    'bFilter': true,  //是否使用内置的过滤功能（是否去掉搜索框）
                    "bInfo": true, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
                    "bPaginate": true, //开关，是否显示分页器
                    "bSort": true, //是否可排序 
                    "oLanguage": {  //语言转换
                        "sInfo": "显示第 _START_ 至 _END_ 项结果，共_TOTAL_ 项",
                        "sZeroRecords": "对不起，查询不到任何相关数据",
                        "sLengthMenu": "每页显示 _MENU_ 项结果",
                        "oPaginate": {
                            "sFirst": "首页",
                            "sPrevious": "前一页",
                            "sNext": "后一页",
                            "sLast": "尾页"
                        }
                    }
                });
            }, error: function (data) {
                console.log(data);
            }
        });
    }

    $(document).ready(function () {
        updateData();
        $("#add").hide();
        $("#change-area").hide();
        $.ajax({
            url: "getAllDep",
            type: "post",
            success: function (data) {
                console.log(data);
                $("#addDep").append(template("addDep-script", { data: data }));
            }, error: function (data) {
                console.log(data);
            }
        })
    });

    //添加项目
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            addItem: function (othis) {
                layer.open({
                    type: 1
                    , title: '添加'
                    , area: '400px;'
                    , shade: 0.3
                    , id: 'LAY_1' //防止重复弹出
                    , content: $("#add")
                    , btn: ['确定', '取消']
                    , btnAlign: 'c' //按钮居中
                    , yes: function () {
                        var depid = $("#addDep").val();
                        var date = $("#addDate").val();
                        var time = $("#addTime").val();
                        var number = $("#addNumber").val();

                        if(depid != null && date != null && time != null && number > 0){
                            $.ajax({
                                url: "addAppointment",
                                data: {
                                    depid: depid,
                                    date: date,
                                    time: time,
                                    number: number,
                                },
                                type: "post",
                                success: function (data) {
                                    layer.msg("添加成功！");
                                    updateData();
                                }, error: function (data) {
                                    console.log(data);
                                }
                            })
                            $("#addDep").val("");
                            $("#addDate").val("");
                            $("#addTime").val("");
                            $("#addNumber").val("");
                            layer.closeAll();
                        }
                        else{
                            layer.msg("请正确填写完整信息！");
                        }
                    }
                });
            },
        };

        $('#addItem').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });
    })

    //修改项目
    $('body').on('click', '.select', function(){
        $('#department').val($(this).parent().parent().children('.Name').text());
        $('#date').val($(this).parent().parent().children('.Date').text());
        $('#time').val($(this).parent().parent().children('.Time').text());
        $('#number').val($(this).parent().parent().children('.UpNum').text());

        var num = parseInt($(this).parent().parent().children('.Num').text());
        var id = $(this).parent().parent().children('.Appointment_id').text();
        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            layer.open({
                type: 1
                , title: '修改信息'
                , area: '460px;'
                , shade: 0.3
                , id: 'LAY_2' //防止重复弹出
                , content: $("#change-area")
                , btn: ['确定', '修改']
                , btnAlign: 'c' //按钮居中
                , yes: function () {
                    var upnum = parseInt($('#number').val());
                    alert(upnum);
                    alert(num);
                    if(upnum >= num && upnum > 0) {
                        $.ajax({
                            url: "setAppUpNum",
                            type: "post",
                            data: {
                                id: id,
                                UpNum: upnum,
                            },
                            async: false,
                            success: function (data) {
                                layer.msg("修改成功！");
                                updateData();
                                layer.closeAll();
                                $('#number').attr("disabled",true);
                                $('#department').val(" ");
                                $('#date').val(" ");
                                $('#time').val(" ");
                                $('#number').val(" ");
                            }, error: function (data) {
                                layer.msg("系统错误！");
                            }
                        });
                    } else {
                        layer.msg('请输入正确数据!');
                    }
                },btn2: function(index, layero){
                    $('#number').attr("disabled",false);
                    return false;
                }
            });
        })
    });

    //删除项目
    $('body').on('click', '.delete', function () {
        var id = $(this).parent().parent().children(".Appointment_id").text();
        var planDate = $(this).parent().parent().children(".Date").text();
        var num = parseInt($(this).parent().parent().children(".Num").text());
        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

            var date = new Date(planDate);
            var today = new Date();
            if(date >= today && num > 0){
                layer.prompt({
                    formType: 1,
                    title: '输入密码确认强制删除',
                }, function(value, index, elem){
                    $.ajax({
                        url: "verifyPwd",
                        type: "post",
                        data: {
                            pwd: value,
                        },
                        async: false,
                        success: function (data) {
                            if(data == "success"){
                                layer.msg("验证成功！");
                                $.ajax({
                                    url: "cutAppointment",
                                    type: "post",
                                    data: {
                                        id: id,
                                    },
                                    async: false,
                                    success: function (data) {
                                        layer.msg("删除成功！");
                                        updateData();
                                    }, error: function (data) {
                                    }
                                });
                                layer.close(index);
                            } else {
                                layer.msg("验证失败！");
                                layer.close(index);
                            }
                        }, error: function (data) {
                            layer.msg("系统错误！");
                        }
                    });
                });
            } else {
                layer.confirm('是否确认删除?', { title: '提示' }, function (index) {
                    $.ajax({
                        url: "cutAppointment",
                        type: "post",
                        data: {
                            id: id,
                        },
                        async: false,
                        success: function (data) {
                            layer.msg("删除成功！");
                            updateData();
                            layer.close(index);
                        }, error: function (data) {
                            layer.msg("系统错误！");
                        }
                    });
                });
            }
        });

    });

    //选择添加日期
    $('#addDate').datepicker({
        format: "yyyy-mm-dd",
        autoclose: true,
        todayHighlight: true
    });

    //选择添加时间
    layui.use('laydate', function() {
        var laydate = layui.laydate;

        laydate.render({
            elem: '#addTime'
            ,type: 'time'
            ,min: '08:00:00'
            ,max: '16:00:00'
            ,btns: ['clear', 'confirm']
        });
    });
</script>
</body>

</html>


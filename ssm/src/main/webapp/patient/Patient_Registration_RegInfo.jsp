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
    <title>易医 - 预约历史</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/triage.css">
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <link href='vendor/fullcalendar/core/main.min.css' rel='stylesheet' />
    <link href='vendor/fullcalendar/daygrid/main.min.css' rel='stylesheet' />
    <link href='vendor/fullcalendar/timegrid/main.min.css' rel='stylesheet' />
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">Yiyi</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="Patient_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a></li>
                <li><a class="dropdown-item" href="Patient_Changepwd.html"><i class="fa fa-cog fa-lg"></i> 修改密码</a></li>
                <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
            </ul>
        </li>
    </ul>
</header>

<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="Patient_MedicalRecord.html"><i
                class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">病历</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">分诊服务</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Patient_Triage_AddTriageInfo.html"><i class="icon fa fa-circle-o"></i>
                    智能分诊</a></li>
                <li><a class="treeview-item" href="Patient_Triage_TriageInfo.html" rel="noopener"><i
                        class="icon fa fa-circle-o"></i>分诊历史</a></li>
            </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">挂号</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Patient_Registration_AddRegInfo.html"><i
                        class="icon fa fa-circle-o"></i>门诊预约</a></li>
                <li><a class="treeview-item active" href="Patient_Registration_RegInfo.html"><i
                        class="icon fa fa-circle-o"></i>预约历史</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">药品提示</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Patient_Medicine.html"><i class="icon fa fa-circle-o"></i> 用药提示</a></li>
                <li><a class="treeview-item" href="Patient_Drip.html"><i class="icon fa fa-circle-o"></i>点滴提示</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="Patient_Chat.html"><i class="app-menu__icon fa fa-pie-chart"></i><span
                class="app-menu__label">消息盒子</span></a></li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>预约历史</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">挂号服务</li>
            <li class="breadcrumb-item active"><a style="color:#009688;" href="#">预约历史</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-7">
            <div class="tile">
                <div id="calendar"></div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="tile">
                <h5 class="tile-title" style="text-align: center;">待完成预约</h5>
                <div class="tile-body">
                    <table class="table table-hover" id="Regplan-Table">
                        <thead>
                        <tr>
                            <th class="layui-hide">id</th>
                            <th>时间</th>
                            <th>预约项目</th>
                            <th>预约状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody id="tbody">
                        </tbody>
                        <script type="text/html" id="tbody-script">
                            {{ each data value i }}
                            <tr>
                                <th class="layui-hide Reg_id">{{value.Registration_id}}</th>
                                <td>{{value.time}}</td>
                                <td>{{value.D_Name}}</td>
                                <td>{{value.R_State}}</td>
                                <td><button class="btn btn-primary btn-sm cancel" type="button">取消</button></td>
                            </tr>
                            {{ /each }}
                        </script>
                    </table>
                </div>
            </div>
        </div>
    </div>
</main>

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
<script type="text/javascript" src="../js/plugins/moment.min.js"></script>
<script type="text/javascript" src="../js/plugins/jquery-ui.custom.min.js"></script>
<script type="text/javascript" src="../js/plugins/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>

<script src='vendor/fullcalendar/core/main.js'></script>
<script src='vendor/fullcalendar/interaction/main.min.js'></script>
<script src='vendor/fullcalendar/daygrid/main.min.js'></script>
<script src='vendor/fullcalendar/timegrid/main.min.js'></script>
<!-- Google analytics script-->
<script type="text/javascript">

    function updateData(){
        $("#RegTable").dataTable().fnClearTable();
        $("#RegTable").dataTable().fnDestroy();
        $.ajax({
            url: "getRegByPatientid",
            type: "post",
            success: function (data) {
                console.log(data);
                var i = 0;
                $("#tbody").empty();
                for (i = 0; i < data.length; i++) {
                    data[i]['time'] = data[i]['A_Date'] + " " + data[i]['A_Time'];
                }
                $("#tbody").append(template("tbody-script", {data: data}));
                $("#Regplan-Table").DataTable({
                    'iDisplayLength': 8, //每页初始显示5条记录
                    'bFilter': false,  //是否使用内置的过滤功能（是否去掉搜索框）
                    "bInfo": false, //开关，是否显示表格的一些信息(当前显示XX-XX条数据，共XX条)
                    "bPaginate": false, //开关，是否显示分页器
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
    })

    document.addEventListener('DOMContentLoaded', function () {
        var initialLocaleCode = 'zh-cn';
        var Calendar = FullCalendar.Calendar;

        var calendarEl = document.getElementById('calendar');


        // initialize the calendar
        // -----------------------------------------------------------------

        var calendar = new Calendar(calendarEl, {
            plugins: ['interaction', 'dayGrid', 'timeGrid'],
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,timeGridWeek,timeGridDay'
            },

            locale: initialLocaleCode,
            selectHelper: true,
            selectable: true,

            events: [
            ],

            eventClick:function(info) {
                layui.use('layer', function () { //独立版的layer无需执行这一句
                    var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

                    layer.prompt({
                        formType: 1,
                        title: '输入密码确认取消',
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
                                        url:"delReg",
                                        type: "post",
                                        data: {
                                            regid: info.event.id,
                                        },
                                        success: function (data) {
                                            if(data == 'success'){
                                                layui.use('layer', function(){
                                                    layui.layer.msg("取消成功！");
                                                })
                                                console.log(data);
                                                var event = calendar.getEventById(info.event.id);
                                                event.remove();
                                                updateData();
                                            }
                                            else {
                                                layui.use('layer', function(){
                                                    layui.layer.msg("无法取消当天预约！");
                                                })
                                            }
                                        },
                                        error: function (data) {
                                            console.log(data);
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
                    return false;
                })

            },
        });


        $('body').on('click', '.cancel',function(){
            var reg_id = $(this).parent().parent().children(".Reg_id").text();

            layui.use('layer', function () { //独立版的layer无需执行这一句
                var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

                layer.prompt({
                    formType: 1,
                    title: '输入密码确认取消',
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
                                    url:"delReg",
                                    type: "post",
                                    data: {
                                        regid: reg_id,
                                    },
                                    success: function (data) {
                                        if(data == 'success'){
                                            layui.use('layer', function(){
                                                layui.layer.msg("取消成功！");
                                            })
                                            console.log(data);
                                            var event = calendar.getEventById(reg_id);
                                            event.remove();
                                            updateData();
                                        }
                                        else {
                                            layui.use('layer', function(){
                                                layui.layer.msg("无法取消当天预约！");
                                            })
                                        }
                                    },
                                    error: function (data) {
                                        console.log(data);
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
                return false;
            })
        })

        function updateReg(){
            $.ajax({
                url: "getRegByPatientid",
                type: "post",
                success: function (data) {
                    console.log(data);
                    for(x in data)
                    {
                        data[x]['endTime'] = (parseInt(data[x]['A_Time'].substr(0, 2))+2).toString() + ":00:00";
                        var event={id:data[x].Registration_id, title:data[x].D_Name, start:data[x].A_Date + " " + data[x].A_Time, end:data[x].A_Date + " " +data[x].endTime};
                        calendar.addEvent(event);
                    }
                }, error: function (data) {
                }
            });
        }

        updateReg();

        calendar.render();
    });

</script>
</body>

</html>

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
    <title>易医 - 查看预约</title>
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
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown"
                                aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="Staff_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a>
                </li>
                <li><a class="dropdown-item" href="Staff_Changepwd.html"><i class="fa fa-cog fa-lg"></i> 修改密码</a>
                </li>
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
        <li><a class="app-menu__item active" href="Doctor_Call.html"><i
                class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">查看预约</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">病历</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Doctor_MedicalRecord_Add.html"><i
                        class="icon fa fa-circle-o"></i> 新增病历</a>
                </li>
                <li><a class="treeview-item" href="Doctor_MedicalRecord_History.html"><i
                        class="icon fa fa-circle-o"></i>
                    历史记录</a></li>
                <li><a class="treeview-item" href="Doctor_MedicalRecord_Search.html"><i
                        class="icon fa fa-circle-o"></i>
                    病患查找</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">点滴提示</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Nurse_Drip_Add.html"><i class="icon fa fa-circle-o"></i>添加清单</a>
                </li>
                <li><a class="treeview-item" href="Nurse_Drip.html"><i class="icon fa fa-circle-o"></i> 查看清单</a>
                </li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="Staff_Triage_UpdateTriageInfo.html"><i
                class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">分诊管理</span></a></li>

        <li><a class="app-menu__item" href="Staff_Chat.html"><i class="app-menu__icon fa fa-file-text"></i><span
                class="app-menu__label">消息盒子</span></a></li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>查看预约</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">查看预约</a></li>
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
                        <button class="btn btn-outline-primary" type="button"
                                style="float: right;margin-left: 10px;" id="call">叫号</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tile-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="Table">
                                    <thead>
                                    <tr>
                                        <th>预约时间</th>
                                        <th>患者姓名</th>
                                        <th>患者性别</th>
                                        <th>患者年龄</th>
                                        <th>手机号</th>
                                        <th>预约状态</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    </tbody>
                                    <script type="text/html" id="tbody-script">
                                        {{each data value i}}
                                    <tr>
                                        <td>{{value.R_TimeRegistration}}</td>
                                        <td>{{value.U_Name}}</td>
                                        <td>{{value.U_Gender}}</td>
                                        <td>{{value.Age}}</td>
                                        <td>{{value.U_PhoneNumber}}</td>
                                        <td>{{value.R_State}}</td>
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

<div id="info">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
        <div class="row">
            <h4 class="col-md-4" style="text-align: right">患者姓名：</h4>
            <h1 class="col-md-8" id="patientName"></h1>
        </div>
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

<!-- Google analytics script-->
<script type="text/javascript">

    function updateData(){
        $("#Table").dataTable().fnClearTable();
        $("#Table").dataTable().fnDestroy();
        $.ajax({
            url: "getRegByDepartmentid",
            type: "post",
            success: function (data) {
                console.log(data);
                var i = 0;
                $("#tbody").empty();
                for (i = 0; i < data.length; i++) {
                    var birthDay = new Date(data[i]['P_Birthday']);
                    var nowDate = new Date();
                    var diff = nowDate.getTime() - birthDay.getTime();
                    var age = Math.floor(diff / 1000 / 60 / 60 / 24 / 365);
                    data[i]['Age'] = age;

                    var date = new Date(data[i]['R_TimeRegistration']);
                    data[i]["R_TimeRegistration"] = date.toLocaleDateString().replace(/\//g, "-") + " " + date.toTimeString().substr(0, 8);
                }
                $("#tbody").append(template("tbody-script", {data: data}));
                $("#Table").DataTable({
                    'iDisplayLength': 5, //每页初始显示5条记录
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
        $("#info").hide();
    });

    $('body').on('click','#call', function(){
        $.ajax({
            url: "updateRegStateAndD",
            type: "post",
            success: function (data) {
                console.log(data);
                if(data != null) {
                    layui.use('layer', function () { //独立版的layer无需执行这一句
                        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                        document.getElementById("patientName").innerHTML = data["U_Name"];

                        layer.open({
                            type: 1
                            , title: '确认信息'
                            , area: '340px;'
                            , shade: 0.3
                            , id: 'LAY_2' //防止重复弹出
                            , content: $("#info")
                            , btn: ['下一个', '进入病历']
                            , btnAlign: 'c' //按钮居中
                            , yes: function () {
                                $.ajax({
                                    url: "updateRegState",
                                    type: "post",
                                    data: {
                                        regid: data['Registration_id'],
                                        state: "已失效",
                                    },
                                    success: function (data) {
                                        console.log(data);
                                        layer.closeAll();
                                    }
                                });
                            }, btn2: function (index, layero) {
                                $.ajax({
                                    url: "updateRegState",
                                    type: "post",
                                    data: {
                                        regid: data['Registration_id'],
                                        state: "正在就诊",
                                    },
                                    success: function (data) {
                                        console.log(data);
                                        updateData();
                                        layer.closeAll();
                                    }
                                });
                            }
                        });
                    })
                }
                else {
                    layui.use('layer', function () { //独立版的layer无需执行这一句
                        layui.layer.msg("暂无新预约！");
                    });
                }

            }, error: function (data) {
                console.log(data);
            }
        })
    })

</script>
</body>

</html>
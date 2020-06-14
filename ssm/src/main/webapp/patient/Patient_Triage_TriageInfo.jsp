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
    <title>易医 - 分诊信息</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/triage.css">
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="../css/font-awesome.min.css">
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
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">分诊服务</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Patient_Triage_AddTriageInfo.html"><i class="icon fa fa-circle-o"></i>
                    智能分诊</a></li>
                <li><a class="treeview-item active" href="Patient_Triage_TriageInfo.html" rel="noopener"><i
                        class="icon fa fa-circle-o"></i>分诊历史</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">挂号</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Patient_Registration_AddRegInfo.html"><i
                        class="icon fa fa-circle-o"></i>门诊预约</a></li>
                <li><a class="treeview-item" href="Patient_Registration_RegInfo.html"><i
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
            <h1>分诊结果</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">分诊服务</li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">分诊结果</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">待人工分诊记录</h3>
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                            <tr>
                                <th>提交时间</th>
                                <th>详情描述</th>
                                <th>智能分诊结果</th>
                                <th>智能分诊准确度</th>
                                <th>预约挂号</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tbody id="beforetbody">

                            </tbody>
                            <script type="text/html" id="beforetbody-script">
                                {{ each data value i }}
                                <tr class="table-data-line">
                                    <td> {{ value.submitTime }} </td>
                                    <td> {{ value.remark }}</td>
                                    <td> {{ value.autoResult }}</td>
                                    <td> {{ value.rate }}</td>
                                    <td><button class="btn btn-primary btn-sm registration" type="button">预约挂号</button></td>
                                </tr>
                                {{ /each }}
                            </script>

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <h3 class="tile-title">分诊历史记录</h3>
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="sampleTable1">
                            <thead>
                            <tr>
                                <th>提交时间</th>
                                <th>详情描述</th>
                                <th>智能分诊结果</th>
                                <th>分诊时间</th>
                                <th>人工分诊结果</th>
                                <th>预约挂号</th>
                            </tr>
                            </thead>
                            <tbody id="aftertbody">
                            </tbody>
                            <script type="text/html" id="aftertbody-script">
                                {{ each data value i }}
                                <tr class="table-data-line">
                                    <td> {{ value.submitTime }} </td>
                                    <td> {{ value.remark }}</td>
                                    <td> {{ value.autoResult }}</td>
                                    <td> {{ value.triageTime }} </td>
                                    <td> {{ value.result }}</td>
                                    <td><button class="btn btn-primary btn-sm registration" type="button">预约挂号</button></td>
                                </tr>
                                {{ /each }}
                            </script>
                        </table>
                    </div>
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
<script src="../js/template.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<script src="../layui/layui.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
    $('#sampleTable').DataTable();
    $('#sampleTable1').DataTable();
</script>
<!-- Google analytics script-->
<script type="text/javascript">

    $(document).ready(function () {
        $.ajax({
            url: "getByStateandUserid",
            type: "post",
            data: {
                state: '未人工分诊',
            },
            success: function (data) {
                console.log(data);
                var i = 0;
                $("#beforetbody").empty();
                for(i = 0; i < data.length; i++){
                    var date = new Date(data[i]["submitTime"]);
                    data[i]["submitTime"] = date.toLocaleDateString().replace(/\//g, "-") + " " + date.toTimeString().substr(0, 8);
                 }
                $("#beforetbody").append(template("beforetbody-script", { data: data }));
            }, error: function (data) {
                console.log(data);
            }
        });

        $.ajax({
            url: "getByStateandUserid",
            type: "post",
            data: {
                state: '已人工分诊',
            },
            success: function (data) {
                console.log(data);
                var i = 0;
                for(i = 0; i < data.length; i++){
                    var date = new Date(data[i]["submitTime"]);
                    data[i]["submitTime"] = date.toLocaleDateString().replace(/\//g, "-") + " " + date.toTimeString().substr(0, 8);
                    var date = new Date(data[i]["triageTime"]);
                    data[i]["triageTime"] = date.toLocaleDateString().replace(/\//g, "-") + " " + date.toTimeString().substr(0, 8);
                }
                $("#aftertbody").empty();
                $("#aftertbody").append(template("aftertbody-script", { data: data }));
            }, error: function (data) {
                console.log(data);
            }
        });
    });

    $("body").on("click", ".registration", function(){
        window.location.href = "/Patient_Registration_AddRegInfo";
    })

</script>
</body>

</html>


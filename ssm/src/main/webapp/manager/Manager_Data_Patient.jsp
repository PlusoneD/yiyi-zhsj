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
        <li><a class="app-menu__item" href="Manager_Appointment.html"><i class="app-menu__icon fa fa-dashboard"></i><span
                class="app-menu__label">预约管理</span></a></li>
        <li><a class="app-menu__item" href="Manager_Drug.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">药品管理</span></i></a>

        </li>
        <li><a class="app-menu__item" href="Manager_Symptom.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">病症管理</span></i></a>

        </li>
        <li class="treeview  is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">用户管理</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item active" href="Manager_Data_Patient.html"><i
                        class="icon fa fa-circle-o"></i>患者管理</a></li>
                <li><a class="treeview-item" href="Manager_Data_Staff.html"><i class="icon fa fa-circle-o"></i>职工管理</a></li>
            </ul>
        </li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>用户管理</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">用户管理</li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">患者资料</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="sampleTable">
                            <thead>
                            <tr>
                                <th class="hidden">id</th>
                                <th>姓名</th>
                                <th>性别</th>
                                <th>出生日期</th>
                                <th>手机号</th>
                                <th>邮箱</th>
                                <th>社保卡号</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            </tbody>
                            <script type="text/html" id="tbody-script">
                                {{ each data value i }}
                                <tr>
                                    <td class="hidden Patient_id">{{value.Patient_id}}</td>
                                    <td>{{value.Name}}</td>
                                    <td>{{value.Gender}}</td>
                                    <td>{{value.Birthday}}</td>
                                    <td>{{value.PhoneNumber}}</td>
                                    <td>{{value.MailAddress}}</td>
                                    <td>{{value.MedicalInsuranceCardNumber}}</td>
                                    <td><button class="btn btn-primary btn-sm reset" type="button">恢复原始密码</button></td>
                                </tr>
                                {{ /each  }}
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
<!-- The javascript plugin to display page loading on top-->
<script src="../js/plugins/pace.min.js"></script>
<script src="../layui/layui.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="../js/template.js"></script>

<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }

    $(document).ready(function () {

        $.ajax({
            url: "getAllPatient",
            type: "post",
            success: function (data) {
                console.log(data);
                $("#tbody").append(template("tbody-script", { data: data }));
                $('#sampleTable').DataTable();
            }, error: function (data) {
                console.log(data);
            }
        })
    });

    //恢复默认密码
    $('body').on('click', '.reset', function () {
        var id = $(this).parent().parent().children(".Patient_id").text();

        $.ajax({
            url: "setUserPwdByAdmin",
            data:{
                id: id,
                pwd:"123456",
            },
            type: "post",
            async:false,
            success: function (data) {
                console.log(data);
                layui.use('layer', function () { //独立版的layer无需执行这一句
                    var layer = layui.layer; //独立版的layer无需执行这一句
                    layer.msg("设置成功！");
                });
            }, error: function (data) {
                console.log(data);
            }
        })

    });




</script>
</body>

</html>

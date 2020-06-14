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
    <title>易医 - 分诊管理</title>
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
                <li><a class="dropdown-item" href="Staff_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a></li>
                <li><a class="dropdown-item" href="Staff_Changepwd.html"><i class="fa fa-cog fa-lg"></i> 修改密码</a></li>
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
        <li><a class="app-menu__item active" href="Doctor_Call.html"><i class="app-menu__icon fa fa-pie-chart"></i><span
                class="app-menu__label">查看预约</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">病历</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Doctor_MedicalRecord_Add.html"><i class="icon fa fa-circle-o"></i> 新增病历</a>
                </li>
                <li><a class="treeview-item" href="Doctor_MedicalRecord_History.html"><i class="icon fa fa-circle-o"></i>
                    历史记录</a></li>
                <li><a class="treeview-item" href="Doctor_MedicalRecord_Search.html"><i class="icon fa fa-circle-o"></i>
                    病患查找</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">点滴提示</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Nurse_Drip_Add.html"><i class="icon fa fa-circle-o"></i>添加清单</a>
                </li>
                <li><a class="treeview-item" href="Nurse_Drip.html"><i class="icon fa fa-circle-o"></i> 查看清单</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item active" href="Staff_Triage_UpdateTriageInfo.html"><i
                class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">分诊管理</span></a></li>

        <li><a class="app-menu__item" href="Staff_Chat.html"><i class="app-menu__icon fa fa-file-text"></i><span
                class="app-menu__label">消息盒子</span></a></li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>分诊管理</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">分诊管理</a></li>
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
                                style="float: right;margin-left: 10px;" id="get">获取请求</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tile-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="Table">
                                    <thead>
                                    <tr>
                                        <th class="layui-hide">id</th>
                                        <th style="max-width: 100px">提交时间</th>
                                        <th style="max-width: 60px">患者姓名</th>
                                        <th style="max-width: 60px">患者性别</th>
                                        <th style="max-width: 60px">患者年龄</th>
                                        <th>详情描述</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    </tbody>
                                    <script type="text/html" id="tbody-script">
                                        {{ each data value i }}
                                        <tr>
                                            <td class="layui-hide">{{value.Triage_id}}</td>
                                            <td>{{value.T_SubmitTime}}</td>
                                            <td>{{value.U_Name}}</td>
                                            <td>{{value.U_Gender}}</td>
                                            <td>{{value.Age}}</td>
                                            <td>{{value.T_Remark}}</td>
                                        </tr>
                                        {{ /each }}
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

<div id="change">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
        <form class="form-horizontal">
            <div class="col-md-8 layui-hide" id="triageid" style="font-weight: bold">
            </div>
            <div class="row" style="padding:10px">
                <label class="control-label col-md-3">患者姓名</label>
                <div class="col-md-8" id="name" style="font-weight: bold">
            </div>
            </div>
            <div class="row" style="padding: 10px">
                <label class="control-label col-md-3">患者性别</label>
                <div class="col-md-8" id="gender" style="font-weight: bold">
                </div>
            </div>
            <div class="row" style="padding: 10px">
                <label class="control-label col-md-3">患者年龄</label>
                <div class="col-md-8" id="age" style="font-weight: bold">
                </div>
            </div>
            <div class="row" style="padding: 10px">
                <label class="control-label col-md-3">病症描述</label>
                <div class="col-md-8" id="remark" style="font-weight: bold">
                </div>
            </div>
            <div class="row" style="padding: 10px">
                <label class="control-label col-md-3">智能分诊</label>
                <div class="col-md-8" id="auto" style="font-weight: bold">
                </div>
            </div>

            <div class="form-group row" style="padding: 10px">
                <label class="control-label col-md-3">人工分诊</label>
                <div class="col-md-8">
                    <select class="form-control" id="dep">
                    </select>
                    <script type="text/html" id="addDep-script">
                        <optgroup label="请选择科室">
                            {{each data value i}}
                            <option value="{{value.name}}">{{value.name}}</option>
                            {{/each}}
                        </optgroup>
                    </script>
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
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/template.js"></script>

<!-- Google analytics script-->
<script type="text/javascript">

    function updateData(){
        $("#Table").dataTable().fnClearTable();
        $("#Table").dataTable().fnDestroy();
        $.ajax({
            url: "getByState",
            type: "post",
            data:{
                state:"未人工分诊",
            },
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

                    var date = new Date(data[i]['T_SubmitTime']);
                    data[i]["T_SubmitTime"] = date.toLocaleDateString().replace(/\//g, "-") + " " + date.toTimeString().substr(0, 8);
                }
                $("#tbody").append(template("tbody-script", { data: data }));

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
        })
    }

    $(document).ready(function () {

        $("#change").hide();
        $.ajax({
            url: "getAllDep",
            type: "post",
            success: function (data) {
                console.log(data);
                $("#dep").append(template("addDep-script", { data: data }));
            }, error: function (data) {
                console.log(data);
            }
        })

        updateData();
    });

    $("body").on("click","#get", function(){
        $.ajax({
            url: "getByState",
            type: "post",
            data:{
                state:"未人工分诊",
            },
            success: function (data) {
                console.log(data);
                if(data.length > 0) {
                    layui.use('layer', function () { //独立版的layer无需执行这一句
                        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
                        document.getElementById("name").innerHTML = data[0]["U_Name"];
                        document.getElementById("gender").innerHTML = data[0]["U_Gender"];
                        var birthDay = new Date(data[0]['P_Birthday']);
                        var nowDate = new Date();
                        var diff = nowDate.getTime() - birthDay.getTime();
                        var age = Math.floor(diff / 1000 / 60 / 60 / 24 / 365);
                        document.getElementById("age").innerHTML = age;

                        document.getElementById("remark").innerHTML = data[0]["T_Remark"];
                        if(data[0]["T_AutoResult"]!=null && data[0]["T_AutoResult"]!=null) {
                            document.getElementById("auto").innerHTML = data[0]["T_AutoResult"] + "  (" + data[0]["T_Rate"] + ")";
                        }
                        document.getElementById("triageid").innerHTML =  data[0]["Triage_id"];

                        layer.open({
                            type: 1
                            , title: '确认信息'
                            , area: '500px;'
                            , shade: 0.3
                            , id: 'LAY_2' //防止重复弹出
                            , content: $("#change")
                            , btn: ['确认']
                            , btnAlign: 'c' //按钮居中
                            , yes: function () {
                                $.ajax({
                                    url: "updateTriageState",
                                    type: "post",
                                    data: {
                                        triageid: $("#triageid").text(),
                                        depname: $("#dep").val(),
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
                        layui.layer.msg("暂无新的分诊请求！");
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
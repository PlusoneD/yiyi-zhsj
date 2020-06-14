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
                <li><a class="treeview-item" href="Manager_Data_Patient.html"><i class="icon fa fa-circle-o"></i>患者管理</a></li>
                <li><a class="treeview-item active" href="Manager_Data_Staff.html"><i class="icon fa fa-circle-o"></i>职工管理</a>
                </li>
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
            <li class="breadcrumb-item">用户管理</a></li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">职工资料</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="row" style="margin-top: 10px;margin-bottom: 20px;">
                    <div class="col-md-6"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                        <button class="btn btn-outline-primary" type="button" style="float: right;margin-left: 10px;"
                                data-method="addUser" id="addUser">添加用户</button>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tile-body">
                            <div class="table-responsive">
                                <table class="table table-hover table-bordered" id="StaffTable">
                                    <thead>
                                    <tr>
                                        <th class="hidden">编号</th>
                                        <th>工号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>职业</th>
                                        <th>职务</th>
                                        <th>手机号</th>
                                        <th style="min-width: 200px">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    </tbody>
                                    <script type="text/html" id="tbody-script">
                                        {{each data value i}}
                                    <tr>
                                        <td class="Staff_id hidden">{{value.Staff_id}}</td>
                                        <td>{{value.EmpNum}}</td>
                                        <td>{{value.Name}}</td>
                                        <td>{{value.Gender}}</td>
                                        <td>{{value.Identity}}</td>
                                        <td>{{value.Title}}</td>
                                        <td>{{value.PhoneNumber}}</td>
                                        <td><button class="btn btn-primary btn-sm viewInfo" type="button">查看</button>
                                            <button class="btn btn-primary btn-sm delete" type="button">删除</button>
                                            <button class="btn btn-primary btn-sm reset" type="button">恢复原始密码</button></td>
                                    </tr>
                                        {{/each }}
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
                <label class="control-label col-md-3">姓名</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" placeholder="请填写姓名" id="addName">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">工号</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" placeholder="请填写工号" id="addEmpNum">
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">身份</label>
                <div class="col-md-8">
                    <select class="form-control" id="addIdentity">
                        <optgroup label="选择身份">
                            <option value="Doctor">医生</option>
                            <option value="Nurse">护士</option>
                            <option value="TriagePerson">分诊人员</option>
                            <option value="Manager">管理员</option>
                        </optgroup>
                    </select>
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">科室</label>
                <div class="col-md-8">
                    <select class="form-control" id="addDep">
                    </select>
                    <script type="text/html" id="addDep-script">
                        <optgroup label="选择科室">
                            {{each data value i}}
                            <option value="{{value.department_id}}">{{value.name}}</option>
                            {{/each}}
                            <option value="0">分诊部</option>
                            <option value="1">系统管理部</option>
                        </optgroup>
                    </script>
                </div>
            </div>
            <div class="form-group row">
                <label class="control-label col-md-3">性别</label>
                <div class="col-md-8">
                    <div class="animated-radio-button">
                        <label>
                            <input class="form-check-input" type="radio" name="addGender" value="男"><span class="label-text">男</span>
                        </label>
                    &nbsp;&nbsp;&nbsp;
                        <label>
                            <input class="form-check-input" type="radio" name="addGender" value="女"><span class="label-text">女</span>
                        </label>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<div id="view">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
        <form class="form-horizontal">
            <div class="form-group row" id="name">
                <label class="control-label col-md-3">姓名</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewName">
                </div>
            </div>
            <div class="form-group row hidden" id="identity">
                <label class="control-label col-md-3">职业</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewIdentity">
                </div>
            </div>
            <div class="form-group row hidden" id="dep">
                <label class="control-label col-md-3">科室</label>
                <div class="col-md-8">
                    <select class="form-control" id="viewDep" disabled="">
                    </select>
                    <script type="text/html" id="viewDep-script">
                        <optgroup label="选择科室">
                            {{each data value i}}
                            <option value="{{value.department_id}}">{{value.name}}</option>
                            {{/each}}
                        </optgroup>
                    </script>
                </div>
            </div>
            <div class="form-group row hidden" id="title">
                <label class="control-label col-md-3">职务</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewTitle">
                </div>
            </div>
            <div class="form-group row hidden" id="background">
                <label class="control-label col-md-3">背景</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewBackground">
                </div>
            </div>
            <div class="form-group row hidden" id="specialization">
                <label class="control-label col-md-3">专长</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewSpecialization">
                </div>
            </div>
            <div class="form-group row hidden" id="description">
                <label class="control-label col-md-3">描述</label>
                <div class="col-md-8">
                    <input class="form-control" type="text" disabled="" id="viewDescription">
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
<script type="text/javascript">

</script>
<!-- Google analytics script-->
<script type="text/javascript">

    function updateData(){
        $("#StaffTable").dataTable().fnClearTable();
        $("#StaffTable").dataTable().fnDestroy();
        $.ajax({
            url: "getAllStaff",
            type: "post",
            success: function (data) {
                console.log(data);
                $("#tbody").append(template("tbody-script", { data: data }));

                 $('#StaffTable').DataTable({
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
        })
    }

    $(document).ready(function () {
            $("#add").hide();
            $("#view").hide();
            updateData();
            $.ajax({
                url: "getAllDep",
                type: "post",
                success: function (data) {
                    console.log(data);
                    $("#addDep").append(template("addDep-script", { data: data }));
                    $("#viewDep").append(template("viewDep-script", { data: data }));
                }, error: function (data) {
                    console.log(data);
                }
            })

    });

    //添加用户
    layui.use('layer', function () { //独立版的layer无需执行这一句
        var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

        //触发事件
        var active = {
            addUser: function (othis) {
                layer.open({
                    type: 1
                    , title: '添加用户'
                    , area: '400px;'
                    , shade: 0.3
                    , id: 'LAY_1' //防止重复弹出
                    , content: $("#add")
                    , btn: ['确定', '取消']
                    , btnAlign: 'c' //按钮居中
                    , yes: function () {
                        var name = $("#addName").val();
                        var empnum = $("#addEmpNum").val();
                        var identity = $("#addIdentity").val();
                        var depid = $("#addDep").val();
                        var gender = $(':radio[name=addGender]:checked').val();
                        if(name.length > 0 && empnum.length > 0 && identity != null && depid != null && gender!=null) {
                            $.ajax({
                                url: "addStaff",
                                data: {
                                    name: name,
                                    empnum: empnum,
                                    identity: identity,
                                    depid: depid,
                                    gender: gender,
                                },
                                type: "post",
                                success: function (data) {
                                    layer.msg("添加成功！");
                                }, error: function (data) {
                                    console.log(data);
                                }
                            })
                            $("#addName").val("");
                            $("#addEmpNum").val("");
                            $("#addIdentity").val("");
                            $("#addDep").val("");
                            $(':radio[name=addGender]:checked').val("");
                            layer.closeAll();
                        }
                        else {
                            layer.msg("请正确填写完整信息！");
                        }
                    }
                });
            },
        };

        $('#addUser').on('click', function () {
            var othis = $(this), method = othis.data('method');
            active[method] ? active[method].call(this, othis) : '';
        });
    })

    //查看修改信息
    $('body').on('click', '.viewInfo', function () {
        var Staff_id = $(this).parent().parent().children(".Staff_id").text();
        $("#viewName").val(" ");
        $("#viewIdentity").val(" ");
        $("#viewDep").val(" ");
        $("#viewTitle").val(" ");
        $("#viewBackground").val(" ");
        $("#viewSpecialization").val(" ");
        $("#viewDescription").val(" ");
        $('#dep').show();
        $('#title').show();
        $('#background').show();
        $('#specialization').show();
        $('#description').show();

        $.ajax({
            url: "getStaffInfo",
            type: "post",
            data:{
                id: Staff_id,
            },
            success: function (data) {
                console.log(data);
                if(data["Identity"] == "Doctor") {
                    $("#viewName").val(data['Name']);
                    $("#viewIdentity").val(data["Identity"]);
                    $("#viewDep").val(data["Doctor"]["department_id"]);
                    $("#viewTitle").val(data["Title"]);
                    $("#viewBackground").val(data["Doctor"]["d_Background"]);
                    $("#viewSpecialization").val(data["Doctor"]['d_Specialization']);
                    $("#viewDescription").val(data["Doctor"]['d_Description']);
                } else if (data["Identity"] == "Nurse") {
                    $("#viewName").val(data['Name']);
                    $("#viewIdentity").val(data["Identity"]);
                    $("#viewDep").val(data["Nurse"]["department_id"]);
                    $("#viewTitle").val(data["Title"]);
                    $("#background").hide();
                    $("#specialization").hide();
                    $("#description").hide();
                } else if (data["Identity"] == "TriagePerson" || data["Identity"] == "Manager") {
                    $("#viewName").val(data['Name']);
                    $("#viewIdentity").val(data["Identity"]);
                    $("#dep").hide();
                    $("#title").hide();
                    $("#background").hide();
                    $("#specialization").hide();
                    $("#description").hide();
                }
            }, error: function (data) {
                layer.msg("系统错误！");
                console.log(data);
            }
        })

        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            layer.open({
                type: 1
                , title: '查看用户信息'
                , area: '500px;'
                , shade: 0.3
                , id: 'LAY_2' //防止重复弹出
                , content: $("#view")
                , btn: ['确定', '修改']
                , btnAlign: 'c' //按钮居中
                , yes: function () {
                    if($("#viewIdentity").val() == "Doctor") {
                        $.ajax({
                            url: "setDoctorInfo",
                            data:{
                                id: Staff_id,
                                depid: $("#viewDep").val(),
                                title: $("#viewTitle").val(),
                                background: $("#viewBackground").val(),
                                specialization: $("#viewSpecialization").val(),
                                description: $("#viewDescription").val(),
                            },
                            type: "post",
                            success: function (data) {
                                layer.msg("操作成功！");
                                updateData();
                            }, error: function (data) {
                                console.log(data);
                            }
                        })
                    }
                    else if($("#viewIdentity").val() == "Nurse") {
                        $.ajax({
                            url: "setNurseInfo",
                            data:{
                                id: Staff_id,
                                depid: $("#viewDep").val(),
                                title: $("#viewTitle").val(),
                            },
                            type: "post",
                            success: function (data) {
                                layer.msg("操作成功！");
                                updateData();
                            }, error: function (data) {
                                console.log(data);
                            }
                        })
                    }

                    layer.closeAll();

                    $('#viewDep').attr("disabled", true);
                    $('#viewTitle').attr("disabled", true);
                    $('#viewBackground').attr("disabled", true);
                    $('#viewSpecialization').attr("disabled", true);
                    $('#viewDescription').attr("disabled", true);


                }
                , btn2: function(index, layero){
                    if($("#viewIdentity").val() == "Doctor") {
                        $('#viewDep').attr("disabled", false);
                        $('#viewTitle').attr("disabled", false);
                        $('#viewBackground').attr("disabled", false);
                        $('#viewSpecialization').attr("disabled", false);
                        $('#viewDescription').attr("disabled", false);
                    } else if($("#viewIdentity").val() == "Nurse") {
                        $('#viewDep').attr("disabled", false);
                        $('#viewTitle').attr("disabled", false);
                    } else {
                        layer.msg("无可修改项！");
                    }
                    return false;
                }
            });
        })


        return false;
    })


    //恢复默认密码
    $('body').on('click', '.reset', function () {
        var id = $(this).parent().parent().children(".Staff_id").text();

        $.ajax({
            url: "setUserPwdByAdmin",
            data:{
                id:id,
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
                layer.msg("系统错误！");
                console.log(data);
            }
        })

    });

    //删除
    $('body').on('click', '.delete', function () {
        var id = $(this).parent().parent().children(".Staff_id").text();
        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句

            layer.prompt({
                formType: 1,
                title: '输入密码确认删除',
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
                                url: "cutStaff",
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
        return false;
    })
    });
</script>
</body>

</html>
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
    <title>易医 - 门诊预约</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/triage.css">

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
                <li><a class="treeview-item active" href="Patient_Registration_AddRegInfo.html"><i
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
            <h1>门诊预约</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">挂号服务</li>
            <li class="breadcrumb-item active"><a style="color:#009688;" href="#">门诊预约</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-7">
            <div class="tile">
                <h3 class="tile-title" style="text-align: center;">出诊信息</h3>
                <div class="tile-body">
                    <div class="table-responsive">
                        <table class="table table-hover table-bordered" id="RegTable">
                            <thead>
                            <tr>
                                <th></th>
                                <th>科室</th>
                                <th>预约日期</th>
                                <th>时间段</th>
                                <th>剩余人数</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            </tbody>
                            <script type="text/html" id="tbody-script">
                                {{ each data value i }}
                                <tr>
                                    <td>
                                        <div class="animated-radio-button">
                                            <label>
                                                <input class="form-check-input" type="radio" name="item" value="{{value.App_id}}"><span class="label-text"></span>
                                            </label>
                                        </div>
                                    </td>
                                    <td class="D_Name">{{value.D_Name}}</td>
                                    <td class="A_Date">{{value.A_Date}}</td>
                                    <td class="A_Time">{{value.A_Time}}-{{value.endTime}}</td>
                                    <td>{{value.remainNum}}</td>
                                </tr>
                                {{ /each }}
                            </script>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-5">
            <div class="tile">
                <h3 class="tile-title" style="text-align: center;">预约单</h3>
                <div class="tile-body">
                    <form class="form-horizontal">
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: bottom;margin-top: 10px;">真实姓名*</label>
                            <div class="col-md-8">
                                <input class="form-control" id="name" type="text" placeholder="请输入真实姓名">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: bottom;margin-top: 10px;">出生日期*</label>
                            <div class="col-md-8">
                                <input class="form-control" id="birthday" type="text" placeholder="请输入出生日期">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: middle;margin-top: 10px;">电话号码</label>
                            <div class="col-md-8">
                                <input class="form-control" id="phone" type="text" placeholder="请输入电话号码"></input>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: middle;margin-top: 10px;">性别*</label>
                            <div class="col-md-9">
                                <div class="animated-radio-button">
                                    <label>
                                        <input class="form-check-input" type="radio" name="gender" value="男"><span class="label-text">男</span>
                                    </label>
                                    &nbsp;&nbsp;&nbsp;
                                    <label>
                                        <input class="form-check-input" type="radio" name="gender" value="女"><span class="label-text">女</span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: middle;margin-top: 10px;">医保卡号</label>
                            <div class="col-md-8">
                                <input class="form-control" id="number" type="text" placeholder="医保病人必填">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="control-label col-md-3"
                                   style="text-align: center;vertical-align: middle;margin-top: 10px;">您的预约*</label>
                            <div class="col-md-8">
                                <input class="form-control" type="text" disabled="" placeholder="请于左侧选择获取" id="selectedItem">
                            </div>
                        </div>
                    </form>
                </div>

                <div class="tile-footer">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-3">
                            <button class="btn btn-primary" type="button" id="submit"><i
                                    class="fa fa-fw fa-lg fa-check-circle"></i>提交</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary"
                                                                                                               id="reset"><i class="fa fa-fw fa-lg fa-times-circle"></i>重置</a>
                        </div>
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
<script src="../js/template.js"></script>
<!-- Page specific javascripts-->
<script type="text/javascript" src="../js/plugins/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
<!-- Google analytics script-->
<script type="text/javascript">

    function updateData(){
        $("#RegTable").dataTable().fnClearTable();
        $("#RegTable").dataTable().fnDestroy();
        $.ajax({
            url: "getAllApp",
            type: "post",
            async: false,
            success: function (data) {
                console.log(data);
                var i = 0;
                $("#tbody").empty();
                for (i = 0; i < data.length; i++) {
                    data[i]['remainNum'] = data[i]['A_UpNum'] - data[i]['A_Num'];
                    data[i]['endTime'] = (parseInt(data[i]['A_Time'].substr(0, 2))+2).toString() + ":00:00";
                }
                console.log(data);
                $("#tbody").append(template("tbody-script", {data: data}));
                $("#RegTable").DataTable({
                    'iDisplayLength': 6, //每页初始显示5条记录
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

        $.ajax({
            url: "getPInfo",
            type: "post",
            async: false,
            success: function (data) {
                console.log(data);
                $("#name").val(data[0]["Name"]);
                $("#birthday").val(data[0]["Birthday"]);
                $("#number").val(data[0]["MedicalInsuranceCardNumber"]);
                $("#phone").val(data[0]["PhoneNumber"]);
                if(data[0]["Gender"] == "男"){
                    $("input[name=gender][value=\"男\"]").attr("checked",true);
                } else if (data[0]["Gender"] == "女") {
                    $("input[name=gender][value=\"女\"]").attr("checked",true);
                }
            }, error: function (data) {
                console.log(data);
            }
        })
    }

    //开启页面
    $(document).ready(function () {
        updateData();
    });

    //时间选择
    layui.use('laydate', function(){
        var laydate = layui.laydate;

        laydate.render({
            elem: '#birthday'
        });
    });

    //选择项目
    $('body').on('click', 'input[type=radio][name=item]', function () {

        var Name = $(this).parent().parent().parent().parent().children('.D_Name').text();
        var Date = $(this).parent().parent().parent().parent().children('.A_Date').text();
        var Time = $(this).parent().parent().parent().parent().children('.A_Time').text();

        $("#selectedItem").val(Name + "  " + Date + "  " + Time);
    });

    //重置
    $('body').on('click', '#reset', function () {
        $("#name").val("");
        $("#birthday").val("");
        $("#phone").val("");
        $("#number").val("");
        $("#selectedItem").val("");
        $("input[name=gender]").attr("checked",false);
        $("input[name=gender]").removeAttr("checked");
        $("input[name=item]").attr("checked",false);
        $("input[name=item]").removeAttr("checked");
    });


    $('body').on('click', '#submit', function () {
        alert(111);
        var name = $("#name").val();
        var birthday = $("#birthday").val();
        var phone = $("#phone").val();
        var number = $("#number").val();
        var gender = $(':radio[name=gender]:checked').val();
        var appid = $(':radio[name=item]:checked').val();

        if(name.length > 0 && birthday.length > 0 && number.length > 0 && gender != null && appid.length > 0){
            $.ajax({
                url: "AddRegInfo",
                type: "post",
                data: {
                    name:name,
                    birthday:birthday,
                    phone:phone,
                    number: number,
                    gender: gender,
                    id: appid,
                },
                success: function (data) {
                    console.log(data);
                    if(data == 'success'){
                        layui.use('layer', function(){
                            layui.layer.msg("预约成功！");
                        })
                        updateData();
                        $("#name").val("");
                        $("#birthday").val("");
                        $("#phone").val("");
                        $("#number").val("");
                        $("#selectedItem").val("");
                        $("input[name=gender]").attr("checked",false);
                        $("input[name=gender]").removeAttr("checked");
                    }
                    else {
                        layui.use('layer', function(){
                            layui.layer.msg("此时间段预约人数已满！");
                        })
                    }
                }, error: function (data) {
                    console.log(data);
                }
            });
        }

    });


</script>
</body>

</html>

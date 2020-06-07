<%--
  Created by IntelliJ IDEA.
  User: 董嘉懿
  Date: 2020/5/23
  Time: 20:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=GB2312"
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
    <title>易医 - 智能导诊</title>
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
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">分诊服务</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item active" href="Patient_Triage_AddTriageInfo.html"><i
                        class="icon fa fa-circle-o"></i>
                    智能分诊</a></li>
                <li><a class="treeview-item" href="Patient_Triage_TriageInfo.html" rel="noopener"><i
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
            <h1>智能导诊</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">分诊服务</li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">智能导诊</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-8 changeBtn">
                        <div class="toggle-flip" style="margin-top:20px;border-bottom: 1px solid #ddd; padding-bottom: 10px">
                            <label>请点击以选择性别：</label>
                            <label style=" vertical-align: bottom;">
                                <input type="checkbox"><span class="flip-indecator" data-toggle-on="女 性" data-toggle-off="男 性"></span>
                            </label>
                            <a href="" style="float: right; margin-right: 30px;margin-top: 10px; color:#007D71;">查看全部症状</a>
                        </div>
                    </div>
                </div>
                <div class="body_box mt20 clearfix">
                    <!-- 男士 -->
                    <div class="man_box clearfix">
                        <!-- 男士正面 -->
                        <div class="man_front fl">
                            <a class="man_front_head" target="_self" v="头部" href="#"></a>
                            <a class="man_front_neck" target="_self" href="#" v="颈部"></a>
                            <a class="man_front_chest" target="_self" href="#" v="胸部"></a>
                            <a class="man_front_belly" target="_self" href="#" v="腹部"></a>
                            <a class="man_front_gential" target="_self" href="#" v="男性生殖"></a>
                            <a class="man_front_leg" target="_self" v="下肢" href="#"></a>
                            <a class="man_front_arm" target="_self" v="上肢" href="#"></a>
                            <span class="headLink" style="display: none;">
                  <a href="#" target="_self" v="面部" t="面部">面</a>
                  <a href="#" target="_self" v="眼" t="眼">眼</a>
                  <a href="#" target="_self" v="耳" t="耳部">耳</a>
                  <a href="#" target="_self" v="鼻" t="鼻部">鼻</a>
                  <a href="#" target="_self" v="口" t="口部">口</a>
                </span>
                        </div>
                        <!-- 男士背面 -->
                        <div class="man_back fr">
                            <a href="#" target="_self" class="man_back_pelvic" v="盆腔"></a>
                            <a href="#" target="_self" class="man_back_buns" v="臀部"></a>
                            <a href="#" target="_self" class="man_back_loin" v="腰部"></a>
                            <a href="#" target="_self" class="man_back_bone" v="骨"></a>
                            <a href="#" target="_self" class="man_back_backside" v="背部"></a>
                            <a href="#" target="_self" class="man_back_all" v="全身"></a>
                            <div class="man_front_bg"></div>
                        </div>
                    </div>


                    <!-- 女士 -->
                    <div class="woman_box clearfix">
                        <!-- 女士正面 -->
                        <div class="woman_front fl">
                            <a class="woman_front_head" target="_self" v="头部" href=""></a>
                            <a class="woman_front_neck" target="_self" v="颈部" href=""></a>
                            <a class="woman_front_chest" target="_self" v="胸部" href=""></a>
                            <a class="woman_front_belly" target="_self" v="腹部" href=""></a>
                            <a class="woman_front_gential" target="_self" v="女性生殖" href=""></a>
                            <a class="woman_front_leg" target="_self" v="下肢" href=""></a>
                            <a class="woman_front_arm" target="_self" v="上肢" href=""></a>
                            <div class="headLink" style="display: none;">
                                <a href="#" target="_self" v="面部" t="面部">面</a>
                                <a href="#" target="_self" v="眼" t="眼">眼</a>
                                <a href="#" target="_self" v="耳" t="耳部">耳</a>
                                <a href="#" target="_self" v="鼻" t="鼻部">鼻</a>
                                <a href="#" target="_self" v="口" t="口部">口</a>
                            </div>
                        </div>
                        <!-- 女士背面 -->
                        <div class="woman_back fr">
                            <a href="#" target="_self" class="woman_back_pelvic" v="盆腔"></a>
                            <a href="#" target="_self" class="woman_back_buns" v="臀部"></a>
                            <a href="#" target="_self" class="woman_back_loin" v="腰部"></a>
                            <a href="#" target="_self" class="woman_back_bone" v="骨"></a>
                            <a href="#" target="_self" class="woman_back_backside" v="背部"></a>
                            <a href="#" target="_self" class="woman_back_all" v="全身"></a>
                            <div class="woman_front_bg"></div>
                        </div>
                    </div>

                    <div class="select clearfix">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>部位</label>
                                    <select class="form-control" id="exampleSelect" multiple="" style="height:400px">
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>症状</label>
                                    <select class="form-control" id="exampleSelect2" multiple="" style="height:400px">

                                    </select>
                                    <script type="text/html" id="Desoption-script">
                                        {{ each data value i }}
                                        <option>{{value.s_Description}} </option>
                                        {{ /each }}
                                    </script>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="row" style="margin-top: 30px;">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="control-label col-md-2">详情描述</label>
                            <div class="col-md-8">
                                <textarea class="form-control" rows="3" placeholder="请详细描述您的症状"></textarea>
                            </div>
                            <div class="col-md-2" style="vertical-align: bottom;">
                                <button class="btn btn-primary" type="button">提交</button>
                            </div>
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
<script type="text/javascript" src="js/template.js"></script>
<!-- Page specific javascripts-->
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
        $('.woman_front_head').hover(function () {
            $(".headLink").css('display', 'block');
        }, function () {
            $(".headLink").css('display', 'none');
        });
        $(".headLink").hover(function () {
            $(this).css('display', 'block');
        }, function () {
            $(this).css('display', 'none');
        });

        $('.man_front_head').hover(function () {
            $(".headLink").css('display', 'block');
        }, function () {
            $(".headLink").css('display', 'none');
        });
        $(".headLink").hover(function () {
            $(this).css('display', 'block');
        }, function () {
            $(this).css('display', 'none');
        });
        $(".man_box").hide();
        $(".woman_box").hide();

        $.ajax({
            url: "getByBodypart",
            type: "post",
            data:{
                bodypart:"面部",
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#exampleSelect2").append(template("Desoption-script",{data:data}));
            }, error: function (data) {
                console.log(data);
            }
        });
    });



</script>
</body>

</html>
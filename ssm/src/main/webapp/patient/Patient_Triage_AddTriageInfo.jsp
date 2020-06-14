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
                <li><a class="treeview-item active" href="Patient_Triage_AddTriageInfo"><i
                        class="icon fa fa-circle-o"></i>
                    智能分诊</a></li>
                <li><a class="treeview-item" href="Patient_Triage_TriageInfo" rel="noopener"><i
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
                        <div class="toggle-flip selectGender" style="margin-top:20px;border-bottom: 1px solid #ddd; padding-bottom: 10px">
                            <label>请点击以选择性别：</label>
                            <label style=" vertical-align: bottom;">
                                <input type="checkbox" id="genderSelect"><span class="flip-indecator"  data-toggle-on="女 性" data-toggle-off="男 性"></span>
                            </label>
                            <a id="viewAll" style="float: right; margin-right: 30px;margin-top: 10px; color:#007D71;">查看全部症状</a>
                        </div>
                        <a class="return" style="float: right; margin-right: 50px; margin-top: 30px;font-weight:bolder;font-size:1.1em;color:#007D71;"><i class="fa fa-backward" aria-hidden="true"></i>&nbsp;返回</a>

                    </div>
                </div>
                <div class="body_box mt20 clearfix">
                    <!-- 男士 -->
                    <div class="man_box clearfix">
                        <!-- 男士正面 -->
                        <div class="man_front fl">
                            <a class="man_front_head" v="头部"></a>
                            <a class="man_front_neck" v="颈部"></a>
                            <a class="man_front_chest" v="胸部"></a>
                            <a class="man_front_belly" v="腹部"></a>
                            <a class="man_front_gential"  v="男性生殖"></a>
                            <a class="man_front_leg"  v="下肢" ></a>
                            <a class="man_front_arm"  v="上肢"></a>
                            <span class="headLink" style="display: none;">
                                <a class="man_front_face" v="面部" t="面部">面</a>
                                <a class="man_front_eye" v="眼" t="眼">眼</a>
                                <a class="man_front_ear" v="耳" t="耳部">耳</a>
                                <a class="man_front_nose" v="鼻" t="鼻部">鼻</a>
                                <a class="man_front_mouth" v="口" t="口部">口</a>
                            </span>
                        </div>
                        <!-- 男士背面 -->
                        <div class="man_back fr">
                            <a class="man_back_pelvic" v="盆腔"></a>
                            <a class="man_back_buns" v="臀部"></a>
                            <a class="man_back_loin" v="腰部"></a>
                            <a class="man_back_bone" v="骨"></a>
                            <a class="man_back_backside" v="背部"></a>
                            <a class="man_back_all" v="全身"></a>
                            <div class="man_front_bg"></div>
                        </div>
                    </div>


                    <!-- 女士 -->
                    <div class="woman_box clearfix">
                        <!-- 女士正面 -->
                        <div class="woman_front fl">
                            <a class="woman_front_head" v="头部"></a>
                            <a class="woman_front_neck" v="颈部" ></a>
                            <a class="woman_front_chest" v="胸部" ></a>
                            <a class="woman_front_belly" v="腹部" ></a>
                            <a class="woman_front_gential" v="女性生殖"></a>
                            <a class="woman_front_leg" v="下肢"></a>
                            <a class="woman_front_arm"  v="上肢"></a>
                            <div class="headLink" style="display: none;">
                                <a class="woman_front_face" v="面部" t="面部">面</a>
                                <a class="woman_front_eye" v="眼" t="眼">眼</a>
                                <a class="woman_front_ear" v="耳" t="耳部">耳</a>
                                <a class="woman_front_nose" v="鼻" t="鼻部">鼻</a>
                                <a class="woman_front_mouth" v="口" t="口部">口</a>
                            </div>
                        </div>
                        <!-- 女士背面 -->
                        <div class="woman_back fr">
                            <a class="woman_back_pelvic" v="盆腔"></a>
                            <a class="woman_back_buns" v="臀部"></a>
                            <a class="woman_back_loin" v="腰部"></a>
                            <a class="woman_back_bone" v="骨"></a>
                            <a class="woman_back_backside" v="背部"></a>
                            <a class="woman_back_all" v="全身"></a>
                            <div class="woman_front_bg"></div>
                        </div>
                    </div>

                    <!--选择-->
                    <div class="select clearfix">
                        <div class="row">
                            <div class="col-md-1"></div>
                            <div class="col-md-10">
                                <div id="selectSym" class="demo-transfer"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-top: 30px;">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="form-group row">
                            <label class="control-label col-md-2">病症描述</label>
                            <div class="col-md-8">
                                <textarea class="form-control" id="info" rows="3" placeholder="若已选择症状，可不填"></textarea>
                            </div>
                            <div class="col-md-2" style="vertical-align: bottom;">
                                <button class="btn btn-primary" id="sub" type="button">提交</button>
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

        layui.use(['transfer', 'layer', 'util'], function(){
            var $ = layui.$
                ,transfer = layui.transfer
                ,layer = layui.layer
                ,util = layui.util;
                 transfer.render({
                        elem: '#selectSym'
                        ,title: ['待选择症状', '已选择症状']
                        ,showSearch: true
                        ,width: 230
                        , id: 'symptom' //定义索引
                    })
        });

        $(".woman_box").hide();
        $(".select").hide();
        $(".return").hide();
    });

    //更换性别
    $("body").on("change","#genderSelect", function(){
        if($(".woman_box").css("display") == 'none' && $(".man_box").css("display") != 'none') {
            $(".select").hide();
            $(".man_box").hide();
            $(".woman_box").show();
        } else if($(".woman_box").css("display") != 'none' && $(".man_box").css("display") == 'none'){
            $(".man_box").show();
            $(".woman_box").hide();
            $(".select").hide();
        } else {
            $(".select").hide();
            $(".man_box").hide();
            $(".woman_box").show();
        }
    })

    //查看全部症状
    $("body").on("click","#viewAll", function(){
        $(".selectGender").hide();
        $(".man_box").hide();
        $(".woman_box").hide();
        $(".select").show();
        $(".return").show();

        //模拟数据
        var Symdata = [];

        $.ajax({
            url: "getAllSym",
            type: "post",
            success: function (data) {
                console.log(data);
                if (data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                for(var i = 0; i < data.length; i++){
                    var tmp={};
                    tmp['value'] = data[i]["symptom_id"];
                    tmp['title'] = data[i]["s_Description"];
                    Symdata.push(tmp);
                }
            }, error: function (data) {
                console.log(data);
            }
        });

        layui.use(['transfer', 'layer', 'util'], function(){
            var $ = layui.$
                ,transfer = layui.transfer
                ,layer = layui.layer
                ,util = layui.util;

            //显示搜索框
            transfer.render({
                elem: '#selectSym'
                ,data: Symdata
                ,title: ['待选择症状', '已选择症状']
                ,showSearch: true
                ,width: 230
            })

        });
    })


    //返回
    $("body").on("click",".return", function(){
        $("input[type=checkbox]").prop("checked","checked");
        $(".selectGender").show();
        $(".return").hide();
        $(".select").hide();
        $(".man_box").hide();
        $(".woman_box").show();
    })


    $("body").on("click",".man_front_face", function(){
        viewinfo("面部");
    })
    $("body").on("click",".man_front_eye", function(){
        viewinfo("眼部");
    })
    $("body").on("click",".man_front_ear", function(){
        viewinfo("耳部");
    })
    $("body").on("click",".man_front_nose", function(){
        viewinfo("鼻部");
    })
    $("body").on("click",".man_front_mouth", function(){
        viewinfo("口部");
    })
    $("body").on("click",".man_front_neck", function(){
        viewinfo("颈部");
    })
    $("body").on("click",".man_front_chest", function(){
        viewinfo("胸部");
    })
    $("body").on("click",".man_front_belly", function(){
        viewinfo("腹部");
    })
    $("body").on("click",".man_front_gential", function(){
        viewinfo("男性生殖");
    })
    $("body").on("click",".man_front_leg", function(){
        viewinfo("下肢");
    })
    $("body").on("click",".man_front_arm", function(){
        viewinfo("上肢");
    })
    $("body").on("click",".man_back_pelvic", function(){
        viewinfo("盆腔");
    })
    $("body").on("click",".man_back_buns", function(){
        viewinfo("臀部");
    })
    $("body").on("click",".man_back_loin", function(){
        viewinfo("腰部");
    })
    $("body").on("click",".man_front_bone", function(){
        viewinfo("背部");
    })
    $("body").on("click",".man_front_backside", function(){
        viewinfo("背部");
    })
    $("body").on("click",".man_back_all", function(){
        viewinfo("血液血管");
    })

    $("body").on("click",".woman_front_face", function(){
        viewinfo("面部");
    })
    $("body").on("click",".woman_front_eye", function(){
        viewinfo("眼部");
    })
    $("body").on("click",".woman_front_ear", function(){
        viewinfo("耳部");
    })
    $("body").on("click",".woman_front_nose", function(){
        viewinfo("鼻部");
    })
    $("body").on("click",".woman_front_mouth", function(){
        viewinfo("口部");
    })
    $("body").on("click",".woman_front_neck", function(){
        viewinfo("颈部");
    })
    $("body").on("click",".woman_front_chest", function(){
        viewinfo("胸部");
    })
    $("body").on("click",".woman_front_belly", function(){
        viewinfo("腹部");
    })
    $("body").on("click",".woman_front_gential", function(){
        viewinfo("女性生殖");
    })
    $("body").on("click",".woman_front_leg", function(){
        viewinfo("下肢");
    })
    $("body").on("click",".woman_front_arm", function(){
        viewinfo("上肢");
    })
    $("body").on("click",".woman_back_pelvic", function(){
        viewinfo("盆腔");
    })
    $("body").on("click",".woman_back_buns", function(){
        viewinfo("臀部");
    })
    $("body").on("click",".woman_back_loin", function(){
        viewinfo("腰部");
    })
    $("body").on("click",".woman_front_bone", function(){
        viewinfo("背部");
    })
    $("body").on("click",".woman_front_backside", function(){
        viewinfo("背部");
    })
    $("body").on("click",".woman_back_all", function(){
        viewinfo("血液血管");
    })

    function viewinfo(bodypart){
        $(".selectGender").hide();
        $(".man_box").hide();
        $(".woman_box").hide();
        $(".select").show();
        $(".return").show();

        //模拟数据
        var Symdata = [];

        layui.use(['transfer', 'layer', 'util'], function(){
            var $ = layui.$
                ,transfer = layui.transfer
                ,layer = layui.layer
                ,util = layui.util;
            $.ajax({
                url: "getByBodypart",
                type: "post",
                data:{
                    bodypart:bodypart,
                },
                success: function (data) {
                    console.log(data);
                    if (data == "") {
                        alert("暂无相关信息！");
                        console.log(data);
                    }
                    for(var i = 0; i < data.length; i++){
                        var tmp={};
                        tmp['value'] = data[i]["symptom_id"];
                        tmp['title'] = data[i]["s_Description"];
                        Symdata.push(tmp);
                    }
                    //显示搜索框
                    transfer.render({
                        elem: '#selectSym'
                        ,data: Symdata
                        ,title: ['待选择症状', '已选择症状']
                        ,showSearch: true
                        ,width: 230
                        , id: 'symptom' //定义索引
                    })
                }, error: function (data) {
                    console.log(data);
                }
            });
        });
    }

    $("body").on("click","#sub", function(){

        layui.use(['transfer', 'layer', 'util'], function(){
            var transfer = layui.transfer;

            //获得右侧数据
            var getData = transfer.getData('symptom');
            var text = $("#info").val();

            if(getData.length > 0 || text.length > 0){
                var info = "";
                for(var i = 0; i < getData.length; i++){
                    info += getData[i]["title"] + " ";
                }
                info+=text;

                $.ajax({
                    url: "inteltriage",
                    type: "post",
                    data:{
                        info:info,
                    },
                    success: function (data) {
                        console.log(data);
                        if(data == "success") {
                            layui.layer.msg("成功提交信息！");
                            window.location.href="Patient_Triage_TriageInfo";
                        } else {
                            layui.layer.msg("智能分诊失败，已提交人工分诊！");
                            window.location.href="Patient_Triage_TriageInfo";
                        }
                    }, error: function (data) {
                        console.log(data);
                    }
                });

            } else {
                layui.layer.msg("请选择或描述症状！");
            }
        })
    })
</script>
</body>

</html>
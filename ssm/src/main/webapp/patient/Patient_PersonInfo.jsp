<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="YY">
    <meta property="og:title" content="">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="YYProject is only programmed for zhsjsy.">
    <title>易医 - 管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <head>
        <meta charset="UTF-8">
        <title>易医-患者个人资料</title>
    </head>

<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="#">Yiyi</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <!-- 小人菜单栏-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="Patient_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a>
                </li>
                <li><a class="dropdown-item" href="Patient_Changepwd.html"><i class="fa fa-cog fa-lg"></i> 修改密码</a></li>
                <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
            </ul>
        </li>
    </ul>
</header>
<!--统一导航栏-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
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
                <li><a class="treeview-item" href="Patient_Triage_AddTriageInfo.html"><i
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
                <li><a class="treeview-item" href="Patient_Medicine.html"><i class="icon fa fa-circle-o"></i> 用药提示</a>
                </li>
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
            <h1>个人资料</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a style="color:#009688;" href="#">个人资料</a></li>
        </ul>
    </div>


    <div class="showdata">
        <div class="row">

            <div class="col-md-12 showdata">
                <div class="tile">
                    <div class="row ">
                        <div class="col-lg-6 offset-lg-2 " style="padding-top: 30px;">
                            <h3 class="tile-title" style="border-bottom: 1px solid #ddd; padding-bottom: 10px">个人信息</h3>
                            <div class="tile-body">
                                <form class="form-horizontal" id="form">
                                </form>
                                <script type="text/html" id="info-script">
                                {{ each data value i }}
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">易医号</label>
                                        <div class="col-md-8"> {{value.Nickname}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">姓名</label>
                                        <div class="col-md-8"> {{value.Name}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">性别</label>
                                        <div class="col-md-8"> {{value.Gender}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">联系方式</label>
                                        <div class="col-md-8">{{value.PhoneNumber}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">出生日期</label>
                                        <div class="col-md-8">{{value.Birthday}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">社保卡号</label>
                                        <div class="col-md-8">{{value.MedicalInsuranceCardNumber}}</div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">电子邮箱</label>
                                        <div class="col-md-8">{{value.MailAddress}}</div>
                                    </div>
                                    {{ /each }}
                                </script>
                            </div>
                        </div>
                        <div class="col-lg-2" style="padding-top: 30px;">
                            <button class="btn btn-primary" type="button" onclick="huan()">修 改 信 息</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="hhh" style="display: none;">
        <div class="row">
            <div class="col-md-12">
                <div class="tile">
                    <div class="row">
                        <div class="col-lg-6 offset-lg-2" style="padding-top: 30px;">
                            <h3 class="tile-title" style="border-bottom: 1px solid #ddd; padding-bottom: 10px">个人信息</h3>
                            <div class="tile-body">
                            <form class="form-horizontal" id="form_c">
                                
                                     <div class="form-group row">
                                        <label class="control-label col-md-3">易医号</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" disabled="true" id="nick">
                                        </div>
                                    </div>
                                     <div class="form-group row">
                                        <label class="control-label col-md-3">姓名</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" disabled="true" id="n">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">性别</label>
                                        <div class="animated-checkbox" id="s">
                                            &nbsp; &nbsp; &nbsp;
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">联系方式</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="phone" placeholder="请填写电话号码" id="p">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">出生日期</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="birthday" placeholder="请填写出生日期" id="b">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">社保卡号</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" placeholder="请填写社保卡号" id="m">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">电子邮箱</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="email" placeholder="请填写电子邮箱" id="e">
                                        </div>
                                    </div>
                                </form>
                            </div>

                            <div class="tile-footer" style="margin-bottom: 30px;">
                                <div class="row">
                                    <div class="col-md-8 col-md-offset-3">
                                        <button class="btn btn-primary" type="button" onclick="changeinfo()"><i
                                                class="fa fa-fw fa-lg fa-check-circle"></i>保存
                                        </button >&nbsp;&nbsp;&nbsp;
                                        <button class="btn btn-secondary" onclick="cancel()" >
                                        <i class="fa fa-fw fa-lg fa-times-circle"></i>取消</button>
                                        
                                    </div>
                                </div>
                            </div>
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
<!-- Page specific javascripts-->
<script type="text/javascript" src="../js/plugins/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../js/plugins/select2.min.js"></script>
<script type="text/javascript" src="../js/plugins/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../js/plugins/dropzone.js"></script>
<script type="text/javascript" src="../js/template.js"></script>
<script src="../layui/layui.js"></script>

<script type="text/javascript">
    $('#sl').on('click', function () {
        $('#tl').loadingBtn();
        $('#tb').loadingBtn({text: "Signing In"});
    });

    $('#el').on('click', function () {
        $('#tl').loadingBtnComplete();
        $('#tb').loadingBtnComplete({html: "Sign In"});
    });

    $('#demoDate').datepicker({
        format: "dd/mm/yyyy",
        autoclose: true,
        todayHighlight: true
    });

    $('#demoSelect').select2();
</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>

<script>
    function huan() {
        $(".showdata").hide();
        $(".hhh").show();
    }
    //取消修改
    function cancel() {
       	  $(".hhh").hide();
          $(".showdata").show();
        }
</script>

<script>
var User_id = "P0000001";
$(document).ready(function () {
    $.ajax({
        url:"getPInfo",
        type: "post",
        async: false,
        data: {
 	        User_id: User_id 
         },
        success: function (data) {
       	 console.log(data);
       	 data[0].Gender = data[0].Gender==null? "" :data[0].Gender;
    	 data[0].PhoneNumber = data[0].PhoneNumber==null? "" :data[0].PhoneNumber;
    	 data[0].Birthday = data[0].Birthday==null? "" :data[0].Birthday;
    	 data[0].MedicalInsuranceCardNumber = data[0].MedicalInsuranceCardNumber==null? "" :data[0].MedicalInsuranceCardNumber;
    	 data[0].MailAddress = data[0].MailAddress==null? "" :data[0].MailAddress;
    	 $("#form").append(template("info-script",{data:data}));
    	 
    	 document.getElementById("nick").value = data[0].Nickname;
    	 document.getElementById("n").value = data[0].Name;
    	 document.getElementById("p").value = data[0].PhoneNumber;
    	 document.getElementById("b").value = data[0].Birthday;
    	 document.getElementById("m").value = data[0].MedicalInsuranceCardNumber;
    	 document.getElementById("e").value = data[0].MailAddress;
    	 if(data[0].Gender=="女"){$("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\" checked=\"checked\"  name=\"bg\"/>女");}
    	 else if(data[0].Gender=="男"){$("#s").append("<input value=1 type=\"radio\" checked=\"checked\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");}
    	 else {
    		 $("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");
    	 };
    	 layui.use('laydate', function(){
        	 var laydate = layui.laydate;
        	 
        	 laydate.render({
                 elem: '#b'
                 , value: new Date(data[0].Birthday)
            });
         });
       	 console.log(data);
        }, error: function (data) {
      	     alert("处理异常");
      	     console.log(data);
    }
});
})
</script>
<script>
//更新个人信息
function changeinfo(){
	 var phone = document.getElementById("p").value;
	 var birthday = document.getElementById("b").value;
	 var medical = document.getElementById("m").value;
	 var email = document.getElementById("e").value;
	 var gender = $(':radio[name="bg"]:checked').val();
	 if(gender == null || gender == 1) {gender = "男";}
	 else if(gender == 0) {gender = "女"};
    $.ajax({
        url:"updateP",
        type: "post",
        async: false,
        data: {
 	        PhoneNumber:phone,
 	        Birthday:birthday,
 	        MedicalInsuranceCardNumber:medical,
 	        MailAddress:email,
 	        Gender:gender,
 	        User_id:"P0000001"
 	        },
        success: function (data) {
       	 window.location.reload();
        }, error: function (data) {
      	     alert("处理异常");
      	     console.log(data);
    }
});
}

</script>

</body>

</html>
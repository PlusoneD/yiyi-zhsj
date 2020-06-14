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
        <title>易医-职工个人资料</title>
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
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">病历</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Doctor_MedicalRecord_Add.html"><i class="icon fa fa-circle-o"></i>
                    新增病历</a>
                </li>
                <li><a class="treeview-item" href="Doctor_MedicalRecord_History.html"><i
                        class="icon fa fa-circle-o"></i>
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
        <li><a class="app-menu__item" href="Staff_Triage_UpdateTriageInfo.html"><i
                class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">分诊管理</span></a></li>

        <li><a class="app-menu__item" href="Staff_Chat.html"><i class="app-menu__icon fa fa-file-text"></i><span
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
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">工号</label>
                                        <div class="col-md-8" id="emp"></div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">姓名</label>
                                        <div class="col-md-8" id="name"></div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">性别</label>
                                        <div class="col-md-8" id="gender"></div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">联系方式</label>
                                        <div class="col-md-8" id="phone"></div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">职务</label>
                                        <div class="col-md-8" id="title"></div>
                                    </div>
                                    </form>
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
                                        <label class="control-label col-md-3">工号</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" disabled="true" id="e">
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
                                            <input class="form-control" type="number" id="p">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="control-label col-md-3">职务</label>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" disabled="true" id="t">
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
<script src="../js/template.js"></script>

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
var i ;
var staff_id = "D0001";
$(document).ready(function () {
    $.ajax({
        url:"getSInfo",
        type: "post",
        async: false,
        data: {
 	        id: staff_id
         },
        success: function (data) {
       	 console.log(data);
       	 data["Gender"] = data["Gender"]==null? "" :data["Gender"];
    	 data["PhoneNumber"] = data["PhoneNumber"]==null? "" :data["PhoneNumber"];
    	 data["Title"] = data["Title"]==null? "" :data["Title"]
         $("#emp").append(data["EmpNum"]);
    	 $("#e").val(data["EmpNum"]);
         $("#name").append(data["Name"]);
         $("#n").val(data["Name"]);
         $("#gender").append(data["Gender"]);
         $("#phone").append(data["PhoneNumber"]);
         $("#p").val(data["PhoneNumber"]);
         $("#title").append(data["Title"]);
         $("#t").val(data["Title"]);
    	 if(data["Gender"]=="女"){$("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\" checked=\"checked\"  name=\"bg\"/>女");}
    	 else if(data["Gender"]=="男"){$("#s").append("<input value=1 type=\"radio\" checked=\"checked\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");}
    	 else {
    		 $("#s").append("<input value=1 type=\"radio\" name=\"bg\" />男&nbsp;&nbsp;&nbsp;&nbsp;<input value=0 type=\"radio\"  name=\"bg\"/>女");
    	 };
         
    	 i=data["Staff_id"][0];
    	 
         if(data["Staff_id"][0]=="D"){
        	 var content = "<div class=\"form-group row\"><label class=\"control-label col-md-3\">";
        	 $("#form").append(content + "背景</label>" + "<div class=\"col-md-8\">" + data["Doctor"]["d_Background"]+"</div></div>");
        	 $("#form").append(content + "专长</label>" + "<div class=\"col-md-8\">" + data["Doctor"]["d_Specialization"]+"</div></div>");
        	 $("#form").append(content + "描述</label>" + "<div class=\"col-md-8\">" + data["Doctor"]["d_Description"]+"</div></div>");
         
        	 $("#form_c").append(content + "背景</label>" + "<div class=\"col-md-8\"><textarea class=\"form-control\" type=\"text\" id=\"back\">"+data["Doctor"]["d_Background"]);
        	 $("#form_c").append(content + "专长</label>" + "<div class=\"col-md-8\"><textarea class=\"form-control\" type=\"text\" id=\"spec\">"+data["Doctor"]["d_Specialization"]);
        	 $("#form_c").append(content + "描述</label>" + "<div class=\"col-md-8\"><textarea class=\"form-control\" type=\"text\" id=\"des\">"+data["Doctor"]["d_Description"]);

         }
         
        }, error: function (data) {
      	     alert("处理异常");
      	     console.log(data);
    }
});
})


//更新个人信息
function changeinfo(){
	 var phone = document.getElementById("p").value;
	 var gender = $(':radio[name="bg"]:checked').val();
	 if(gender == null || gender == 1) {gender = "男";}
	 else if(gender == 0) {gender = "女"};
	 
	 if(i == "N"){
		    $.ajax({
		        url:"updateN",
		        type: "post",
		        async: false,
		        data: {
		 	        PhoneNumber:phone,
		 	        Gender:gender,
		 	        User_id:staff_id
		 	        },
		        success: function (data) {
		       	 window.location.reload();
		        }, error: function (data) {
		      	     alert("处理异常");
		      	     console.log(data);
		    }
		});
	 }
	 else if(i == "D"){
		 var background = document.getElementById("back").value;
		 var specialization = document.getElementById("spec").value;
		 var description = document.getElementById("des").value;
		    $.ajax({
		        url:"updateD",
		        type: "post",
		        async: false,
		        data: {
		 	        PhoneNumber:phone,
		 	        Gender:gender,
		 	        User_id:staff_id,
		 	        Background:background,
		 	        Specialization:specialization,
		 	        Description:description
		 	        },
		        success: function (data) {
		       	 window.location.reload();
		        }, error: function (data) {
		      	     alert("处理异常");
		      	     console.log(data);
		    }
		});
	 }

}

</script>
</body>

</html>
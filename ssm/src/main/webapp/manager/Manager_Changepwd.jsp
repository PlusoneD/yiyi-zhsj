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
    <title>易医 - 管理系统</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <link rel="stylesheet" type="text/css" href="../css/triage.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body class="app sidebar-mini">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="../index.html">Vali</a>
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
        <li><a class="app-menu__item" href="#"><i class="app-menu__icon fa fa-dashboard"></i><span
                class="app-menu__label">预约管理</span></a></li>
        <li><a class="app-menu__item" href="Manager_Drug.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">药品管理</span></i></a>

        </li>
        <li><a class="app-menu__item" href="Manager_Symptom.html"><i class="app-menu__icon fa fa-laptop"></i><span
                class="app-menu__label">病症管理</span></i></a>

        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">用户管理</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="Manager_Data_Patient.html"><i
                        class="icon fa fa-circle-o"></i>患者管理</a></li>
                <li><a class="treeview-item" href="Manager_Data_Staff.html"><i class="icon fa fa-circle-o"></i>职工管理</a>
                </li>
            </ul>
        </li>
    </ul>
</aside>

<main class="app-content">
    <div class="app-title">
        <div>
            <h1>密码修改</h1>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><a href="#">密码修改</a></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3" style="padding-top: 30px;">
                        <div class="tile-body">
                            <form class="form-horizontal">
                                <div class="form-group row" style="margin: 30px;">
                                    <label class="control-label col-md-3" style="text-align: center;">原始密码</label>
                                    <div class="col-md-8">
                                        <input class="form-control" type="password" placeholder="" id="originPwd">
                                    </div>
                                </div>
                                <div class="form-group row" style="margin: 30px;">
                                    <label class="control-label col-md-3" style="text-align: center;">新密码</label>
                                    <div class="col-md-8">
                                        <input class="form-control" type="password" placeholder="" id="ipwd" onkeyup="validate()">
                                    </div>
                                </div>
                                <div class="form-group row" style="margin: 30px;">
                                    <label class="control-label col-md-3" style="text-align: center;">确认新密码</label>
                                    <div class=" col-md-8">
                                        <input class="form-control" type="password" placeholder="" id="i2pwd" onkeyup="validate()">
                                    </div>
                                </div>
                                <div class="row">
                                <div class="col-md-4"></div>
                                <div class="col-md-8" id="tishi"></div></div>
                            </form>
                        </div>

                        <div class="tile-footer" style="margin-bottom: 30px;">
                            <div class="row">
                                  <div class="col-md-6" style="margin: auto;">
                                          <button class="btn btn-primary" type="button" style="background-color: #009688;" onclick="submit()" id="btn">提交</button>&nbsp;&nbsp;&nbsp;
                                          <button class="btn btn-secondary" type="button" onclick="blank()">重置</button>
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
<script src="../layui/layui.js"></script>
<!-- Page specific javascripts-->
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
     function validate() {
    	 var password1 = document.getElementById("ipwd").value;
    	 var password2 = document.getElementById("i2pwd").value;
    	 if(password1 == password2) {
    	 document.getElementById("tishi").innerHTML="<font color='green'>两次填写密码相同</font>";
    	 document.getElementById("btn").disabled = false;
    	 }
    	 else {
    	 document.getElementById("tishi").innerHTML="<font color='red'>两次填写密码不同</font>";
    	 document.getElementById("btn").disabled = true;
    	 }
    	 }
</script>

<script>
     function submit(){
    	 var password = document.getElementById("originPwd").value;
         $.ajax({
             url:"getPwd",
             type: "post",
             async: false,
             data: {
      	        User_id: "M0001"
              },
             success: function (data) {
            	 console.log(data);
            	 if(data[0].u_Password == password){
            		change(); 
            	 }
            	 else{alert("原密码填写错误");blank();}
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
    }
</script>

<script>
     function change(){
    	 var password = document.getElementById("ipwd").value;
         $.ajax({
             url:"setUserPwdByAdmin",
             type: "post",
             async: false,
             data: {
            	id: "M0001",
      	        pwd:password
      	        },
             success: function (data) {
            	 alert("修改成功！");
            	 document.getElementById("originPwd").value = "";
            	 document.getElementById("ipwd").value = "";
            	 document.getElementById("i2pwd").value = "";
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
    }
     </script>
     
     <script>
     function blank(){
    	 document.getElementById("originPwd").value = "";
    	 document.getElementById("ipwd").value = "";
    	 document.getElementById("i2pwd").value = "";
    }
     </script>

</body>

</html>
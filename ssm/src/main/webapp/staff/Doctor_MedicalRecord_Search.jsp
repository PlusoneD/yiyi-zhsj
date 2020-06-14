<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
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
    <title>易医-病历</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta charset="UTF-8">
<title>易医-病历</title>
</head>
<body class="app sidebar-mini">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="#">Yiyi</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        
        <!-- 小人菜单栏-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
          class="fa fa-user fa-lg"></i></a>
      <ul class="dropdown-menu settings-menu dropdown-menu-right">
        <li><a class="dropdown-item" href="Staff_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a></li>
        <li><a class="dropdown-item" href="Staff_Changepwd.html"><i class="fa fa-sign-out fa-lg"></i> 修改密码</a></li>
        <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
      </ul>
    </li>

      </ul>
    </header>
    <!--统一导航栏-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
          src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">医生名</p>
          <p class="app-sidebar__user-designation">职务编号+科室+title</p>
        </div>
      </div>
      <ul class="app-menu">
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
              class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">点滴提示</span><i
              class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="Nurse_Drip_Add.html"><i class="icon fa fa-circle-o"></i>添加清单</a>
            </li>
            <li><a class="treeview-item" href="Nurse_Drip.html"><i class="icon fa fa-circle-o"></i> 查看清单</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="Staff_Triage_UpdateTriageInfo.html"><i
              class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">分诊管理</span></a></li>
  
        <li><a class="app-menu__item" href="Staff_Chat.html"><i class="app-menu__icon fa fa-dashboard"></i><span
              class="app-menu__label">消息盒子</span></a></li>
      </ul>
    </aside>
  
    <main class="app-content">
        <div class="col-md-12">
                        <div class="tile">
                <h3 class="tile-title">查找电子病历</h3>
                <div class="tile-body">
               
                    <form class="row" action="Doctor_MedicalRecord_Page" method="post">
                    
                      <div class="col-md-12  mb-4">
                        <label>病患姓名</label>
                        <input class="form-control" type="text" name="name" id="q_name" placeholder="请填写病患姓名">
                      </div>
                       <div class="col-md-12  mb-4">
                      <button class="btn btn-primary" type="button" onclick="f1()"><i class="fa fa-fw fa-lg fa-check-circle"></i>查找病患</button>
                            </div>
                             
                             <div class="clearfix"></div>
                      <div class="col-md-12  mb-4">
                        <label>病患编号为：</label>
                        <input readonly="readonly" class="form-control" type="text" name="id" id="id" >
                      </div>
                      <div class="col-md-12  mb-4">
                         <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>查找病历</button>
                      </div>
                      
                    </form>
                    
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
    <script type="text/javascript">
      $('#sl').on('click', function(){
      	$('#tl').loadingBtn();
      	$('#tb').loadingBtn({ text : "Signing In"});
      });
      
      $('#el').on('click', function(){
      	$('#tl').loadingBtnComplete();
      	$('#tb').loadingBtnComplete({ html : "Sign In"});
      });
      
      $('#demoDate').datepicker({
          format: "yyyy/mm/dd",
          autoclose: true,
          todayHighlight: true
      });
      
      $('#demoSelect').select2();
    </script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
    <script type="text/javascript">
 function f1(){
    	
        $.ajax({
        	url: "getPatientIdByName",
        	data:{
                name:$("#q_name").val()
            },
            type: "post",
            async:false,
            success: function (data) {
                console.log(data);
                
                $("#id").val(data);
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    }
    </script>
  </body>
</html>
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
        <div class="app-title">
            <div>
                <h1><i class="fa fa-edit"></i> 历史填写病历</h1>
                
            </div>
            <ul class="app-breadcrumb breadcrumb">
                <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
                <li class="breadcrumb-item">病历</li>
                <li class="breadcrumb-item"><a href="#">历史记录</a></li>
            </ul>
        </div>
            <div class="row">
              <div class="col-md-3">
                <div class="tile p-0">
                  <h4 class="tile-title folder-head">查询条件</h4>
                  <form action="mrgetByDoctor" method="post">
                    <ul class="nav nav-pills flex-column mail-nav">
                            <li class="nav-item"><input class="form-control" id="demoDate1" type="text" placeholder="点击选择开始日期"></li>
                            <li class="nav-item"><input class="form-control" id="demoDate2" type="text" placeholder="点击选择结束日期"></li>
                            
                    </ul>
                    <div class="clearfix"></div>
                    <div class="col-md-12"><button class="btn btn-primary" type="button" onclick="myFunction()">查询</button>
              </div>
                </form>
                </div>
            
              </div>
              <div class="col-md-9">
                <div class="tile">
              
                  <div class="table-responsive mailbox-messages">
                    <table class="table table-hover">
                      <tbody id="tbody">
                       
                       
                      </tbody>
                       <script type="text/html" id="DocMrHistory-script">
                       <tbody id="tbody2">
                           {{ each data value i }}<tr>
                         <td>{{value.patient}} </td>
                         <td>主诉：{{value.M_Complaint}} </td>
                         <td>诊断：{{value.M_Diagnosis}} </td>
                         <td>{{value.M_Time}} </td>
                         <td>
                     {{value.M_State}}</td></tr>
                           {{ /each }}</tbody>
             </script>
                    </table>
                  </div>
                 
                  <div class="text-right"><span class="text-muted mr-2">Showing 1-15 out of 60</span>
                    <div class="btn-group">
                      <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-left"></i></button>
                      <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-chevron-right"></i></button>
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
    <script type="text/javascript">
    $('#sl').on('click', function(){
        $('#tl').loadingBtn();
        $('#tb').loadingBtn({ text : "Signing In"});
    });
    
    $('#el').on('click', function(){
        $('#tl').loadingBtnComplete();
        $('#tb').loadingBtnComplete({ html : "Sign In"});
    });
    
    $('#demoDate1').datepicker({
    	format: "yyyy/mm/dd",
        autoclose: true,
        todayHighlight: true
    });
    $('#demoDate2').datepicker({
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

    $(document).ready(function () {
    	$.ajax({
            url: "mrgetByDoctor2",
            type: "post",
            data:{
                id:"D0028",
                time_start:"2000/01/01",
                time_end:"2030/12/31"
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody_1").append(template("DocMrHistory-script2",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
        $.ajax({
            url: "mrgetByDoctor1",
            type: "post",
            data:{
                id:"D0028",
                time_start:"2000/01/01",
                time_end:"2030/12/31"
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody").append(template("DocMrHistory-script",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });
    function myFunction()
    {
        $.ajax({
            url: "mrgetByDoctor1",
            type: "post",
            data:{
                id:"D0028",
                time_start:$("#demoDate1").val(),
                time_end:$("#demoDate2").val()
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody2").remove();
                $("#tbody").append(template("DocMrHistory-script",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
        $.ajax({
            url: "mrgetByDoctor2",
            type: "post",
            data:{
                id:"D0028",
                time_start:$("#demoDate1").val(),
                time_end:$("#demoDate2").val()
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody_2").remove();
                $("#tbody_1").append(template("DocMrHistory-script2",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    }



</script>
</body>
</html>
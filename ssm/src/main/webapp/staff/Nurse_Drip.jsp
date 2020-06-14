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
  <!-- Main CSS-->
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
      <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
            class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">点滴提示</span><i
            class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item" href="Nurse_Drip_Add.html"><i class="icon fa fa-circle-o"></i>添加清单</a>
          </li>
          <li><a class="treeview-item active" href="Nurse_Drip.html"><i class="icon fa fa-circle-o"></i> 查看清单</a></li>
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
        <h1><i class="fa fa-th-list"></i> 查看清单</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item">点滴提示</li>
        <li class="breadcrumb-item active"><a href="#">查看清单</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <div class="tile-body">
            <div class="table-responsive">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th>患者ID</th>
                    <th>患者姓名</th>
                    <th>点滴清单</th>
                    <th>顺序</th>
                    <th>开始时间</th>
                    <th>修改状态</th>
                  </tr>
                </thead>
                <tbody id="tbody">
                  <script type="text/html" id="DripN-script">
                        {{ each data value i }}<tr>
                         <td>{{value.Patient_id}} </td>
                        <td>{{value.U_Name}} </td>
                        <td>{{value.D_CommonName}}</td>
                        <td>{{value.D_Sequence}}</td>
                        <td>{{value.D_Time}}</td>
                        <td><button class="btn btn-primary btn-sm" type="button" onclick="update('{{value.Patient_id}}','{{value.D_Sequence}}')">下一瓶</button></td></tr>
                        {{ /each }}
                 </script>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>



  <!-- Essential javascripts for application to work-->
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="js/plugins/pace.min.js"></script>
  <!-- Page specific javascripts-->
  <!-- Data table plugin-->
  <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/template.js"></script>
  
  <script type="text/javascript">$('#sampleTable').dataTable({
      "bLengthChange": true, //开关，是否显示每页显示多少条数据的下拉框
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
  </script>
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
  </script>
  <script>
  $(document).ready(function () {
	  load();
  });
  
  function load(){
      $.ajax({
          url: "getByDNurse_id",
          type: "post",
          data:{
              Nurse_id:"N0001"
          },
          success: function (data) {
              console.log(data);
              if(data == "") {
                  alert("暂无相关信息！");
                  console.log(data);
              }
              $("#tbody").append(template("DripN-script",{data:data}));
              $("#sampleTable").dataTable();
          }, error: function (data) {
          	alert("error");
              console.log(data);
          }
      });
  }

  </script>
  
  <script>
  function update(Patient_id,D_Sequence){
	    $.ajax({
	        url: "updateFinish",
	        type: "post",
	        data:{
	        	Patient_id:Patient_id,
	        	Nurse_id:"N0001",
	            D_Sequence:D_Sequence
	        },
	        success: function (data) {
	        	console.log(data);
	        }, error: function (data) {
	        	alert("error");
	            console.log(data);
	        }
	    });
	    
	    var now = new Date();
	    var year = now.getFullYear(); //得到年份
	    var month = now.getMonth();//得到月份
	    var date = now.getDate();//得到日期
	    var day = now.getDay();//得到周几
	    var hour = now.getHours();//得到小时
	    var minu = now.getMinutes();//得到分钟
	    var sec = now.getSeconds();//得到秒
	    month = month + 1;
	    if (month < 10) month = "0" + month;
	    if (date < 10) date = "0" + date;
	    if (hour < 10) hour = "0" + hour;
	    if (minu < 10) minu = "0" + minu;
	    if (sec < 10) sec = "0" + sec;
	    var time = "";
	    time = year + "-" + month + "-" + date+ " " + hour + ":" + minu + ":" + sec;
	    
	    $.ajax({
	        url: "updateNext",
	        type: "post",
	        data:{
	        	Patient_id:Patient_id,
	        	Nurse_id:"N0001",
	            D_Sequence:D_Sequence,
	            D_Time:time
	        },
	        success: function (data) {
	        	console.log(data);
	        	$("#tbody").empty();
	        	load();
	        }, error: function (data) {
	        	alert("error");
	            console.log(data);
	        }
	    });
	    
	  
  }
  
  </script>

</body>

</html>
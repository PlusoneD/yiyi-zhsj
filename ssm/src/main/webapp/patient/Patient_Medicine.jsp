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
  <link rel="stylesheet" type="text/css" href="../css/main.css">
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
          <li><a class="treeview-item" href="Patient_Triage_TriageInfo.html" target="_blank" rel="noopener"><i
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
      <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
            class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">药品提示</span><i
            class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item  active" href="Patient_Medicine.html"><i class="icon fa fa-circle-o"></i> 用药提示</a></li>
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
        <h1><i class="fa fa-th-list"></i> 药品提示</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item">药品提示</li>
        <li class="breadcrumb-item active"><a href="#">用药提示</a></li>
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
                    <th style="width:10%">药品名称</th>
                    <th>功能主治</th>
                    <th>用法用量</th>
                  </tr>
                </thead>
                <tbody id="tbody">
                </tbody>
                 <script type="text/html" id="MedicineP-script">
                        {{ each data value i }}<tr>
                        <td style="width=10%">{{value.d_CommonName}} </td>
                        <td>{{value.d_Indication}} </td>
                        <td>{{value.d_Dosage}}</td>
                        {{ /each }}
                 </script>
              </table>
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
  <!-- Data table plugin-->
  <script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/template.js"></script>

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
      $.ajax({
          url: "getMByPatient_id",
          type: "post",
          data:{
              Patient_id:"P0000003"
          },
          success: function (data) {
              console.log(data);
              if(data == "") {
                  alert("暂无相关信息！");
                  console.log(data);
              }
              
              $("#tbody").append(template("MedicineP-script",{data:data}));
              $("#sampleTable").dataTable({bAutoWidth: false});
          }, error: function (data) {
          	alert("error");
              console.log(data);
          }
      });
  });
  </script>

</body>

</html>
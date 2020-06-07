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
    <title>易医-病症管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="../css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
<meta charset="UTF-8">
<title>易医-病症管理</title>
</head>
<body class="app sidebar-mini">
   <!-- Navbar-->
   <header class="app-header"><a class="app-header__logo" href="#">Yiyi</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
      <!-- 小人菜单栏-->
      <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
        <ul class="dropdown-menu settings-menu dropdown-menu-right">
            <li><a class="dropdown-item" href="Manager_Changepwd.html"><i class="fa fa-sign-out fa-lg"></i> 修改密码</a></li>
            <li><a class="dropdown-item" href="../index.html"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
        </ul>
      </li>
    </ul>
  </header>
  <!--统一导航栏-->
  <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
   <aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="../images/manager.jpg " alt="User Image">
      <div>
        <p class="app-sidebar__user-name">管理人员名</p>
        <p class="app-sidebar__user-designation">管理员编号</p>
      </div>
    </div>
    <ul class="app-menu">
      <li><a class="app-menu__item" href="#"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">预约管理</span></a></li>
      <li><a class="app-menu__item" href="Manager_Drug.jsp"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">药品管理</span></i></a>
      
      </li>
      <li><a class="app-menu__item" href="Manager_Symptom.jsp"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">病症管理</span></i></a>
        
      </li>
      <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">用户管理</span><i class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
            <li><a class="treeview-item" href="Manager_Data_Patient.html"><i class="icon fa fa-circle-o"></i>患者管理</a></li>
            <li><a class="treeview-item" href="Manager_Data_Staff.html"><i class="icon fa fa-circle-o"></i>职工管理</a></li>
        </ul>
      </li>
    </ul>
  </aside>
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> 药品管理</h1>
          <p>管理员药品数据库管理</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">数据库管理</li>
          <li class="breadcrumb-item active"><a href="#">药品数据库</a></li>
        </ul>
        <a class="btn btn-primary icon-btn" href="Manager_Drug_UpdateForm.html" target="_blank"><i class="fa fa-file"></i>修改</a>
        
     </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-body">
              <div class="table-responsive">
                 <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr>
                      <th>编号</th>
                      <th>中文名</th>
                      <th>通用名</th>
                      <th>指示</th>
                      <th>剂量</th>
                      <th>禁忌</th>
                      <th>副作用</th>
                      <th>药物相克</th>
                      <th>形态</th>
                      <th>包装</th>
                      <th>注意事项</th>
                      <th>内含药物名</th>
                      <th>主要成分</th>
                      <th>英文名</th>
                      <th>展示名</th>
                    </tr>
                  </thead>
                  <tbody id="tbody">
                  </tbody>
                   <script type="text/html" id="DrugM-script">
                        {{ each data value i }}<tr>
                         <td>{{value.id}} </td>
                        <td>{{value.cname}} </td>
                        <td>{{value.showName}} </td>
                        <td>{{value.dosage}}</td>
                        <td>{{value.precautions}} </td>
                        <td>{{value.contraindications}} </td>
                        <td>{{value.adverseReactions}}</td>
                        <td>{{value.drugInteractions}}</td>
                        <td>{{value.type}} </td>
                        <td>{{value.pack}} </td>
                        <td>{{value.indication}}</td>
                        <td>{{value.innComponentName}}</td>
                        <td>{{value.component}} </td>
                        <td>{{value.commonName}}</td>
                        <td>{{value.engName}}</td></tr>
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
   <script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
        	url: "alldrug",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody").append(template("DrugM-script",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });



</script>
  </body>
</html>
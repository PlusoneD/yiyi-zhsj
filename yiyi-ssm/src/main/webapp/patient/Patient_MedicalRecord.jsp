<%@ page language="java" contentType="text/html; charset=UTF-8"
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
  <title>易医-病历</title>
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
    <title>易医-病历</title>
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
          <li><a class="dropdown-item" href="Patient_PersonInfo.html"><i class="fa fa-user fa-lg"></i> 个人资料</a></li>
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
        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
      <div>
        <p class="app-sidebar__user-name">John Doe</p>
        <p class="app-sidebar__user-designation">Frontend Developer</p>
      </div>
    </div>
    <ul class="app-menu">
      <li><a class="app-menu__item  active" href="Patient_MedicalRecord.html"><i
            class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">病历</span></a></li>
      <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
            class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">分诊服务</span><i
            class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item" href="Patient_Triage_AddTriageInfo.html"><i class="icon fa fa-circle-o"></i>
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
    <div class="row user">
      <div class="col-md-12">
        <div class="profile">
          <div class="info">
            <h4>病患姓名</h4>
            <p>性别+病人编号+出生年月</p>
          </div>
          <!-- <div class="cover-image"></div> -->
        </div>
      </div>
      <div class="col-md-3">
        <div class="tile p-0">
          <ul class="nav flex-column nav-tabs user-tabs">
            <li class="nav-item"><a class="nav-link active" href="#user-timeline" data-toggle="tab">历史病历</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-9">
        <div class="tab-content">
          <div class="tab-pane active" id="user-timeline">
            <div class="timeline-post" id="tbody">

            </div>
            <script type="text/html" id="PatientMr-script">
            {{ each data value i }}
            <div class="timeline-post">
              <div class="post-media"><a href="#"><img
                    src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"></a>
                <div class="content">
                  <h5><a href="#">{{value.patient}}</a></h5>
                  <p class="text-muted"><small>{{value.M_Time}}</small></p>
                </div>
              </div>
              <div class="post-content">
                <label><b>主治医生 </b></label>
                <p>{{value.doctor}}</p>
                <label><b>时间 </b></label>
                <p>{{value.M_Time}}</p>
                <label><b>主诉 </b></label>
                <p>{{value.M_Complaint}}</p>
                <label><b>检查结果 </b></label>
                <p>{{value.M_InspectResult}}</p>
                <label><b>诊断结果</b></label>
                <p>{{value.M_Diagnosis}}</p>
                <label><b>处方说明 </b></label>
                <p>暂无</p>
                <label><b>建议 </b></label>
                <p>{{value.M_Advice}}</p>
              </div>
            </div>
                 {{ /each }}
             </script>
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
    $('#sl').on('click', function () {
      $('#tl').loadingBtn();
      $('#tb').loadingBtn({ text: "Signing In" });
    });

    $('#el').on('click', function () {
      $('#tl').loadingBtnComplete();
      $('#tb').loadingBtnComplete({ html: "Sign In" });
    });

    $('#demoDate').datepicker({
      format: "yyyy-mm-dd",
      autoclose: true,
      todayHighlight: true
    });

    $('#demoSelect').select2();
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
            url: "mrgetByPatientId",
            type: "post",
            data:{
                id:"P0000011"
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody").append(template("PatientMr-script",{data:data}));
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
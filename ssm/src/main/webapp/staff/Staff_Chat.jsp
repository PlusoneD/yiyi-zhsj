吧<%@ page language="java" contentType="text/html; charset=GB2312"
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

      <li><a class="app-menu__item active" href="Staff_Chat.html"><i class="app-menu__icon fa fa-file-text"></i><span
            class="app-menu__label">消息盒子</span></a></li>
    </ul>
  </aside>

  <main class="app-content">
    <div class="app-title">
      <div>
        <h1><i class="fa fa-archive"></i> 消息盒子</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="#">消息盒子</a></li>
      </ul>
    </div>

    </div>
    <div class="row">
      <div class="col-md-8" style="padding-right: 2px;">
        <div class="tile">
          <h3 class="tile-title">留言板</h3>
          <div class="messanger">
            <div class="messages" id="info">
            </div>
            <div class="sender">
              <input type="text" placeholder="发送消息" id="text">
              <button class="btn btn-primary" type="button" id="add"><i class="fa fa-lg fa-fw fa-paper-plane"></i></button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-4" style="padding-left: 2px;">
        <div class="tile">
          <h3 class="tile-title">交流专栏</h3>
          <div class="messanger">
            <div class="row">
              <button 
                style="width:100%;border-width:0px;background-color: #009687a8;color: #FFF">最新消息</button>
            </div>
            <div class="messages" id="latest" style="max-height: 315px;min-height: 315px;">
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
       cl()
    });
    
    function cl(){
        var latest="";
    	 $.ajax({
             url: "getByCLStaff_id",
             type: "post",
             data:{
                 Staff_id:"D0001"
             },
             success: function (data) {
                 console.log(data);
                 if(data == "") {
                     alert("暂无相关信息！");
                     console.log(data);
                 }
                 for (var i = 0; i < data.length; i++) {
                 	var div = "<div onmouseover=\"this.style.backgroundColor='rgb(197, 193, 193)'\"onmouseout=\"this.style.backgroundColor='#FFF'\" class=\"message\""
                 	latest += div + " onclick=\"info(\'"+data[i].User_id+"\',\'"+data[i].Chat_id+"\',\'"+data[i].S_Identity+"\')\">" + "<img src=\"../images/patient.jpg\" style=\"width:48px;height:48px\">" + data[i].U_Name + "</div>";   
                 }
                 $("#latest").empty();
                 $("#latest").append(latest);
                 console.log(latest);
                 info(data[0].User_id,data[0].Chat_id,data[0].S_Identity);
             }, error: function (data) {
             	alert("error");
                 console.log(data);
             }
         });
    }
  </script>

<script>
var chat_id,staff_id,s_identity;

function info(Patient_id,Chat_id,S_identity){
	var info="";
	var Staff_id="D0001";
    $.ajax({
        url: "getByInfoS_id",
        type: "post",
        data:{
            Patient_id:Patient_id,
            Staff_id:Staff_id
        },
        success: function (data) {
        	if(Staff_id[0]=="D"){
            	$("#info").empty();
                for (var i = 0; i < data.length; i++) {
                	if(data[i].U_identity=="Patient"){
                		info += "<div class=\"message\"><img src=\"../images/patient.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" + data[i].I_Text + "</p></div>";     
                	}
                	else{info += "<div class=\"message me\"><img src=\"../images/doctor.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" +data[i].I_Text + "</p></div>";}
                }
                chat_id = Chat_id;
                staff_id = Patient_id;
                s_identity = S_identity;
                $("#info").append(info);
                var ele = document.getElementById('info');
                ele.scrollTop = ele.scrollHeight;
        	}
        	if(Staff_id[0]=="N"){
            	$("#info").empty();
                for (var i = 0; i < data.length; i++) {
                	if(data[i].U_identity=="Patient"){
                		info += "<div class=\"message\"><img src=\"../images/patient.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" + data[i].I_Text + "</p></div>";     
                	}
                	else{info += "<div class=\"message me\"><img src=\"../images/nurse.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" +data[i].I_Text + "</p></div>";}
                }
                chat_id = Chat_id;
                staff_id = Patient_id;
                s_identity = S_identity;
                $("#info").append(info);
                var ele = document.getElementById('info');
                ele.scrollTop = ele.scrollHeight;
        	}
        }, error: function (data) {
        	alert("error");
            console.log(data);
        }
    });
}
</script>
<script>
$(add).click(function () {
	var I_Text = document.getElementById("text").value;
	
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
        url: "addinfo",
        type: "post",
        data:{
        	I_Text:I_Text,
        	I_SendTime:time,
        	Chat_id:chat_id,
            User_id:"D0001"
        },
        success: function (data) {
            info(staff_id,chat_id,s_identity);
            document.getElementById("text").value="";
            cl();
        }, error: function (data) {
        	alert("error");
            console.log(data);
        }
    });
});
</script>


</body>

</html>
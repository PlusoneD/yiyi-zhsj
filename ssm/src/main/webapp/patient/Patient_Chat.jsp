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
  <header class="app-header"><a class="app-header__logo" href="../index.html">Yiyi</a>
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
      <li><a class="app-menu__item" href="Patient_MedicalRecord.html"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">病历</span></a></li>
      <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">分诊服务</span><i class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item" href="Patient_Triage_AddTriageInfo.html"><i class="icon fa fa-circle-o"></i> 智能分诊</a></li>
          <li><a class="treeview-item" href="Patient_Triage_TriageInfo.html" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i>分诊历史</a></li>
        </ul>
      </li>
      <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">挂号</span><i class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item" href="Patient_Registration_AddRegInfo.html"><i class="icon fa fa-circle-o"></i>门诊预约</a></li>
          <li><a class="treeview-item" href="Patient_Registration_RegInfo.html"><i class="icon fa fa-circle-o"></i>预约历史</a></li>
        </ul>
      </li>
      <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">药品提示</span><i class="treeview-indicator fa fa-angle-right"></i></a>
        <ul class="treeview-menu">
          <li><a class="treeview-item" href="Patient_Medicine.html"><i class="icon fa fa-circle-o"></i> 用药提示</a></li>
          <li><a class="treeview-item" href="Patient_Drip.html"><i class="icon fa fa-circle-o"></i>点滴提示</a></li>
        </ul>
      </li>
      <li><a class="app-menu__item active" href="Patient_Chat.html"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">消息盒子</span></a></li>
      
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
      <div class="col-md-8" style="padding-right: 2px; max-height: 301px;min-height: 300px;">
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
              <button id="btn1" onclick="change(1)"
                style="width:50%;border-width:0px;background-color: #009687a8;color: #FFF">最新消息</button>
              <button id="btn2" onclick="change(2)"
                style="width:50%;border-width:0px;background-color: #009688;color: #FFF">医护列表</button>
            </div>

            <div class="messages" id="latest" style="max-height: 315px;min-height: 315px;">
            </div>

            <div class="messages" id="group" style="max-height: 315px;min-height: 315px;display:none;"></div>
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
    function change(num) {
      if (num == 1) {
        document.getElementById("latest").style.display = "block";
        document.getElementById("group").style.display = "none";
        document.getElementById("btn1").style.backgroundColor = '#009687a8';
        document.getElementById("btn2").style.backgroundColor = "#009688";
      }
      else {
        document.getElementById("group").style.display = "block";
        document.getElementById("latest").style.display = "none";        
        document.getElementById("btn1").style.backgroundColor = '#009688';
        document.getElementById("btn2").style.backgroundColor = "#009687a8";
      }
    }
  </script>
  
  <script type="text/javascript">
    $(document).ready(function () {
    	cl();
    });
    
    function cl(){
        var latest="";
        $.ajax({
            url: "getByCLPatient_id",
            type: "post",
            data:{
                Patient_id:"P0000001"
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                for (var i = 0; i < data.length; i++) {
                	var div = "<div onmouseover=\"this.style.backgroundColor='rgb(197, 193, 193)'\"onmouseout=\"this.style.backgroundColor='#FFF'\" class=\"message\""
                	if(data[i].S_Identity=="Nurse"){
                		latest += div + " onclick=\"info(\'"+data[i].User_id+"\',\'"+data[i].Chat_id+"\',\'"+data[i].S_Identity+"\')\">" + "<img src=\"../images/nurse.jpg\" style=\"width:48px;height:48px\">" + data[i].U_Name + "</div>";     
                	}
                	else{latest += div + " onclick=\"info(\'"+data[i].User_id+"\',\'"+data[i].Chat_id+"\',\'"+data[i].S_Identity+"\')\">" + "<img src=\"../images/doctor.jpg\" style=\"width:48px;height:48px\">" + data[i].U_Name + "</div>";}     
                }
                $("#latest").empty();
                $("#latest").append(latest);
                console.log(latest);
                info(data[0].User_id,data[0].S_Identity);
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    }
  </script>
  
  
  
  <script type="text/javascript">
    var all="";
    $(document).ready(function () {
        $.ajax({
            url: "getByCAPatient_id",
            type: "post",
            data:{
                Patient_id:"P0000001"
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                for (var i = 0; i < data.length; i++) {
                	var div = "<div onmouseover=\"this.style.backgroundColor='rgb(197, 193, 193)'\"onmouseout=\"this.style.backgroundColor='#FFF'\" class=\"message\""
                	if(data[i].S_Identity=="Nurse"){
                		all += div + " onclick=\"info(\'"+data[i].User_id+"\',\'"+data[i].Chat_id+"\',\'"+data[i].S_Identity+"\')\">" + "<img src=\"../images/nurse.jpg\" style=\"width:48px;height:48px\">" + data[i].U_Name + "</div>";     
                	}
                	else{all += div + " onclick=\"info(\'"+data[i].User_id+"\',\'"+data[i].Chat_id+"\',\'"+data[i].S_Identity+"\')\">" + "<img src=\"../images/doctor.jpg\" style=\"width:48px;height:48px\">" + data[i].U_Name + "</div>";}     
                }
                $("#group").append(all);
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });
  </script>

<script>
var chat_id,staff_id,s_identity;

function info(Staff_id,Chat_id,S_identity){
	var info="";
    $.ajax({
        url: "getByInfoP_id",
        type: "post",
        data:{
            Patient_id:"P0000001",
            Staff_id:Staff_id
        },
        success: function (data) {
        	$("#info").empty();
            console.log(data);
            for (var i = 0; i < data.length; i++) {
            	if(data[i].U_identity=="Patient"){
            		info += "<div class=\"message me\"><img src=\"../images/patient.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" + data[i].I_Text + "</p></div>";     
            	}
            	else if(S_identity=="Nurse"){
            		info += "<div class=\"message\"><img src=\"../images/nurse.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" +data[i].I_Text + "</p></div>";
            	}
            	else{info += "<div class=\"message\"><img src=\"../images/doctor.jpg\" style=\"width:48px;height:48px\"><p class=\"info\">" +data[i].I_Text + "</p></div>";}
            }
            chat_id = Chat_id;
            staff_id = Staff_id;
            s_identity = S_identity;
            $("#info").append(info);
            var ele = document.getElementById('info');
            ele.scrollTop = ele.scrollHeight;
        }, error: function (data) {
        	alert("error");
            console.log(data);
        }
    });
}

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
            User_id:"P0000001"
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
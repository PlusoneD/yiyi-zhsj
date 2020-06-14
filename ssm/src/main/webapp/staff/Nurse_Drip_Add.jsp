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
  <link rel="stylesheet" type="text/css" href="../css/triage.css">
  <link rel="stylesheet" href="../css/bootstrap-switch.css">
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
          <li><a class="treeview-item active" href="Nurse_Drip_Add.html"><i class="icon fa fa-circle-o"></i>添加清单</a>
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
        <h1><i class="fa fa-th-list"></i> 添加清单</h1>
      </div>
      <ul class="app-breadcrumb breadcrumb side">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item">点滴提示</li>
        <li class="breadcrumb-item active"><a href="#">添加清单</a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="tile">
          <h3 class="tile-title">添加清单</h3>
          <div class="tile-body">
            <form>
              <div class="form-group">
                <label class="control-label">患者ID</label>
                <div class="row" style="padding-left: 15px;padding-right: 15px">
                  <input class="form-control" type="text" id="id" placeholder="点击患者表添加直接获取" style="width:83%" disabled="true">
                  <div style="width:2%"></div>
                  <button class="btn btn-outline-primary" type="button" style="width:15%;float:right;" id="insertPDL">确认</button>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label">点滴次序</label>
                <div class="row" style="padding-left: 15px;padding-right: 15px">
                  <input class="form-control" id="sequence" type="number"
                    style="width:83%" disabled="true" value=1>
                </div>
              </div>
              <div id="start">
              </div>
              <div class="form-group">
                <label class="control-label">点滴ID</label>
                <div class="row" style="padding-left: 15px;padding-right: 15px">
                  <input class="form-control" id="drug" type="text" placeholder="点击药品表添加直接获取" style="width:83%" disabled="true">
                </div>
              </div>
              <div class="form-group">
                <label class="control-label">点滴剂量</label>
                <div class="row" style="padding-left: 15px;padding-right: 15px">
                  <input class="form-control" id="dose" type="text" placeholder="输入相应剂量" style="width:83%">
                </div>
              </div>
            </form>
          </div>
          <div class="tile-footer">
            <button class="btn btn-primary" type="button" id="next"><i
                class="fa fa-fw fa-lg fa-check-circle"></i>下一瓶</button>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="tile">
          <h3 class="tile-title">信息表
            <div class="toggle-flip" style="float:right;">
              <label>
                <input id="check" type="checkbox" onchange="next(this)" checked>
              </label>
            </div>
          </h3>
          <div class="tile-body" id="patient" style="width:auto;height:auto;">
            <div class="table-responsive">
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th>患者ID</th>
                    <th>患者姓名</th>
                    <th>手机号码</th>
                    <th>确认添加</th>
                  </tr>
                </thead>
                <tbody id="tbody">
                  <script type="text/html" id="AddP-script">
                        {{ each data value i }}<tr>
                         <td>{{value.user_id}} </td>
                        <td>{{value.u_Name}}</td>
                        <td>{{value.u_PhoneNumber}} </td>
                        <td><button class="btn btn-primary btn-sm" onclick="AddUser('{{value.user_id}}')" type="button">添加</button></td></tr>
                        {{ /each }}
                 </script>
                </tbody>
              </table>
            </div>
          </div>

          <div class="tile-body" id="drip" style="display:none;width:auto;height:auto;">
            <div class="table-responsive">
              <table class="table table-hover table-bordered" id="sampleTable1">
                <thead>
                  <tr>
                    <th>点滴ID</th>
                    <th>点滴名称</th>
                    <th>确认添加</th>
                  </tr>
                </thead>
                <tbody id="tbody1">
                  <script type="text/html" id="Drug-script">
                        {{ each data value i }}<tr>
                         <td>{{value.drug_id}} </td>
                        <td>{{value.d_CommonName}}</td>
                        <td><button class="btn btn-primary btn-sm" onclick="AddDrug('{{value.drug_id}}')" type="button">添加</button></td></tr>
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
  <script src="../js/jquery-3.3.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/main.js"></script>
  <!-- The javascript plugin to display page loading on top-->
  <script src="../js/plugins/pace.min.js"></script>
  <script src="../layui/layui.js"></script>
  <!-- Page specific javascripts-->
  <script src="../js/jquery.min.js" charset="UTF-8"></script>
  <script src="../js/highlight.js" charset="UTF-8"></script>
  <script src="../js/bootstrap-switch.js" charset="UTF-8"></script>
  <script src="../js/main1.js" charset="UTF-8"></script>
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
  //确认病患添加留言及点滴清单
  var DL_id;
  var time;
  $(insertPDL).click(function(){
      var id = $("#id").val();
      if(id!=""){
    	  $("#insertPDL").attr({ "disabled": "disabled" });
    	  //插入交流列表
          $.ajax({
              url: "addlist",
              type: "post",
              data:{
            	  Patient_id:id,
            	  Staff_id:"N0001"
              },
              success: function (data) {
                  console.log(data);
              }, error: function (data) {
              	alert("error");
                  console.log(data);
              }
          });
          //插入driplist
          time = time();
          $.ajax({
              url: "insertDL",
              type: "post",
              data:{
            	  Patient_id:id,
            	  Nurse_id:"N0001",
            	  D_Time:time
              },
              success: function (data) {
                  console.log(data);
              }, error: function (data) {
              	  alert("error");
                  console.log(data);
              }
          });
      }
  });
  
  $(next).click(function(){	  
      var button = document.getElementById('insertPDL').disabled; 
      var sequence = parseInt($("#sequence").val());
      var drug = document.getElementById('drug').value;
      var dose = document.getElementById('dose').value;

	  var id = $("#id").val();
      //获取driplist的id
      $.ajax({
          url: "selectDLid",
          type: "post",
          async:false,
          data:{
        	  Patient_id:id,
        	  Nurse_id:"N0001"
          },
          success: function (data) {
              console.log(data);
              DL_id=data[0].dripList_id;
          }, error: function (data) {
          	alert("error");
              console.log(data);
          }
      });
      
      
      if(button == false){
    	  layui.use('layer',function(){
    		  layui.layer.msg("请先确认病患");
    	  })
      }
      else if(drug==""||dose==""){
    	  layui.use('layer',function(){
    		  layui.layer.msg("请添加药品或输入剂量");
    	  })
      }
      else{
          if(sequence == 1){        	  
        	  time=time;
        	  state="正在打";
              $.ajax({
                  url: "insertD",
                  type: "post",
                  async:false,
                  data:{
                	  DripList_id:DL_id,
                	  Drug_id:drug,
                	  D_Sequence:sequence,
                	  D_Dose:dose,
                	  D_State:state,
                	  D_Time:time
                  },
                  success: function (data) {
                      console.log(data);
                      document.getElementById('drug').value="";
                      document.getElementById('dose').value="";
                  }, error: function (data) {
                  	alert("error");
                      console.log(data);
                  }
              });
          }
          else{        	  
        	  state="还没打";
              $.ajax({
                  url: "insertD2",
                  type: "post",
                  async:false,
                  data:{
                	  DripList_id:DL_id,
                	  Drug_id:drug,
                	  D_Sequence:sequence,
                	  D_Dose:dose,
                	  D_State:state
                  },
                  success: function (data) {
                      console.log(data);
                      document.getElementById('drug').value="";
                      document.getElementById('dose').value="";
                  }, error: function (data) {
                  	alert("error");
                      console.log(data);
                  }
              });
        }
        document.getElementById("sequence").value = sequence+1;
      }
  });
  
  </script>
  <script>
  //获取时间
    function time() {
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
        return time;
    }
  
  //展示信息
    function next(checkbox) {
      if (checkbox.checked == true) {
        document.getElementById("patient").style.display = "block";
        document.getElementById("drip").style.display = "none"; 
      }
      else {
        document.getElementById("drip").style.display = "block";
        document.getElementById("patient").style.display = "none";
      }
    }
  </script>
  
  <script type="text/javascript">
  //病人信息展示
    $(document).ready(function () {
        $.ajax({
            url: "getAllP",
            type: "post",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                
                $("#tbody").append(template("AddP-script",{data:data}));
                $("#sampleTable").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });
</script>

  <script type="text/javascript">
    $(document).ready(function () {
        $.ajax({
            url: "getDrug",
            type: "post",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody1").append(template("Drug-script",{data:data}));
                $("#sampleTable1").dataTable();
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });
</script>
<script>
  function AddUser(user_id){
      var button = document.getElementById('insertPDL').disabled; 
      if(button == false){document.getElementById("id").value = user_id; }
  }
  
  function AddDrug(drug_id){
	  document.getElementById("drug").value = drug_id; 
  }
</script>
</body>

</html>
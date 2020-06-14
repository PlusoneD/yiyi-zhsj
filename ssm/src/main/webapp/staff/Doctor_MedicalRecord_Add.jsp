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
        <li><a class="dropdown-item" href="Staff_PersonInfo.jsp"><i class="fa fa-user fa-lg"></i> 个人资料</a></li>
        <li><a class="dropdown-item" href="Staff_Changepwd.jsp"><i class="fa fa-sign-out fa-lg"></i> 修改密码</a></li>
        <li><a class="dropdown-item" href="../index.jsp"><i class="fa fa-sign-out fa-lg"></i> 注销</a></li>
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
            <li><a class="treeview-item" href="Doctor_MedicalRecord_Add.jsp"><i class="icon fa fa-circle-o"></i> 新增病历</a>
            </li>
            <li><a class="treeview-item" href="Doctor_MedicalRecord_History.jsp"><i class="icon fa fa-circle-o"></i>
                历史记录</a></li>
            <li><a class="treeview-item" href="Doctor_MedicalRecord_Search.jsp"><i class="icon fa fa-circle-o"></i>
                病患查找</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
              class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">点滴提示</span><i
              class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="Nurse_Drip_Add.jsp"><i class="icon fa fa-circle-o"></i>添加清单</a>
            </li>
            <li><a class="treeview-item" href="Nurse_Drip.jsp"><i class="icon fa fa-circle-o"></i> 查看清单</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="Staff_Triage_UpdateTriageInfo.html"><i
              class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">分诊管理</span></a></li>
  
        <li><a class="app-menu__item" href="Staff_Chat.jsp"><i class="app-menu__icon fa fa-dashboard"></i><span
              class="app-menu__label">消息盒子</span></a></li>
      </ul>
    </aside>
 
    <main class="app-content">
        <div class="app-title">
          <div>
            <h1><i class="fa fa-edit"></i> 新建病历</h1>
            
          </div>
          <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">病历</li>
            <li class="breadcrumb-item"><a href="#">新增病历</a></li>
          </ul>
        </div>
        <div class="row">
          <div class="col-md-8">
            <div class="tile">
              <h3 class="tile-title">新建病历</h3>
              <div class="tile-body">
                <form action="mrinsert" method="post">
                <div class="row">
                    <div class="col-md-12  mb-4">
                    <label>时间</label>
                    <input class="form-control" name="time" id="demoDate" type="text" placeholder="点击选择日期">   
                    </div>
                    <div class="clearfix"></div>
                   
                    <div class="col-md-12 mb-4">
                    <label>患者编号</label>
                    <input class="form-control" name="Pid" type="text">
                    </div>
                    <div class="col-md-12 mb-4">
                    <label>主诉</label>
                    <textarea class="form-control" name="complaint" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>检查结果</label>
                    <textarea class="form-control" name="inspect" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>诊断结果</label>
                    <textarea class="form-control" name="diagnosis" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>处方说明</label>
                    <textarea class="form-control" name="prescriptioninstructions"  type="5"></textarea>
                    </div>
                      <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                     <label>药品</label>
                     <textarea style="display:none;" class="form-control" id="drugSelect2" name="drugInMr"  type="3"></textarea>
              <select class="form-control" id="drugSelect" name="drugInMr" multiple="multiple">
                <optgroup label="Select Drug" name="drugInMr" id="optionList">
                </optgroup>
                 <script type="text/html" id="MedDrugAdd-script">
                        {{ each data value i }}
                         <option value="{{value.id}}">{{value.id}} {{value.commonName}} </option>
                        {{ /each }}
                 </script>
              </select>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>建议</label>
                    <textarea class="form-control" name="advice" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>确认提交</label>
                    <div class="toggle-flip">
                        <label>
                        <input type="checkbox" name="state"><span class="flip-indecator" data-toggle-on="提交" data-toggle-off="仅保存"></span>
                        </label>
                    </div>
                    </div>
                 
                   
                    <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row mb-10">
                        <div class="col-md-12">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>确认</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" type="submit"><i class="fa fa-fw fa-lg fa-times-circle"></i>关闭</a>
                        </div>
                    </div>
                </form>
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
    
    $('#demoDate').datepicker({
        format: "yyyy/mm/dd",
        autoclose: true,
        todayHighlight: true
    });
   
    
    $('#drugSelect').select2();
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

      $("#drugSelect").change(function(){
		     //要触发的事件		  
	      var items = new Array();
       var itemTitle = new Array();
	      items = $("#drugSelect option:selected");
//此处取到了每个item，items[i].text则取到的是option中的文字，下面取到的是value属性
	      for(var i = 0;i<items.length;i++){
		      itemTitle.push(items[i].value);
	      }
       console.log(itemTitle);
       $("#drugSelect2").val(itemTitle);
       
    });

      
    $(document).ready(function () {
        $.ajax({
        	url: "alldrug",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#optionList").append(template("MedDrugAdd-script",{data:data}));
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });

    </script>
    </body>
  </html>
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
      <li><a class="app-menu__item" href="Manager_Drug.html"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">药品管理</span></i></a>
      
      </li>
      <li><a class="app-menu__item" href="Manager_Symptom.html"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">病症管理</span></i></a>
        
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
          <h1><i class="fa fa-th-list"></i> 病症管理</h1>
          <p>管理员病症数据库管理</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">数据库管理</li>
          <li class="breadcrumb-item active"><a href="#">病症数据库</a></li>
        </ul>
        
     </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
           <div class="row" style="margin-top: 10px;margin-bottom: 20px;">
                    <div class="col-md-6"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-4">
                    <button class="btn btn-outline-primary" type="button" style="float: right; margin-left: 10px;"
                                data-method="addSymp" id="addSymp"><a href="symptomAdd">添加病症</a></button>
                    </div>
                </div>
            <div class="tile-body">
              <div class="table-responsive">
                 <table class="table table-hover table-bordered" id="SympTable">
                  <thead>
                    <tr>
                      <th>编号</th>
                      <th>人体部位</th>
                      <th>详细描述</th>
                      <th style="min-width: 200px">操作</th>
                    </tr>
                  </thead>
                  <tbody id="tbody">       
                  </tbody>
                  <script type="text/html" id="SymptomM-script">
                        {{ each data value i }}<tr>
                        <td class="symptom_id hidden">{{value.symptom_id}} </td>
                        <td>{{value.s_BodyPart}} </td>
                        <td>{{value.s_Description}}</td>
                        <td><button class="btn btn-primary btn-sm viewInfo" type="button">修改</button>
                        <button class="btn btn-primary btn-sm delete" type="button">删除</button>
                         </tr>
                        {{ /each }}
                 </script>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    
 <div id="view">
    <div class="tile" style="margin-bottom: 0px; box-shadow: 0 0px 0px 0 rgba(0, 0, 0, 0)">
                       <div class="tile-body">
                  <form action="updateSym" method="post">
                    <div class="form-group">
                        <label class="control-label">编号</label>
                        <input class="form-control" name="id" id="vid" type="text" placeholder="填写病症编号">
                    </div>
                    <div class="form-group">
                        <label class="control-label">人体部位</label>
                        <textarea class="form-control" name="bodypart" id="vbodypart" type="2" placeholder="填写人体部位"></textarea>
                    </div>
                    <div class="form-group">
                        <label class="control-label">详细描述</label>
                        <textarea class="form-control" name="description" id="vdescription" type="5" placeholder="填写详细描述"></textarea>
                        </div>
                  
                   
                <div class="tile-footer">
                <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>提交</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>取消</a>
            </div>
            </form>
        </div>
    </div>
</div>
    

  <!-- Essential javascripts for application to work-->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="../js/plugins/pace.min.js"></script>
  <!-- Page specific javascripts-->
  
  <script src="../layui/layui.js"></script>
  <!-- Data table plugin-->
  <script type="text/javascript" src="../js/plugins/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="../js/plugins/dataTables.bootstrap.min.js"></script>
  <script type="text/javascript" src="../js/template.js"></script>
  <script type="text/javascript">
 
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
      function updateData(){
      	$("#view").hide();
      	
    	$("#SympTable").dataTable().fnDestroy();
        $.ajax({
        	url: "allsym",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody").empty();
                $("#tbody").append(template("SymptomM-script",{data:data}));
                $('#SympTable').DataTable({
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
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
      }
  
      
    $(document).ready(function () {
    	$("#view").hide();
    	$("#SympTable").dataTable().fnDestroy();
        $.ajax({
        	url: "allsym",
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                $("#tbody").append(template("SymptomM-script",{data:data}));
                $('#SympTable').DataTable({
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
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });
    //查看修改信息
    $('body').on('click', '.viewInfo', function () {
        var symptom_id = $(this).parent().parent().children(".symptom_id").text();
        $.ajax({
            url: "getSymById",
            type: "post",
            data:{
                id:symptom_id,
            },
            success: function (data) {
                console.log(data);
                    $("#vid").val(data["symptom_id"]);
                    $("#vbodypart").val(data["s_BodyPart"]);
                    $("#vdescription").val(data["s_Description"]);
            }, error: function (data) {
                layer.msg("系统错误！");
                console.log(data);
            }
        })
        layui.use('layer', function () { //独立版的layer无需执行这一句
            var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
            layer.open({
                type: 1
                , title: '修改病症'
                , area: '500px;'
                , shade: 0.3
                , id: 'LAY_2' //防止重复弹出
                , content: $("#view")
                , btnAlign: 'c' //按钮居中
            });
        })
        return false;
    })
    //删除
    $('body').on('click', '.delete', function () {
        var id = $(this).parent().parent().children(".symptom_id").text();
        $.ajax({
            url: "delSym",
            data:{
                id:id
            },
            type: "post",
            async:false,
            success: function (data) {
            	updateData();
                console.log(data);
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        })

    });
</script>
  </body>
</html>
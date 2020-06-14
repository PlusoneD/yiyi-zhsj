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
              <li class="nav-item"><a class="nav-link" href="#user-settings" data-toggle="tab">新建病历</a></li>
            </ul>
          </div>
        </div>
      <div class="col-md-9">
        <div class="tab-content">
          <div class="tab-pane active" id="user-timeline">
            <div class="timeline-post" id="tbody">

            </div>
            <%
            request.setCharacterEncoding("UTF-8");
            String patientId=request.getParameter("id");
            
            %>
           
       
            <script type="text/html" id="DocMr-script">
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
                <label><b>药品 </b></label>
                <p>{{value.drugList}}</p>
                <label><b>处方说明 </b></label>
                <p>{{value.M_PrescriptionInstructions}}</p>
                <label><b>建议 </b></label>
                <p>{{value.M_Advice}}</p>
              </div>
            </div>
                 {{ /each }}
             </script>
          </div>
            <div class="tab-pane fade" id="user-settings">
              <div class="tile user-settings">
                <h4 class="line-head">新建病历</h4>
                <form action="mrinsert" method="post">
                <div class="row">
                    <div class="col-md-12  mb-4">
                    <label>时间</label>
                    <input class="form-control" name="time" id="demoDate" type="text" placeholder="点击选择日期">   
                    </div>
                    <div class="clearfix"></div>
                  
                   
                    <input style="display:none;" class="form-control" id="Pid" name="Pid" type="text" value="<%out.print(patientId);%>"> 
                   
                    <div class="col-md-12 mb-4">
                    <label>主诉</label>
                    <textarea class="form-control" name="complaint" id="vcomplaint" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>检查结果</label>
                    <textarea class="form-control" name="inspect" id="vinspect" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>诊断结果</label>
                    <textarea class="form-control" name="diagnosis" id="vdiagnosis" type="5"></textarea>
                    </div>
                    <div class="clearfix"></div>
                                <div class="col-md-12 mb-4">
                    <label>处方说明</label>
                    <textarea class="form-control" name="prescriptioninstructions" id="vprescriptioninstructions" type="5"></textarea>
                    </div>
                      <div class="clearfix"></div>
                     <div class="col-md-12 mb-4">
                     <label>药品</label>
                     <textarea readonly="readonly" class="form-control" id="drugSelect2" name="drugInMr"  type="2"></textarea>
              <select class="form-control" id="drugSelect" name="drugInMr" multiple="multiple">
               
              </select>
              <script type="text/html" id="MedDrugAdd-script">
                        {{ each data value i }}
                         <option value="{{value.id}}">{{value.id}} {{value.commonName}} </option>
                        {{ /each }}
                 </script>
                    </div>
                    <div class="clearfix"></div>
                    <div class="col-md-12 mb-4">
                    <label>建议</label>
                    <textarea class="form-control" id="vadvice" name="advice" type="5"></textarea>
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
                        <button class="btn btn-primary" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>确认</button>&nbsp;&nbsp;&nbsp;
                        <button class="btn btn-primary" type="button" onclick="qingkong()"><i class="fa fa-fw fa-lg fa-check-circle"></i>清空</button>
                        </div>
                    </div>
                </form>
              </div>
            </div>
        </div>
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
    
    $('#demoDate').datepicker({
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
    $("#patientId").val();
    function qingkong(){
        $("#vcomplaint").val("");
        $("#vinspect").val("");
        $("#demoDate").val("");
        $("#vdiagnosis").val("");
        $("#vprescriptioninstructions").val("");
        $("#vadvice").val("");
        $("#drugSelect2").val("");
    }
    
    $("#drugSelect").change(function(){
  	  var list=$("#drugSelect2").val();
	      var items = new Array();
        var itemTitle = new Array();
	      items = $("#drugSelect option:selected");
	      
//此处取到了每个item，items[i].text则取到的是option中的文字，下面取到的是value属性
	      for(var i = 0;i<items.length;i++){
		     // itemTitle.push(items[i].value);
	    	  itemTitle=itemTitle+items[i].value;
	      }
	      if(list==""){
	    	  list=itemTitle;
	      }else{
	    	  list=list+","+itemTitle;
	      }
	     
        console.log(itemTitle);
        $("#drugSelect2").val(list);
  
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
                  $("#drugSelect").append(template("MedDrugAdd-script",{data:data}));
              }, error: function (data) {
              	alert("error");
                  console.log(data);
              }
          });
        $.ajax({
            url: "mrgetByPatientId",
            type: "post",
            data:{
            	id:$("#Pid").val()
            },
            success: function (data) {
                console.log(data);
                if(data == "") {
                    alert("暂无相关信息！");
                    console.log(data);
                }
                for(var i =0;i<data.length;i++){
                	var mrId = data[i]['MedRecord_id'];
                	var druglist=new String();
                	$.ajax({
                        url: "searchForDrugFromRe",
                        type: "post",
                        async: false,
                        data:{
                            id:data[i]['MedRecord_id']
                        },
                        success: function (data2) {
                            console.log(data2);
                            if(data2==""){
                            	druglist="此病历暂无处方记录";
                            }
                            else{
                            	for(var j =0;j<data2.length;j++){
                            		var j1=j+1;
                            		druglist=druglist+"药品"+j1.toString(10)+":"+data2[j]['drug_id']+";   ";
                            	}
                            }
                            
                        }, error: function (data) {
                            layer.msg("系统错误！");
                            console.log(data);
                        }
                    })
                    data[i]['drugList']=druglist;
                    
                }
                
                $("#tbody").append(template("DocMr-script",{data:data}));
               
            }, error: function (data) {
            	alert("error");
                console.log(data);
            }
        });
    });



</script>
  </body>
</html>
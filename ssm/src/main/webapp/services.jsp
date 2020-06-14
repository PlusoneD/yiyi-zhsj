<%@ page language="java" contentType="text/html; charset=GB2312"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>就诊须知</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
<!-- header -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
        <h1>
            <a class="navbar-brand text-white" href="index.html">
                旺旺医院
            </a>
        </h1>
        <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-lg-auto text-center">
                <li class="nav-item mr-3 mt-lg-0 mt-3">
                    <a class="nav-link" href="index.html">首页
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item active  mr-3 mt-lg-0 mt-3">
                    <a class="nav-link" href="services.html">就诊须知</a>
                </li>
                <li class="nav-item  mr-3 mt-lg-0 mt-3">
                    <a class="nav-link" href="introduce.html">专家介绍</a>
                </li>
                <li class="nav-item dropdown mr-3 mt-lg-0 mt-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                       data-toggle="dropdown" aria-haspopup="true"
                       aria-expanded="false">
                        科室概况
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="about.html">科室分布</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="typo.html">科室一览</a>
                    </div>
                </li>
                <li class="nav-item mr-3 mt-lg-0 mt-3">
                    <a class="nav-link" href="gallery.html">线上就医</a>
                </li>

                <li>
                    <button type="button" class="btn  ml-lg-2 w3ls-btn" data-toggle="modal" aria-pressed="false"
                            data-target="#exampleModal">
                        登录
                    </button>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- main image slider container -->
<div class="inner-banner">
</div>
<!-- end of main image slider container -->
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">就诊须知</a>
        </li>
        <li class="breadcrumb-item active" aria-current="page">就医流程</li>
    </ol>
</nav>
<!-- services -->
<div class="agileits-about py-lg-5">
    <div class="container py-4">
        <div class="text-center wthree-title pb-sm-5 pb-3">
            <h3 class="w3l-sub">持卡就医流程</h3>
            <h4 class="sub-title py-3">2020-05-10编辑</h4><br/>
            <img src="images\card.jpg" center/>
        </div>
    </div>
</div>
<!-- //services -->

<!-- footer -->
<footer class="py-sm-5">
    <div class="container">
        <div class="row py-5">
            <!-- footer grid1 -->
            <div class="col-lg-3 col-sm-6 fv5-contact">
                <h2 class="mb-4">联系我们</h2>
                <div class="fv3-contact mt-3">

                    <span class="fas fa-home mr-2"></span>
                    <p>旺旺街道666号</p>
                </div>
                <div class="fv3-contact mt-3">
                    <span class="fas fa-phone-volume mr-2"></span>
                    <p>+456 123 7890</p>
                </div>
                <div class="fv3-contact mt-3">
                    <span class="fas fa-envelope-open mr-2"></span>
                    <a href="mailto:example@email.com" class="text-secondary">wangwang@qq.com</a>
                </div>
            </div>
            <!-- //footer grid1 -->
            <!-- footer grid2 -->
            <div class="col-lg-3  col-sm-6 footv3-left text-lg-center my-sm-0 mt-5">
                <h3 class="mb-4">门诊时间</h3>
                <ul class="list-agileits">
                    <li>
                        工作日 ------- 09:00-17:00
                    </li>
                    <li class="my-3">
                        周六 -------- 09:30-17:00</a>
                    </li>
                    <li class="mb-3">
                        周日 ---------- 10:30-18:00
                    </li>

                </ul>
            </div>
            <!-- //footer grid2 -->
            <!-- footer grid3 -->
            <div class="col-lg-3  col-sm-6 footv3-left text-lg-center my-lg-0 mt-sm-5 mt-5">
                <h3 class="mb-4">关于我们</h3>
                <ul class="list-agileits">
                    <li>

                        版权所有©旺旺医院

                    </li>
                    <li>
                        传真：010-62765531
                    </li>

                    <li>
                        邮编：100871
                    </li>
                </ul>
            </div>
            <!-- //footer grid3 -->
        </div>

    </div>
    <!-- //footer container -->
</footer>
<!-- //footer -->

<!-- login  -->
<div class="modal fade"  id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true"  style="width:500px;margin:0px auto">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">登陆</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="recipient-name" class="col-form-label">易医号/工号</label>
                        <input type="text" class="form-control" placeholder=" " name="Name" id="recipient-name" required="">
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-form-label">密码</label>
                        <input type="password" class="form-control" placeholder=" " name="Password" id="password" required="">
                    </div>

                    <div class="form-group">
                        <table  cellspacing="5" cellpadding="5" >
                            <tr>
                                <td> <div id="checkCode" class="code"  onclick="createCode(4)" ></div></td>
                                <td> <span onclick="createCode(4)">看不清换一张</span></td>
                            </tr>
                            <tr>
                                <label for="text" class="col-form-label">验证码</label>
                                <td><input type="text" id="text"  class="form-control" placeholder=" " name="text"  required=""/></td>
                            </tr>
                        </table>
                    </div>
                    <div class="right-w3l">
                        <input type="submit" onclick="validateCode();return false;" class="form-control" value="登陆">
                    </div>

                    <p class="text-center dont-do" style="margin-top:20px">还未注册？
                        <a href="#" data-toggle="modal" data-target="#exampleModalCenter2" class="text-dark font-weight-bold">
                            现在注册</a>

                    </p>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- //login -->
<!--/Register-->
<div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true"
     style="width:1000px;margin:0px auto" style="display:none;">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h5 class="modal-title" id="exampleModalLabel">注册</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="login px-4 mx-auto mw-100">
                    <form>
                        <div class="form-group">
                            <label class="col-form-label">易医号</label>
                            <input type="text" class="form-control" id="nickname" placeholder="" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">姓名</label>
                            <input type="text" class="form-control" id="name" placeholder="" required="">
                        </div>
                        <div class="form-group">
                            <label class="mb-2 col-form-label">密码</label>
                            <input type="password" class="form-control" id="ipwd" onkeyup="validate()" placeholder="" required="">
                        </div>
                        <div class="form-group">
                            <label class="col-form-label">重复密码</label>
                            <input type="password" class="form-control" id="i2pwd" onkeyup="validate()" placeholder="" required="">
                        </div>
                        <div id="tishi" style="height:40px"></div>
                        <div class="reg-w3l">
                            <button type="submit" class="form-control mb-4" onclick="sub();return false;" id="btn">注册</button>
                        </div>
                    </form>

                </div>
            </div>

        </div>
    </div>
</div>
<!--//Register-->

<!-- //footer -->
<!-- js -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- //js -->
<script src="js/minimal-slider.js"></script>
<!-- flexSlider (for testimonials) -->
<!-- Calendar -->
<link rel="stylesheet" href="css/jquery-ui.css"/>
<script src="js/jquery-ui.js"></script>
<script>
    $(function () {
        $("#datepicker").datepicker();
    });
</script>
<!-- //Calendar -->

<script defer src="js/jquery.flexslider.js"></script>
<script>
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            start: function (slider) {
                $('body').removeClass('loading');
            }
        });
    });
</script>
<!-- //flexSlider (for testimonials) -->

<!-- script for password match -->
<script>
    window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }
</script>
<!-- script for password match -->
<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear' 
        };
        */

        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth-scrolling-of-move-up -->
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/bootstrap.js"></script>
<script src="layui/layui.js"></script>
</body>
</html>

<script>
    //页面加载时，生成随机验证码
    window.onload = function () {
        createCode(4);
    }

    //生成验证码的方法
    function createCode(length) {
        var code = "";
        var codeLength = parseInt(length); //验证码的长度
        var checkCode = document.getElementById("checkCode");
        ////所有候选组成验证码的字符，当然也可以用中文的
        var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
            'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
            'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
        //循环组成验证码的字符串
        for (var i = 0; i < codeLength; i++) {
            //获取随机验证码下标
            var charNum = Math.floor(Math.random() * 62);
            //组合成指定字符验证码
            code += codeChars[charNum];
        }
        if (checkCode) {
            //为验证码区域添加样式名
            checkCode.className = "code";
            //将生成验证码赋值到显示区
            checkCode.innerHTML = code;
        }
    }

    </script>
 <script>
 function validate() {
	 var password1 = document.getElementById("ipwd").value;
	 var password2 = document.getElementById("i2pwd").value;
	 if(password1 == password2) {
	 document.getElementById("tishi").innerHTML="<font color='green'>两次填写密码相同</font>";
	 document.getElementById("btn").disabled = false;
	 }
	 else {
	 document.getElementById("tishi").innerHTML="<font color='red'>两次填写密码不同</font>";
	 document.getElementById("btn").disabled = true;
	 }
	 }
 

//检查验证码是否正确
 function validateCode()
 {
     //获取显示区生成的验证码
     var checkCode = document.getElementById("checkCode").innerHTML;
     //获取输入的验证码
     var text = document.getElementById("text").value;
     //console.log(checkCode);
     //console.log(text);
     if (text.length <= 0)
     {
         layui.use('layer', function () { //独立版的layer无需执行这一句
             layui.layer.msg("请输入验证码！");
         });
     }
     else if (text.toUpperCase() != checkCode.toUpperCase())
     {
         layui.use('layer', function () { //独立版的layer无需执行这一句
             layui.layer.msg("验证码输入有误！");
         });
         createCode(4);
     }
     else
     {
         layui.use('layer', function () { //独立版的layer无需执行这一句
             layui.layer.msg("验证码正确！");
         });
         $.ajax({
             url:"login",
             data:{
                 number:$("#recipient-name").val(),
                 password:$("#password").val(),
             },
             type:"post",
             async:false,
             success: function (data) {
                 console.log(data);
                 if(data == "Patient"){
                     window.location.href = "Patient_MedicalRecord";
                 } else if(data == "Doctor") {
                     window.location.href = "Doctor_Call";
                 } else if(data == "Nurse") {
                     window.location.href = "Nurse_Drip_Add";
                 } else if(data == "TriagePerson") {
                     window.location.href = "Staff_Triage_UpdateTriageInfo";
                 } else if(data == "Manager") {
                     window.location.href = "Doctor_Call";
                 } else {
                     layui.use('layer', function () { //独立版的layer无需执行这一句
                         layui.layer.msg("登录失败！");
                     });
                 }
             },
             error: function (data) {
                 console.log(data);
                 layui.use('layer', function () { //独立版的layer无需执行这一句
                     layui.layer.msg("系统错误！");
                 });
             }
         })
     }


 }
</script>

 
 </script>
 <script>
 function sub() {
    	 var nickname = document.getElementById("nickname").value;
    	 var name = document.getElementById("name").value;
    	 var pwd = document.getElementById("ipwd").value;
    	 var check = 1;
    	 
         $.ajax({
             url:"selectNN",
             type: "post",
             async: false,
             data: {
            	 nickname:nickname
              },
             success: function (data) {
            	 console.log(data);
            	 if(data != ""){
                	 layui.use('layer',function(){
                		 layui.layer.msg("与其他易医号相同，请重新填写");
                	 });
                	 check = 2;
                	 document.getElementById("ipwd").value = "";
                	 document.getElementById("i2pwd").value = "";
            	 }
             }, error: function (data) {
           	     alert("处理异常");
           	     console.log(data);
         }
     });
         
         if(check == 1){
             $.ajax({
                 url:"selectEN",
                 type: "post",
                 async: false,
                 data: {
                	 nickname:nickname
                  },
                 success: function (data) {
                	 if(data != ""){
                    	 layui.use('layer',function(){
                    		 layui.layer.msg("与其他易医号相同，请重新填写");
                    	 });
                    	 check = 2;                	 
                    	 document.getElementById("ipwd").value = "";
                    	 document.getElementById("i2pwd").value = "";
                	 }
                 }, error: function (data) {
               	     alert("处理异常");
               	     console.log(data);
               	     }
                });
         }
    	 
         if(check == 1){
             $.ajax({
                 url:"addPatient",
                 type: "post",
                 async: false,
                 data: {
                	 nickname:nickname,
                	 name:name,
                	 password:pwd
                  },
                 success: function (data) {
                	 console.log(data);
                	 layui.use('layer',function(){
                		 layui.layer.msg("注册成功");
                	 });
                	 window.location.reload();
                 }, error: function (data) {
               	     alert("处理异常");
               	     console.log(data);
             }
         });
         }
    }
</script>

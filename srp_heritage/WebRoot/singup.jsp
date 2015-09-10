<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8"); %>
<html lang="zh-CN">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signup Step1</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Jasny Bootstrap CSS -->
    <link href="css/jasny-bootstrap.min.css" rel="stylesheet">

    <script src="js/jquery-1.11.3.js"></script>

    <!-- Jasny Bootstrap JS -->
    <script src="js/jasny-bootstrap.min.js"></script>

    <script type="text/javascript" src="js/jsAddress.js"></script>
  
    <script type="text/javascript">

  //调用插件
    $(function(){
      addressInit('Select1', 'Select2', 'Select3');
    });
    </script>
<!--
<script>
$(document).ready(function(){
  $("button").click(function(){
    $.moveDown();
  });
});
</script>
-->

    <script type="text/javascript">
function removeElement()
{
document.getElementById("area1").style.display="none";
}
</script>

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<meta charset="utf-8">
<title>jQuery单页/全屏滚动插件onepage-scroll演示-水平/横向滚动_dowebok</title>
<link rel="stylesheet" href="css/onepage-scroll.css" />
<style>
.page1 { background-color: #1bbc9b;}
.page2 { background-color: #FF7F50;}
.page3 { background-color: #4BBFC3;}
.page4 { background-color: #f90;}
p.title { position: relative; top: 35%; font: 700 40px "Microsoft Yahei"; color: #fff; text-align: center;}
</style>
<script src="http://cdn.staticfile.org/jquery/1.9.0/jquery.min.js"></script>
<script src="js/jquery.onepage-scroll.js"></script>
<script>
$(function(){
	$('.main').onepage_scroll({
		sectionContainer: '.page',
		direction: 'horizontal'
	});
});
</script>
</head>

<body>
<div class="main">
	<div class="page page1">

<div class="container">
<form class="form-signin" method="post">
        <h2 class="form-signin-heading">Please sign up</h2>
        <label for="inputEmail" >邮箱</label>
        <input id="email" type="email" name="inputEmail" class="form-control" placeholder="请输入有效的邮箱地址" required autofocus><br />
        <label for="inputPassword">密码</label>
        <input type="password" name="inputPassword" class="form-control" placeholder="请输入密码" required><br />
		
          <!-- Text input-->
          <label class="control-label" for="input01">姓名</label>
          <input type="text" name="name" placeholder="请输入你的姓名" class="form-control" required><br />

          <!-- Select Basic -->
          <label class="control-label">性别</label>
          <div class="controls">
            <select class="form-control" name="sex">
      <option>男性</option>
      <option>女性</option></select>
          </div><br />

          <label class="control-label" for="hometown">故乡</label> 
      <!-- <input list="hometownlist" type="text" name="hometown">
      <datalist id="hometownlist">
        <option>Bavette</option>
        <option>Cannelloni</option>
      </datalist> -->
      <div class="controls">
      <select id="province1" class="form-control" name="province" style="float:left; width: 40%"></select>
      <select id="city1" class="form-control" name="city" style="float:right; width: 40%"></select>
     <!--  <select id="area1" class="form-control" name="area"></select> -->
    </div>
    <br>
      <script type="text/javascript">
      	addressInit('province1', 'city1',valueProvince,valueCity);
  		var strCookie = decodeURI(document.cookie);
		/* alert(strCookie); */
		var arrCookie = strCookie.split(';');
		var valueProvince = arrCookie[0].split('=')[1];
		var valueCity = arrCookie[1].split('=')[1];
        addressInit('province1', 'city1',valueProvince,valueCity);
      </script>
   

<br>
<br>
  <label class="control-label">头像</label>

<div>
      <div class="fileinput fileinput-new" data-provides="fileinput">
        <div class="fileinput-new thumbnail" style="float: left; width: 150px; height: 150px;">
          <img data-src="holder.js/100%x100%" alt="Generic placeholder thumbnail" src="images/odA9sNLrE86.jpg">
        </div>
        <div class="fileinput-preview fileinput-exists thumbnail" style="float: left; max-width: 150px; max-height: 150px;"></div>
        <div style="float: right;">
          <span class="btn btn-default btn-file"><span class="fileinput-new">上传头像</span>
          <span class="fileinput-exists" >更换</span><input type="file"></span>
          <a href="#" class="btn btn-default fileinput-exists" data-dismiss="fileinput">移除</a>
        </div>
      </div>
    </div>
<br>
      <!--    <a href="signup2.jsp" class="btn btn-lg btn-success btn-block" type="submit">下一步</a>
      -->
      <input type="submit" class="btn btn-lg btn-success btn-block" value="下一步" onclick="$('.main').moveDown();" >
      </form>

  
</div>

	</div>
	<div class="page page2">
		<div class="container">

<form class="form-signin" method="post" >
        <h2 class="form-signin-heading">你的父亲是...</h2>
        <br>
          <!-- Text input-->
          <label class="control-label" for="input01">姓名</label>
          <input type="text" name="fath_name" placeholder="请输入你父亲的姓名" class="form-control" required><br />

          <label class="control-label" for="hometown">故乡</label> 
          <div class="controls" style="float:right;">
            <label class="checkbox inline">
              <input type="checkbox" id="same_checkbox" value="same" onclick="disable_select()"> 与我相同
            </label>
          </div>
          <br>
      <!-- <input list="hometownlist" type="text" id="fath_town">
      <datalist id="hometownlist">
        <option>Bavette</option>
        <option>Cannelloni</option>
      </datalist> -->
      <div class="controls">
        <br>
      <select id="province1" class="form-control" name="province_fath" style="float:left; width: 40%"></select>
      <select id="city1" class="form-control" name="city_fath" style="float:right; width: 40%"></select>
      <!-- <select id="area1" class="form-control"></select> -->
    </div>
   
    <br>
      <script type="text/javascript">
      	addressInit('province1', 'city1');
      	
      </script>
   

<br>
<br>
    <div>
        <a href="signup3.jsp" style="vertical-align:bottom;" onclick="$('.main').moveDown();">跳过</a>
       <!--   <a href="signup3.jsp" class="btn btn-lg btn-success btn-block" type="submit" style="float:right; width:50%;">下一步</a>
      -->
      <input class="btn btn-lg btn-success btn-block" onclick="$('.main').moveDown();"  style="float:right; width:50%;"  value="下一步">
      </div>
      </form>

  
</div>

	</div>
	<div class="page page3">
		<div class="container">
	
<form class="form-signin" method="post">
        <h2 class="form-signin-heading">你的母亲是...</h2>
        <br>


			

          <!-- Text input-->
          <label class="control-label" for="input01">姓名</label>
          <input type="text" name="moth_name" placeholder="请输入你母亲的姓名" class="form-control" required><br />



          <label class="control-label" for="hometown">故乡</label> 
          <div class="controls" style="float:right;">
            <label class="checkbox inline">
              <input type="checkbox" id="same_checkbox" value="same" onclick="disable_select()"> 与我相同
            </label>
          </div>
          <br>
      <!-- <input list="hometownlist" type="text" id="hometown">
      <datalist id="hometownlist">
        <option>Bavette</option>
        <option>Cannelloni</option>
      </datalist> -->
      <div class="controls">
        <br>
      <select id="province1" class="form-control" name="province_moth" style="float:left; width: 40%"></select>
      <select id="city1" class="form-control"  name="city_moth" style="float:right; width: 40%"></select>
<!--       <select id="area1" class="form-control"></select> -->
    </div>
    <br>
      <script type="text/javascript">
      	addressInit('province1', 'city1');
      	
      </script>
   

<br>
<br>
    <div>
        <a href="signup_success.jsp" style="vertical-align:bottom;">跳过</a>
       <!--   <a href="signup_success.jsp" class="btn btn-lg btn-success btn-block" type="submit" style="float:right; width:50%;">下一步</a>
         -->   
        <input type="submit" class="btn btn-lg btn-success btn-block" value="提交注册">
      </div>
      </form>

  
</div>

	</div>
</div>









<a href="http://www.dowebok.com/" style="display: none;">dowebok</a>
<a href="http://www.dowebok.com/118.html" style="display: none;">onepage-scroll – jQuery单页/全屏滚动插件</a>
</body>
</html>
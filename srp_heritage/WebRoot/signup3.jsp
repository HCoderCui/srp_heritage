<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Signup Step3</title>

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
      addressInit('Select1', 'Select2');
    });
    </script>

<!-- <script type="text/javascript">
function removeElement()
{
document.getElementById("area1").style.display="none";
}
</script> -->

<script type="text/javascript">
function disable_select()
{
  if(same_checkbox.checked)
  {
    province1.disabled=true;
    city1.disabled=true;
  }
  else
  {
    province1.disabled=false;
    city1.disabled=false;
  }
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
  </head>

  <body onload="" style="background: url(images/photo-1432691301971-c8b920198bd7.jpeg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;">

        <div class="progress" style="position:fixed; top:0px; width:100%;">
  <div class="progress-bar" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
    80%
  </div>
</div>


    <div class="container">
<%
   String e_mail = (String)session.getAttribute("e_mail");
   System.out.print("得到了第二个email");
   System.out.print(e_mail);
   session.setAttribute("e_mail", e_mail);
 %>
<form class="form-signin" action="<%=request.getContextPath() %>/servlet/insert_mothInfo" method="post">
        <h2 class="form-signin-heading">你的母亲是...</h2>
        <br>




          <!-- Text input-->
          <label class="control-label" for="input01">姓名</label>
          <input hidden="hidden" name="e_mail" value="<%=e_mail%>";/>
          <input type="text" name="moth_name" placeholder="请输入你母亲的姓名" class="form-control"><br />



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
      <select id="province1" class="form-control" name="province" style="float:left; width: 40%"></select>
      <select id="city1" class="form-control"  name="city" style="float:right; width: 40%"></select>
<!--       <select id="area1" class="form-control"></select> -->
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
    <div>
        <a href="signup_success.jsp" style="vertical-align:bottom;">跳过</a>
       <!--   <a href="signup_success.jsp" class="btn btn-lg btn-success btn-block" type="submit" style="float:right; width:50%;">下一步</a>
         -->   
        <input type="submit" class="btn btn-lg btn-success btn-block" value="提交注册">
      </div>
      </form>

  
</div>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

  </body>
</html>


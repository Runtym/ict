<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String ver = "1.0.12";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css?ver=<%=ver%>"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<style>
form>h2{
color:red
}
</style>
</head>
<body>
 <div class="container" style="border:1px solid blue">

      <form class="form-signin">
        <h2 class="form-signin-heading">Please sign in</h2>
        <div>
        	<h2 class="form-signin-heading">Please sign in</h2>
        </div>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
<script>
function checkValue(){
	var idObj = document.querySelector('#id1');
	if(idObj.value.trim().length<3){
		alert('야 아이디 3글자이상이여!');
		idObj.value='';
		idObj.focus();
		return false;
	}
	var pwdObj = document.querySelector('#pwd');
	if(pwdObj.value.trim().length<3){
		alert('야 비밀번호 3글자이상이여!');
		pwdObj.value='';
		pwdObj.focus();
		return false;
	}
	return true;
}
</script>
</body>
</html>
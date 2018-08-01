<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
== 회원 가입 == 
id : 5글자 이상
pwd : 5글자 이상
pwd check : pwd와 동일 해야함.
email : eamil주소
age : 0 130살까지
name : 이름 2글자 이상 10글자이하
etc : 비고 100글자 이하
 -->
<form onsubmit="return checkValue()">
	<table border="1">
		<tr>
			<th colspan="2"> == 회원 가입 ==</th>
		</tr>
		<tr>
			<th><label for="id">아이디 :</label></th>
			<td><input type="text" name="id" id="id" required></td>
		</tr>
		<tr>
			<th><label for="pwd">비밀번호 :</label></th>
			<td><input type="password" name="pwd" id="pwd" required></td>
		</tr>
		<tr>
			<th><label for="pwdCh">비밀번호체크 :</label></th>
			<td><input type="password" name="pwdCh" id="pwdCh" required></td>
		</tr>
		<tr>
			<th><label for="email">이메일주소 :</label></th>
			<td><input type="email" name="email" id="email" required></td>
		</tr>
		<tr>
			<th><label for="age">age :</label></th>
			<td><input type="number" name="age" id="age" required min="0" max="130"></td>
		</tr>
		<tr>
			<th><label for="name">이름 :</label></th>
			<td><input type="text" name="name" id="name" required></td>
		</tr>
		<tr>
			<th><label for="etc">etc :</label></th>
			<td><input type="text" name="etc" id="etc" maxlength="100"></td>
		</tr>
		<tr>
			<td style="text-align:center" colspan="2"><button>회원가입</button></td>
		</tr>
	</table>
</form>
<script>
 
	function checkValue(){
		var idObj = document.querySelector('#id');
		if(idObj.value.trim().length<3){
			alert("아이디는 무조건 3글자 이상이라고!!");
			idObj.value = '';
			idObj.focus();
			return false;
		}
		return true;
	}
</script>
</body>
</html>
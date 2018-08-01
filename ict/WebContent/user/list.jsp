<%@page import="com.ict.test.UserService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UserService us = new UserService();
List<HashMap<String,String>> userList = us.getUserList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<style>
	thead>tr>th{
		text-align:center;
	}
	tbody td{
		text-align:center;
	}
</style>
</head>
<body>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<th>이름</th>
				<th>나이</th>
				<th>아이디</th>
				<th>주소</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<userList.size();i++){
	HashMap<String,String> hm = userList.get(i);
%>
			<tr>
				<td><a href="#"><%=hm.get("name")%></a></td>
				<td><%=hm.get("age")%></td>
				<td><%=hm.get("id")%></td>
				<td><%=hm.get("address")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>
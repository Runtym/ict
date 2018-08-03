<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.test.CarService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css"/>
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css"/>
<style>
	.table th,td{
		text-align:center;
	}
	.table td:hover{
		font-weight: bold;
		color:red;
		background-color:gray;
	}
</style>
</head>
<body>
<div class="container">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>자동차종류</th>
				<th>가격</th>
				<th>회사명</th>
			</tr>
		</thead>
		<tbody>
<%
for(Map<String,String> car : carList){
%>
			<tr>
				<td><%=car.get("name") %></td>
				<td><%=car.get("price") %></td>
				<td><%=car.get("vendor") %></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>
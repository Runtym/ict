<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
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
</style>
</head>
<body>
<div class="container">
	<div>
		<form>
			차이름 : <input type="text" name="carName" id="carName">
			<button type="button" onclick="chColor()">검색</button>
		</form>
		
	</div>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>차이름</th>
				<th>가격</th>
				<th>회사명</th>
			</tr>
		</thead>
		<tbody>
<%
CarService cs = new CarService();
String carName = request.getParameter("carName");
List<Map<String,String>> carList= cs.getCarList(carName);
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
<script>
	function chColor(){
		var s = document.querySelector('#carName');
		
		var tds = document.querySelectorAll("td");
		for(var i=0;i<tds.length;i++){
			var td = tds[i];
			if(td.innerHTML.indexOf(s.value)==-1){
				td.style.color = "white";
			}
		}
	}
</script>
</body>
</html>
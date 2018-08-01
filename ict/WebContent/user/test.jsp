<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>이름</th>
		<th>별명</th>
		<th>나이</th>
	</tr>
<%
String[] strs = {"abc","ddd","123","하하","허허"};
String[] strs1 = {"abc","ddd","123","하하","허허"};
String[] strs2 = {"abc","ddd","123","하하","허허"};
for(int i=0;i<strs.length;i++){	
	out.println("<tr>");
	out.println("<td>" + strs[i] + "</td>");
	out.println("<td>" + strs1[i] + "</td>");
	out.println("<td>" + strs2[i] + "</td>");
	out.println("</tr>");
}
%>
</table>
</body>
</html>
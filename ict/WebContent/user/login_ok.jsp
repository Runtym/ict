<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id1");
String pwd = request.getParameter("pwd");
if(id.equals("허영은")){
	out.println("반장~~ 방가방가!!");
}else{
	out.println(id + ", 안녕~~ ");
	out.println("<br>니가 입력한 비번 : " + pwd);
}
%>
</body>
</html>
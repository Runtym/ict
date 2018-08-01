<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] names = request.getParameterValues("name");
String[] nickNames = request.getParameterValues("nickName");
String[] ages = request.getParameterValues("age");

for(int i=0;i<names.length;i++){
%>
	<%=i+1%>.<%=names[i]%>,<%=nickNames[i]%>,<%=ages[i] %><br>
<%
}
%>
</body>
</html>
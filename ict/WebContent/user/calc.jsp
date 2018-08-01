<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
public int test(int a, int b) {
	return a+b;
}
%>
<%
int a = 3;
int b = 9;
int result = test(3,9);
%>
<%=a%> + <%=b%> = <%=result%><br>
</body>
</html>
<%@page import="com.ict.test.DepartService"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
DepartService ds = DepartService.getDepartService();
String searchStr = request.getParameter("searchStr");
String[] types = request.getParameterValues("type"); 
List<HashMap<String,String>> departList = ds.getDepartList(types,searchStr);
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
	<div style="height:2px"></div>
	<div style="text-align:right">
		<form action="" method="get">
			<input type="checkbox" name="type" value="deCode" id="dc"><label for="dc">부서코드</label>
			<input type="checkbox" name="type" value="deName" id="dn"><label for="dn">부서이름</label>
			<input type="checkbox" name="type" value="deCnt" id="dcn"><label for="dcn">부서인원</label> 
			: <input type="text" name="searchStr"
			value="<%=searchStr!=null?searchStr:"" %>"
			>
			<button>검색</button>
		</form>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>부서명</th>
				<th>부서코드</th>
				<th>부서인원</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<departList.size();i++){
	HashMap<String,String> hm = departList.get(i);
%>
			<tr>
				<td><a href="#"><%=hm.get("deName")%></a></td>
				<td><%=hm.get("deCode")%></td>
				<td><%=hm.get("deCnt")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>
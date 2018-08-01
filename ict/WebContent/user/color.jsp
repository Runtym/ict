<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="color" id="cl" onchange="checkColor(this)">
<span id="rDiv">
내 색상은 유동적이지!
</span>
<button onclick="chColor()">색상랜덤</button>
<script>
	function checkColor(clObj){
		var rDivObj = document.querySelector('#rDiv');
		rDivObj.style.border = '1px solid' + clObj.value;
		rDivObj.style.backgroundColor = clObj.value;
		rDivObj.style.color = clObj.value;
	}
	function chColor(){
		var rDivObj = document.querySelector('#rDiv');
		var rRan = Math.floor(Math.random()*255) + 1;
		var gRan = Math.floor(Math.random()*255) + 1;
		var bRan = Math.floor(Math.random()*255) + 1;
		rDivObj.style.color = 'rgb(' + rRan + ',' + gRan + ',' + bRan + ')';
	}
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>설정된 모든 쿠키를 얻어와 출력하기</title>
	</head>
	
	<body>
		<h3> 클라이언트로부터 얻어온 Cookie </h3>
		<%
		Cookie[] cookies =request.getCookies();
		for (Cookie c : cookies) {
		out.println(c.getName()+" : " + c.getValue()+"<br>");
		}
		%>
	</body>
</html>
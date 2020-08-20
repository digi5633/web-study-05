<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>인증된 사용자의 인증을 무효화하는 JSP 페이지</title>
	</head>
	
	<body>
		<%
		session.invalidate();
		%>
		<script>
			alert("로그 아웃 되었습니다.");
			location.herf="10_loginForm.jsp";
		</script>
	</body>
</html>
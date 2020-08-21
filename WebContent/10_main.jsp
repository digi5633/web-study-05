<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 인증 받은 회원에게 제공되는 JSP</title>
	</head>
	
	<body>
		${id} 님 어서오세요.
		<form action="10_logout.jsp" method="post">
			<input type="submit" value="로그아웃">
		</form>
		<%
		if (session.getAttribute("loginUser") == null) {
			response.sendRedirect("10_loginForm.jsp");
		} else {
		%>
			<%=session.getAttribute("loginUser")%>님 안녕하세요! <br>
			저희 홈페이지에 방문해 주셔서 감사합니다. <br>
			즐거운 시간 되세요... <br>
			<form action="10_logout.jsp" method="post">
				<input type="submit" value="로그아웃">
			</form>
		<%
		}
		%>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
	
		if (mid.equals("tiger")&&mpw.equals("12345")){
			Cookie cookie1 = new Cookie("cookieid", mid);						
			Cookie cookie2 = new Cookie("cookiepw", mpw);						
			
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			
			response.sendRedirect("loginSuccess.jsp");
			
		} else {
			response.sendRedirect("loginFail");
		}
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
//		쿠키 가져오기 ( cllient -> server )
		Cookie[] cookies = request.getCookies();
	
//		for(int i=0;i<cookies.length;i++) {
//			out.println("쿠키 이름 : "+cookies[i].getName()+"<br>");
//			out.println("쿠키 값  : "+cookies[i].getValue()+"<br>");
//		}
	
		String loginOkid = "";
		
		if(cookies != null) {
			for(int i=0;i<cookies.length;i++) {
				if(cookies[i].getName().equals("cookieid")) {
					loginOkid = cookies[i].getValue();
				}
			}
		}


	%>
	<h1><%= loginOkid %></h1>님 로그인을 환영합니다.
	<a href="logout.jsp">로그아웃</a>
</body>
</html>
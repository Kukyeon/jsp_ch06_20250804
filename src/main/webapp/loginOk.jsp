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
		request.setCharacterEncoding("utf-8");
		
		
		String mid = request.getParameter("loginid");
		String mpw = request.getParameter("loginpw");
		
		if(mid.equals("tiger") && mpw.equals("12345")){ // 참이면 로그인성공
			session.setAttribute("memberId", mid); // (세션이름(작명) , 세션의 저장할 로그인한 유저의 아이디값 )
		}
	
	
	%>


</body>
</html>
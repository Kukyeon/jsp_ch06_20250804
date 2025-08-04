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
			session.setAttribute("sessionFlag", "yes"); // 로그인 상태인지 아닌지 값만 보겠다.
			session.setAttribute("memberId", mid); // (세션이름(작명) , 세션의 저장할 로그인한 유저의 아이디값 )
			long current_loginTime = System.currentTimeMillis(); //현재 시간
			session.setAttribute("loginTime", current_loginTime); //로그인한 시간을 세션에 저장
			response.sendRedirect("loginSuccess.jsp"); //로그인 성공시 성공페이지로 강제이동
			
		} else {
			System.out.println("로그인에 실패!");
			response.sendRedirect("login.jsp"); // 로그인 실패시 로그인페이지로 강제이동
		}
	
	
	%>


</body>
</html>
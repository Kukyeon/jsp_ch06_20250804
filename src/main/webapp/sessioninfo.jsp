<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션의 모든 정보</title>
</head>
<body>
	<h2>모든 세션 정보 확인 하기</h2>
	<hr>
	<%
		Enumeration sessionEnum = session.getAttributeNames(); // 열거형으로 변환
		
		while(sessionEnum.hasMoreElements()){
			String sName = sessionEnum.nextElement().toString();
			String sValue = session.getAttribute(sName).toString();
			
			out.println(sName + " : " + sValue + " <br>");
		}
	
		String session_id = session.getId();
		// 접속한 브라우저 별 매칭되는 유니크한 id값
		out.println("session 의 고유 아이디 : " + session_id);
	
	%>
	<hr>
	<a href="loginuser.jsp">로그인유저페이지다시가기</a>
</body>
</html>
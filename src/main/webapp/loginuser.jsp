<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인한 유저 페이지</title>
</head>
<body>
	<%
		String sid = (String) session.getAttribute("memberId");
		// 세션에서 로그인이 된 유저만 갖고있는 멤버id값 가져오기 	
	
		if(sid != null){ //true 일시 로그인한 상태 , false 일시 로그인이 안된상태
			out.println("이 글은 로그인 상태에서만 보입니다");
		}else {
			out.println("이 글은 로그인안된 상태에서만 보입니다");
		}
		
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Welcome to myHomePage</h1>
	
	<%
		//login.jsp페이지에서 넘겨받은 session내장 객체 메모리 영역에  저장되어 있는
		//세션 아이디 값을 꺼내어서 변수에 저장 
		String new_id = (String) session.getAttribute("id");
		
		if("master".equals(new_id)){
	%>
				<%=new_id%>님 로그인 중....<br>
				<a href="logout.jsp">로그아웃</a>
				<a href="shop.jsp">쇼핑몰 서브화면으로 이동</a>
	<% 
		}else{
	%>
			<a href="login.jsp">로그인</a>
			<a href="shop.jsp">쇼핑몰 서브화면으로 이동</a>
	<%	
		}
	%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과 출력</h1>
	<%
 		/*한글처리*/
 		//request 객체 메모리에 저장된 요청 데이터 중 한글이 하나라도 존재하면 데이터를 꺼내오는 과정에서 
 		//한글이 깨지므로 한글 깨짐을 방지 하기 위해 인코딩 방식(문자셋 방식)을 UTF-8로 설정함.
 		request.setCharacterEncoding("UTF-8");
 	
 	
 		/*login.html에서 입력하여 요청한 값 얻기*/
 		String user_id = request.getParameter("user_id");
 		String user_pw = request.getParameter("user_pw");
 	
 		
 		
 	%>
 	<h1>입력한 아이디 확인: <%=user_id%></h1>
 	 <h1>입력한 비밀번호 확인 : <%=user_pw%></h1>
 	
</body>
</html>
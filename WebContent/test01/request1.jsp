<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 	request.setAttribute("name", "이순신");	
	request.setAttribute("address", "서울시 강남구");

 	//디스패치 방식으로 request2.jsp로 포워딩 
  	RequestDispatcher dispatch = request.getRequestDispatcher("request2.jsp");
 	//request객체를 다른 JSP페이지로 실제 포워딩 
 	dispatch.forward(request,response);
 %>     
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
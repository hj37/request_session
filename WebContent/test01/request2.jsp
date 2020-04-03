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
 	//첫번째 JSP페이지에서 포워딩된 request객체에서 getAttribute()메소드를 이용해 정보를 가져옴
 	String name = (String)request.getAttribute("name");
 	String address = (String)request.getAttribute("address");
 %>   
 <%=name%>, <%=address%>
 
</body>
</html>
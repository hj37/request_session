<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"%> <%--다른 JSP페이지에서 예외 발생 시 
    							예외를 처리하는 예외 처리 페이지로 지정하겠다.
    							 --%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	========Exception객체의 toString()메소드 호출 내용 ====== <br>
	
	<h1><%=exception.toString() %></h1>
	
	=======exception객체의 getMessage()메소드 호출 내용 ==== <br>
	
	<h1><%=exception.getMessage() %></h1>
	
	======exception객체의 printStackTrace() 메소드 호출 내용 === <br>
	
	<%--이클립스의 console탭에 예외 메시지를 출력함 --%>
	<h1> <% exception.printStackTrace(); %></h1>
	
	<h2>숫자만 입력 가능합니다. 다시 시도 하세요.</h2>
	<a href="add.html">다시시도</a>
	
</body>
</html>
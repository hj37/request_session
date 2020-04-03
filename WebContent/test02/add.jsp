<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addException.jsp"%> <%--예외 발생시 예외를 처리할 JSP페이지를 지정함 --%>
   
   
   <!--  
 페이지 지시자 태그의 errorPage속성에 예외처리 담당하는 addException.jsp를 지정하여  
 현재 add.jsp페이지에서 오류가 발생하면 addException.jsp에서 예외처리 하게끔 함.      -->
    
<%
	//add.html에서 입력한 수를 request에서 꺼내와서 정수로 변환해서 반환 후 num변수에 저장 
	int num = Integer.parseInt( request.getParameter("num"));

	int sum = 0;
	
	for(int i=1; i<=num; i++){
		sum = sum + i;
	}
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>합계 구하기</h2>
		<h1>1부터 <%=num%>까지의 합은 <%=sum%>입니다.</h1>
</body>
</html>
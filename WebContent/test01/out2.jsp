<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request내장객체 메모리 영역에 저장된 데이터 한글처리 
	request.setCharacterEncoding("UTF-8");
	//요청값 얻기 
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	
	if(name != null || name.length() != 0){//이름을 입력 했다면 
%>		
		<h1><%=name%>,<%=age%></h1>
<% 		
	}else{//이름을 입력하지 않았다면
%>
		<h1>이름을 입력하세요 </h1>
<% 
	}

%>  
  
 <hr/>


<%
	if(name != null || name.length() != 0){
		
		%><h1><%out.println(name + "," + age);%> <h1>
<%		
	}else{
		out.println("<h1>이름을 입력하세요.</h1>");
	}

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
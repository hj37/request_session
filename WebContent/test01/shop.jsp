<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
 <%
	String new_id = (String) session.getAttribute("id");
 	
 	
 	if("master".equals(new_id)){
 	%>
		<%=new_id%>님 로그인 중....<br>
		<a href="logout.jsp">로그아웃</a>
		<a href="index.jsp">메인페이지로 이동</a>
	<% 
 	}else if(new_id == null || "".equals(new_id)){
 %>	
	
 		<script> 
 		alert("로그인하고 오세요");
 		//자바스크립트의 포워딩 기술?
 		location.href="login.jsp";
 		</script>		
<% 		
 	}
 		
 	
 
 %>
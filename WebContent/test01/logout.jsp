<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	//session내장객체 메모리 영역에 존재하는 모든 값들을 제거 
	session.invalidate();	

	//메인페이지만? index.jsp로 재요청(포워딩)
// 	response.sendRedirect("index.jsp");

%>

<script> 
	alert("로그아웃");
	//자바스크립트의 포워딩 기술?
	location.href="index.jsp";

</script>
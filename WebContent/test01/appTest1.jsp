<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session내장객체 메모리 영역과 application내장객체 메모리 영역에 각각 "이순신"과 "부산시 동래구" 
	//값을 바인딩합니다.
	
	session.setAttribute("name","이순신");

	application.setAttribute("address", "부산시 동래구");
%>

	<h1>이름과 주소를 각 내장객체 영역에 저장</h1>
	<a href="appTest2.jsp">두번째 웹페이지 요청!</a>
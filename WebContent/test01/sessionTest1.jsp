<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//SessionTest.java 서블릿으로부터 전달된 Session메모리 영역의 값을 꺼내어서 얻기
	String name = (String) session.getAttribute("name");

	//추가로 session내장객체 메모리영역에 접근하여 address값을 바인딩 함.
	session.setAttribute("address","서울시 강남구");
%>    
    
	이름은<%=name%>입니다. <br>
	<a href="sessionTest2.jsp">세 번째 페이지로 이동</a>
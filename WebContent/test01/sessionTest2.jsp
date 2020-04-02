<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//sessionTest1.jsp에서 전달된 session내장객체 메모리 영역에 접근하여
	//저장된 데이터 꺼내오기
	String name= (String)session.getAttribute("name");
	String address = (String)session.getAttribute("address");
%>

	이름은 <%=name %>입니다.
	주소는  <%=address%>입니다.
	
	<!-- session내장객체 메모리는? 클라이언트가 웹브라우저로 서버페이지 요청시 request객체에
	의해 자동 생성되며 하나의 웹브라우저가 닫기기 전까지는 계속 유지되는 저장소 메모리 객체영역이다.
	 -->
	
 <!-- session.removeAttribute("name");	//세션영역에 저장된 특정 값 제거 
 session.invalidate(); //세션영역에 저장된 모든 값 초기화 -->
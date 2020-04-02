<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
 <%-- 선언문을 이용해 멤버변수 name과 멤버 메소드 getName()을 선언합니다. --%>   
 <%!
 
 	String name="듀크";	//변수 
 	public String getName(){//메소드 선언 
 		return name;
 	}
 
 %>
 	<%--표현식을 이용해 선언문 태그영역 내부에서 선언한 name변수의 값을 출력함.--%>
	<h1>안녕하세요 <%= name %>님!!</h1>
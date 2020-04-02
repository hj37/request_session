<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

	//1. 한글처리 
	request.setCharacterEncoding("UTF-8");

	//2. 요청값 전달 받기(입력한 시험점수)
	String newscore = request.getParameter("score");
	//요청받은 입력한 점수! 문자열을? -> 정수로 변환
	int score = Integer.parseInt(newscore);
%>

<h1>
	시험점수
	<%=score %>점
</h1>

<%
	//90점이상이면?
	if(score >= 90){
%>
		<h1>A학점입니다.</h1>

<%		
	//80~90점 사이이면? 
	}else if(score >= 80 && score < 90){
%>	
		<h1>B학점입니다.</h1>

<%
	//70~80점 사이이면? 
	
	}else if(score >= 70 && score < 80){
%>		
		<h1>C학점입니다.</h1>
<% 
	//60~70점 사이이면?
	}else if(score >= 60 && score < 70){
%>		
		<h1>D학점입니다.</h1>

<%		
	//그외 점수를 입력했다면?
	}else{
%>		<h1>F학점입니다.</h1>

<% 		
	}
			
%>

<br>
<%--시험점수를 다시 입력 할  수 있도록 <a>태그를 이용하여 scoreTest.html로 이동하는 링크 작성--%>

	<a href="/pro11/scoreTest.html">시험점수 다시 입력하기</a>

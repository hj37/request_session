<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- JSP코드에 대한 설명글을 적어 놓을 수 있는 주석태그영역 --%>    
    
    
<%--

	웹브라우저 주소창에 주소를 입력해서 hello4.jsp서버페이지를 요청할 것이다.
	
	요청주소 : http://localhost:8070/pro11/hello4.jsp?age=22
	
	웹브라우저에서 hello4.jsp로 전송된 값을 얻기 위해 <% %>안에 자바코드를 사용하여 age값을 가져옴 

 --%>   
 
 <%!
 	String name="이순신";
 
 	public String getName(){
 		return name;
 	}
 %>

<%
	//스크립틀릿 <% % >태그를 이용해 자바코드를 작성한다.
	// -> http://localhost:8070/pro11/hello4.jsp?age=22 hello4.jsp를 요청했을때..
	//request객체 메모리에 저장되어 있는 age값 얻기 
	String age=	request.getParameter("age");
	
%>    

<%--표현식을 이용해 전송된 나이를 출력함.(클라이언트의 웹브라우저로 응답함!) --%>
<h1>안녕하세요 <%=getName()%>님!!</h1>
<h1>나이는 <%=age%>살입니다!!</h1>

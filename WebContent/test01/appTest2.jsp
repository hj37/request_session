<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    
    	//첫번째 appTest1.jsp페이지에서 session과 application내장객체영역에 바인딩한 값을
    	//꺼내어 가져옵니다.
    	
    	String name= (String)session.getAttribute("name");
    
    	String address = (String)application.getAttribute("address");
    
    %>
    
    <h1>이름은 <%=name %>입니다.</h1>
    <h1>주소는 <%=address %>입니다.</h1>
    
    <%--
    	테스트 순서 
    	1. http://localhost:8070/pro11/test01/appTest2.jsp로 요청합니다.
    		첫 번째 appTest1.jsp에서 name과 address를 session영역과 application영역에 바인딩함.
    	2. appTest1.jsp에서 <a href="appTest2.jsp">두번째 웹페이지 요청!</a> 클릭했을때
    		같은 웹브라우저에서 appTest2.jsp 요청시 .. session 내장객체 영역의 데이터와
    		application 내장객체 영역의 데이터를 꺼내와 사용할 수 있음
    	3. 하지만 크롬 웹브라우저가 아닌 다른 인터넷익스플로러 웹브라우저로 appTest2.jsp를 요청하면 
    		session내장객체 영역의 데이터는 꺼내오지 못하고 
    		application내장객체 영역의 데이터는 꺼내오는 것이 가능하다.
    		이유는 application 내장객체 메모리 영역은 소멸시점이.. 하나의 웹애플리케이션이 중지 될때까지 
    		계속 유지되는 메모리 공간이기 때문이다. (즉! 톰캣을 중지시키면 application 내장객체 메모리는 소멸됨) 
    
    
    --%>
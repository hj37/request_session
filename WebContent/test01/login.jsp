<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 	<%--
 		login.jsp페이지에서 사용자가 로그인 요청하기 위해 아이디와
 		비밀번호를 입력하고 로그인버튼을 눌러! 서버페이지인? 
 		login.jsp로 입력한 아이디와 비밀번호를 전송함.
 		
 		
 	 --%>

	<%--현재 페이지 login.jsp에 다시 로그인 요청 --%>	
	<form action="login.jsp" method="post">
		아이디 : <input type="text" name="id"/> <br/>
		비밀번호 : <input type="text" name="pw"/> <br/>
		<input type="submit" value="로그인(전송버튼)"/>	 &nbsp;&nbsp;
		<input type="reset" value="다시입력"/> 
	</form>
	
	<%
		//<form>태그에서 요청한 요청방식을 얻습니다.
// 		String method = request.getMethod();

		//POST전송 방식으로 요청이 들어왔을때...
		if(request.getMethod().equals("POST")){
			//로그인 요청시 입력한 아이디와 비밀번호를 request내장객체 메모리에서 꺼내오기
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			//DB에 저장되어있는 id값 "master"와...
			//login.jsp페이지의 <form>태그에서 입력한 id가 동일하면 
			if("master".equals(id)){
			
				//DB에 저장되어 있는 비밀번호값 "1111"와....
				//login.jsp페이지의 <form>태그내부에서 입력한 비밀번호가 동일하면 
				if("1111".equals(pw)){
					
					//session내장객체 메모리 영역에 접근하여 세션값을 저장 
					session.setAttribute("id",id);
					//메인 페이지인? index.jsp를 리다이렉트 방식으로 재요청(포워딩)에 이동함.
					//재요청하여 index.jsp로 이동시 ...session내장객체 메모리 영역은 하나의 웹브라워가
					//닫기기 전까지는 계속 유지되는 영역이다.
					response.sendRedirect("index.jsp");
				}else{//DB 비밀번호와 입력한 비밀번호가 틀릴때 
	%>
				<script type="text/javascript">
					window.alert("비밀번호를 잘못입력 했어요!");
				</script>
	<% 
				}
			//DB에 저장되어 있는 id값 "master"와
			//login.jsp페이지의 <form>로그인 요청시 넘겨받은 id값이 틀릴때...
			}else{
				if("1111".equals(pw)){
	%>
					<script type="text/javascript">
						alert("아이디가 틀립니다.");
					</script>
	<% 
				}else{
	%>
					<script type="text/javascript">
					alert("아이디,비밀번호가 틀립니다.");
					</script>
	<% 
				}
			}
		}
	%>


</body>
</html>
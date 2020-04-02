<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>결과 출력</h1>
	<%
		/*한글처리*/
		//request 객체 메모리에 저장된 요청 데이터 중 한글이 하나라도 존재하면 데이터를 꺼내오는 과정에서 
		//한글이 깨지므로 한글 깨짐을 방지 하기 위해 인코딩 방식(문자셋 방식)을 UTF-8로 설정함.
		request.setCharacterEncoding("UTF-8");

		/*login.html에서 입력하여 요청한 값 얻기*/
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");

		//한걸음 더 나아가 스크립틀릿 기호 안에 자바코드를 사용해 ID가 정상적으로 입력되었는지 체크 한후
		//정상 입력 여부에 따라 동적으로 다른 결과를 출력하도록 구현하자.

		//ID를 입력하지 않았다면~~~
		if (user_id == null || user_id.length() == 0) {
	%>

	아이디를 입력하세요
	<br>
	<a href="/pro11/login3.html">로그인하기</a>

	<%
		//ID를 정상적으로 입력 했다면~
		} else {
			//입력한 ID가 admin이면 (관리자 아이디로 입력했다면)	
			if(user_id.equals("admin")){
				//관리자 화면이 나와야함.
	%>
	<h1>관리자로 로그인했습니다.</h1>
	<form>
		<input type="button" value="회원정보 삭제하기"> <input type="button"
			value="회원정보 수정하기 ">
	</form>
	<% 
			}else{
	%>
	<h1>
		환영합니다.
		<%=user_id%>
		님!! 로그인 중..
	</h1>
	<%
			}//안쪽 else
		}//바깥 else
	%>




</body>
</html>
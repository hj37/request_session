<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 
 	//1. 한글 인코딩 방식 설정 UTF-8
 	request.setCharacterEncoding("UTF-8");
 
 	//2. 요청값 전달 받기(입력한 단수)
 	int dan = Integer.parseInt(request.getParameter("dan"));
 
 %>   
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<table border="1" width="800">
					<tr align="center"  bgcolor="lightgreen">
						<td colspan="2"><%=dan%>단 출력</td>			
					</tr>
					
		<%
			for(int i = 1; i < 10; i++){
		%>
				
					<tr align="center">
						<td width="400"><%=dan%> X <%=i%></td>	
						<td width="400"><%=dan*i%> </td>			
					</tr>
		<%
			}
					
		%>			
		
		
		</table>	
</body>
</html>



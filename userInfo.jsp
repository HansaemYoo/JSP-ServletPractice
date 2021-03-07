<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<% //변수선언
		String name;
		String PW;
		String[] hobby;
		%>
		
		<% //request객체: 사용자의 요청에 관련된 정보를 얻기 위해 사용하는 객체
		name = request.getParameter("name");
		PW = request.getParameter("PW");
		hobby = request.getParameterValues("hobby");
		%>
		
		이름: <%=name %><br>
		비밀번호: <%=PW %><br>
		취미:
		<%
		for(int i = 0; i < hobby.length; i++){
			out.println(hobby[i]);
		}
		%> 
	</body>
</html>
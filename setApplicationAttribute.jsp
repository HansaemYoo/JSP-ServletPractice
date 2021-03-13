<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
		<%
	//어플리케이션 기본객체에 설정할 속성값으로 사용할 파라미터 가져오기
	String name = request.getParameter("name"); //속성이름
	String value = request.getParameter("value"); //속성값
	
	//어플리케이션 기본객체에 속성을 설정한다. 파라미터로 전달받은 값을 속성이름과 값으로 사용
	if(name != null && value != null){ 
		application.setAttribute(name, value);
	}
	%>
	
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title> application 속성지정</title>
  </head>
  <body>
	<!--  http://localhost:8090/chap5/setApplicationAttribute.jsp?name="속성이름"&value="속성값" 
	이렇게 URL로 전달받은 파라미터를 어플리케이션 기본객체의 속성으로 설정한다.-->
	<%
	if(name != null && value != null){
		out.print("application기본객체 속성설정: " + name + "=" + value);
	} else{
		out.print("application기본객체 속성설정안함");
	}
	%>
  </body>
</html>
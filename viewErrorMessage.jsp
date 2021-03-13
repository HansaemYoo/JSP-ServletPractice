<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- 현재 jsp를 error페이지로 지정 -->
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>에러발생</title>
  </head>
  <body>
	요청 처리 과정에서 에러가 발생하였습니다.<br>
	빠른 시간 내에 문제를 해결하도록 하겠습니다.
	<p>
	<!-- exception 기본 객체의 클래스 이름 출력 -->
	에러타입: <%=exception.getClass().getName() %> <br>
	<!-- 익셉션 메시지 출력 -->
	에러 메시지: <b><%= exception.getMessage() %></b> 
	</p>
  </body>
</html>
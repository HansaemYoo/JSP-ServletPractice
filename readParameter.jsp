<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!-- 에러가 발생하면 errorPage속성에 지정한 jsp를 실행 -->
	<%@page errorPage="viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>파라미터 출력</title>
  </head>
  <body>
  <!-- name파라미터가 없기때문에 오류가 발생 -->
	name 파라미터를 대문자로 변환하여 출력: <%= request.getParameter("name").toUpperCase() %>
  </body>
</html>
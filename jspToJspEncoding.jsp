<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>form-upload</title>
  </head>
  <body>
	<!-- jsp -> jsp로 보내기 -->
	<form action="signUp.jsp" method="post">
			이름: <input type="text" name="name"> <br>
			주소: <input type="text" name="address"> <br>
			<input type="submit" value="sign up">
			</form>
  </body>
</html>
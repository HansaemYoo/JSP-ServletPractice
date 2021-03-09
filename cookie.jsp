<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>로그인페이지</title>
  </head>
  <body>
  
  	<% //로그인전에 쿠키가 있는지 확인
  	Cookie[] cookies = request.getCookies(); 
  	System.out.println("cookies: " + cookies);
  	
  	if(cookies != null) { //쿠키가 있다면
  		for(Cookie c : cookies){ //한번씩 조회해보고 
  			if(c.getName().equals("ID")){ //ID라는 쿠키가 있다면 바로 loginOK.jsp로 이동
  				response.sendRedirect("loginOK.jsp");
  			}
  		}
  	}
  	%>
  	
	<form action="LC" method="post">
		ID <input type="text" name="ID"><br>
		PW <input type="password" name="PW"><br>
		<input type="submit" value="login">
		
	</form>
  </body>
</html>
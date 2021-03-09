<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
		<%
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			out.print("name: " +  c.getName() + "<br>");
			out.print("value: " +  c.getValue() + "<br>");
		}
		%>
  </body>
</html>
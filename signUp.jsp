<%request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>(post방식) jsp에서 jsp로 인코딩</title>
  </head>
  <body>
  
		<%
		String name;
		String address;
		%>
		
		<%
		name = request.getParameter("name");
		address = request.getParameter("address");
		%>
		
		이름: <%=name %><br>
		주소: <%=address %>
		
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="java.util.Map"%>
<%
//요청 파라미터의 캐릭터 인코딩을 utf-8로 지정
request.setCharacterEncoding("utf-8"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<!-- requset.getParameter()를 사용하여 name과 address파라미터 값 출력 -->
	<b>requset.getParameter() 메소드 사용</b><br>
	name 파라미터 <%=request.getParameter("name")%><br> 
	address 파라미터 <%=request.getParameter("address")%>

	<p>
		<!-- request.getParameterValues()를 사용하여 이름이 pet인 파라미터의
		값 목록을 배열로 (String[])리턴한다. -->
		<b>request.getParameterValues()메소드 사용</b><br>
		<%
		String[] values = request.getParameterValues("pet");
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
		%>
		<%=values[i]%>
		<%
			}
		}
		%>
	</p>

	<p>
		<!-- request.getParameterNames() 메소드를 사용하여 이름 출력 -->
		<b>request.getParameterNames() 메소드 사용</b>
		<%
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
		%>
		<%=name %>
		<%
		}
		%>
	</p>
	
	<p>
		<!-- 자바의 Map을 사용하여 파라미터 이름과 값리턴 -->
		<b>request.get.ParameterMap() 메소드 사용</b>
		<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name");
		if(nameParam != null){
		%>
		name = <%=nameParam[0] %>
		<%
		}
		%>
	</p>
</body>
</html>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %> <!-- trimDirectiveWhitespaces속성을 사용함으로써 불필요하게 생성되는줄바꿈 공백 문자를 제거 --%>
<%@ page import = "java.util.Calendar" %> <!-- java.util.Calendar 클래스 임포트 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 날짜와 시간 나타내기</title>
</head>
<body>
	<%
	Calendar cal = Calendar.getInstance(); //현재 날짜와 시간 정보를 가지고 있는 Calendar 클래스의 인스턴스 생성
	%>
	오늘은
	<%= cal.get(Calendar.YEAR) %>년
	<%= cal.get(Calendar.MONTH) %>월
	<%= cal.get(Calendar.DATE) %>일
	입니다.
	<%-- java.util.Date는 현재 시간을 나태낸다. --%>
	<br>현재시간은 <%=new java.util.Date() %> 입니다.
</body>
</html>
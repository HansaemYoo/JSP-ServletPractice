<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
	<%!
	public int add(int a, int b){ //두 정수의 합을 구하는 메소드
		int c = a + b;
		return c;
	}
	
	public int subtract(int a, int b){ //두 정수의 차를 구하는 메소드
		int c = a - b;
		return c;
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//계산할때 값으로 사용할 두 개의 변수 value와 value2 지정
	int value = 3;
	int value2 = 9;
	
	int addResult = add(value, value2); //선언부에서 작성한 add메소드 호출후, 그 결과 값을 addResult변수에 저장
	int subtractResult = subtract(value, value2);
	%>
	
	<!-- 값 출력 -->
	<%=value %> + <%=value2 %> = <%=addResult %>
	<br>
	<%=value %> - <%=value2 %> = <%=subtractResult %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1~10/11~20까지의 합 구하기</title>
</head>
<body>
	<%
	int sum = 0; //1~10까지의 합을 저장할 변수 sum초기화
	for(int i = 1; i<=10; i++){ //반복문을 이용한 1~10까지의 합 구하기
		sum += i;
	}
	%>
	1부터 10까지의 합은 <%= sum %> 입니다. <!-- 표현식을 이용한 값 출력 -->
	<!-- 직접 1부터 10까지의 합을 계산해서 값을 생성할 수도 있다. -->
	<br>1부터 10까지의 합은 <%= 1+2+3+4+5+6+7+8+9+10 %> 입니다.
	
	<!-- 스크립트릿은 여러개도 사용해서 구현할 수 있다. -->
	<%
	sum = 0;
	for(int i = 11; i <= 20; i++){
		sum += i;
	}
	%>
	<br>11부터 20까지의 합은 <%= sum %> 입니다.
</body>
</html>
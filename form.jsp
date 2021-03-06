<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 생성</title>
</head>
<body>
<!-- actiom속성: 입력한 데이터를 전달할 경로로 /WebContent/viewParameter.jsp로 정한다. -->
<form action="\WebContent\viewParameter.jsp" method="post">
이름: <input type="text" name="name" size="20"> <br>
주소: <input type="text" name="address" size="20"> <br>
좋아하는 동물:
	<input type="checkbox" name="pet" value="dog"> 강아지
	<input type="checkbox" name="pet" value="cat"> 고양이
	<input type="checkbox" name="pet" value="pig"> 돼지 
	<br>
	<input type="submit" value="전송">
</form>
</body>
</html>
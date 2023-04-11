<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>join page</title>
</head>
<body>
	<div>
		<form method="post" action="join_action.jsp">
			<h3 style="text-aligin: center">회원가입 화면</h3>		
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
			<input type="password" class="form-control" placeholder="비밀번호" name="userPass" maxlength="20">
			<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
			<input type="text" class="form-control" placeholder="이메일" name="userEmail" maxlength="50">
			<input type="submit" class="btn btn-primary" value="회원가입">
		</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>login page</title>
</head>
<body>
	<div>
		<form method="post" action="login_action.jsp">
			<h3 style="text-aligin: center">로그인화면</h3>
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
			<input type="password" class="form-control" placeholder="비밀번호" name="userPass" maxlength="20">
			<input type="submit" class="btn btn-primary" value="로그인">
		</form>
	</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="file.FileDAO" %>
<%@ page import="java.io.File" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String filename="";
	String directory = application.getRealPath("/upload/");
	//String realFolder="C:\\upload";	//웹애플리케이션상의 절대 경로
	int maxSize = 5* 1024* 1024;	//최대 업로드 파일의 크기 5MG
	String encType = "UTF-8";	//인코딩 유형
	
	MultipartRequest multi = new MultipartRequest(request, directory,
			maxSize, encType, new DefaultFileRenamePolicy());

	String fileName = multi.getOriginalFileName("file");
	String fileRealName = multi.getFilesystemName("file");
	
	new FileDAO().upload(fileName, fileRealName);
	out.write("파일명:"+fileName +"<br>");
	out.write("실제 파일명:"+fileRealName +"<br>");
	%>
</body>
</html>
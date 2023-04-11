<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 다운로드</title>
</head>
<body>
	<%
		String directory = application.getRealPath("/upload/");
	String files[] = new File(directory).list();
	
	for(String file: files){
		out.write("<a href=\""+request.getContextPath()+"/downloadAction?file="+
			URLEncoder.encode(file,"UTF-8")+"\">"+file+"</a><br>");
	}
	%>
</body>
</html>
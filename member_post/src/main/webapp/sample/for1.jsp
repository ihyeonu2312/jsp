<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>for1.jsp</h1>
	<%
		//	request.getRequestDispatcher("for2.jsp").forward(request, response);
		response.sendRedirect("for2.jsp?num=" + request.getParameter("num")); // 리디렉트는 num값을 알 수 없음
	%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="str" value="abcd" scope="request"/> <!-- var 변수명 -->
	<h3>${pageScope.str}</h3>
	<c:if test="${requestScope.str}">
		<h3>페이지 스코프에 str이 없습니다</h3>
	</c:if>
	<c:if test="${not empty requestScope.str}">
		<h3>페이지 스코프에 str이 있습니다</h3>
	</c:if>
</body>
</html>
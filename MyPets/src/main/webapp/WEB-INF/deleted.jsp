<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"/>
<link rel="stylesheet" href="css/main.css"/>
<title>Deleted</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<br>
<br>
<h1>Your pet ${pet.name} was successfully deleted</h1>
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
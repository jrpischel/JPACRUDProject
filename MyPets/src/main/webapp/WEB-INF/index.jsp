<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"/>
<link rel="stylesheet" href="css/main.css"/>
<title>Home Page</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

	<h1>My Pets</h1>
	<form action="goHome.do" method="GET">
		Pet ID: <input type="text" name="petId" /> <input type="submit"
			value="Find Pet" />
	</form>
	
	<a class="btn btn-dark" href="createPet.html" role="button">Add A New Pet</a>
	
	
<c:forEach var="p" items="${pets}"/>


	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach var="p" items="${pets}">
				<tr>
					<td>${p.id}</td>
					<td><a href="goHome.do?petId=${p.id}">${p.name}</a></td>
				</tr>
			</c:forEach>

		</tbody>
	</table> 
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
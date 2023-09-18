<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"/>
<link rel="stylesheet" href="css/main.css"/>
<title>Pet Info Page</title>
</head>
<body>

<jsp:include page="navbar.jsp"/>

	<h1>Welcome to my pet manager</h1>


	<div class="card">
		<div class="card-header">
			<h1>${pet.name}</h1>
		</div>
		<div class="card-body">
			<div class="col" align="left">
				<h3 class="card-title">Owned By: ${pet.owner}</h3>
				<p class="card-text">
				<ul>
					<li>Species: ${pet.species}</li>
					<li>Age: ${pet.age} years</li>
					<li>Favorite Food: ${pet.favoriteFood}</li>
					<li>Favorite Toy: ${pet.favoriteToy}</li>
				</ul>
				<a href="index" class="btn btn-primary">Go Home</a>
			</div>
			<div class="col" align="right">
					<img src="${pet.picture}" class="img-thumbnail" alt="..."
						width="200" height="200">
			</div>
		</div>
	</div>
	<a class="btn btn-dark" href="updateForm.do?petId=${pet.id}" role="button">Update Pet</a>
	<a class="btn btn-dark" href="delete.do?petId=${pet.id}" role="button">Delete Pet</a>
	
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
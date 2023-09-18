<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"/>
<link rel="stylesheet" href="css/main.css"/>
<title>Add A Pet</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>

<h1>Update your new pet</h1>
	<p> "*" indicates required fields</p><br>

<form action="update.do" method="get">
	
			<input type="hidden" name="id" value="${pet.id}">

			<label for="Owner">*Owner:</label>
			<input type="text" name="owner" id="owner" value="${pet.owner}" required>

			<br>
			<br>
			<label for="name">*Name:</label>
			<input type="text" name="name" id="name" value="${pet.name}" required>

			<br>
			<br>
			<label for="species">*Species:</label>
			<input type="text" name="species" id="species" value="${pet.species}" required>


			<br>
			<br>
			<label for="age">Age:</label>
			<input type="number" name="age" id="age" value="${pet.age}" min="0" step="1">


			<br>
			<br>
			<label for="favoriteFood">Favorite Food:</label>
			<input type="text" name="favoriteFood" id="favoriteFood" value="${pet.favoriteFood}">

			<br>
			<br>
			<label for="favoriteToy">Favorite Toy:</label>
			<input type="text" name="favoriteToy" id="favoriteToy" value="${pet.favoriteToy}">

			<br>
			<br>
			<input type="submit" />




</form>
<br>
<br>
<p>Contact the Database Admin Team to change or add a picture of your pet.
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
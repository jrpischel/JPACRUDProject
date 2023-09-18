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

<h1>Add your new pet</h1>
	<p> "*" indicates required fields</p><br>

<form action="create.do" method="post">

			<label for="Owner">*Owner:</label>
			<input type="text" name="owner" id="owner" required>

			<br>
			<br>
			<label for="name">*Name:</label>
			<input type="text" name="name" id="name" required>

			<br>
			<br>
			<label for="species">*Species:</label>
			<input type="text" name="species" id="species" required>


			<br>
			<br>
			<label for="age">Age:</label>
			<input type="number" name="age" id="age" value="1" min="0" step="1">


			<br>
			<br>
			<label for="favoriteFood">Favorite Food:</label>
			<input type="text" name="favoriteFood" id="favoriteFood">

			<br>
			<br>
			<label for="favoriteToy">Favorite Toy:</label>
			<input type="text" name="favoriteToy" id="favoriteToy">

			<br>
			<br>
			<input type="submit" />




</form>
<p>Contact the Database Admin Team to have a picture of your new pet added to their personal page.
<jsp:include page="bootstrapFoot.jsp"/>
</body>
</html>
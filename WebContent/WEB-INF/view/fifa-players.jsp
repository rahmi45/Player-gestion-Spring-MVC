<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fifa Players</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<h1>Voici la liste : Fifa players ! </h1>

<table class="table table-dark table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Number</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Services</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach var="player" items = "${players}">
      <tr>
	    <td>${player.id}</td>
	    <td>${player.name}</td>
	    <td>${player.number}</td>
	    <td>${player.address}</td>
	    <td>${player.phone}</td>
      	<td>
      	<c:url var="editPlayer" value="/fifa/showPlayer">
      		<c:param name="playerId" value="${player.id}"></c:param>
      	</c:url>
	      	<a href="${editPlayer}" type="button" class="btn btn-primary">Edit</a>
	      	
	    <c:url var="deletePlayer" value="/fifa/deletePlayer">
      		<c:param name="playerId" value="${player.id}"></c:param>
      	</c:url>
	      	<a href="${deletePlayer}" type="button" class="btn btn-danger">Delete</a>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>
	<a href="add" type="button" class="btn btn-primary">Add Player</a>
</body>
</html>
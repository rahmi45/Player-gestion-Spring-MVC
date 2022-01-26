<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <tr>
	  <td>@id</td>
      <td>@name</td>
      <td>@number</td>
      <td>@address</td>
      <td>@phone</td>
      <td>
      	<button type="button" class="btn btn-primary">Edit</button>
      	<button type="button" class="btn btn-danger">Delete</button>
      </td>
    </tr>
  </tbody>
</table>
</body>
</html>
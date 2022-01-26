<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert new Player</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mystyle.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<form class="row g-3">
  <div class="col-md-6">
    <label for="inputName" class="form-label">Name</label>
    <input type="text" class="form-control" id="inputName" placeholder="Name">
  </div>
  <div class="col-md-6">
    <label for="inputNumber" class="form-label">Number</label>
    <input type="number" class="form-control" id="inputNumber" placeholder="Number">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="Address">
  </div>
  <div class="col-12">
    <label for="inputPhone" class="form-label">Phone</label>
    <input type="number" class="form-control" id="inputPhone" placeholder="Phone number">
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Add !</button>
  </div>
</form>
<%-- <h1>${pageContext.request.contextPath}</h1> --%>
</body>
</html>
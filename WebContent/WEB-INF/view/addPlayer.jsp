<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="fo" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert new Player</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mystyle.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<fo:form action="savePlayer"  modelAttribute="player"  method="GET" class="row g-3">
  <div class="col-md-6">
    <label for="inputName" class="form-label">Name</label>
    <fo:input path="name" class="form-control" placeholder="Name"/>
  </div>
  <div class="col-md-6">
    <label for="inputNumber" class="form-label">Number</label>
    <fo:input path="number" class="form-control" placeholder="Number"/>
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <fo:input path="address" class="form-control" placeholder="Address"/>
  </div>
  <div class="col-12">
    <label for="inputPhone" class="form-label">Phone</label>
    <fo:input path="phone" class="form-control" placeholder="Phone number"/>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Add !</button>
  </div>
</fo:form>
<%-- <h1>${pageContext.request.contextPath}</h1> --%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : All Books</title>
<%@include file="allCSS.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<h3 class="text-center">Hello Admin</h3>
<table class="table table-striped">
  <thead class="bg-primary text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Ph No</th>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Payment type</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
      <td>Mark</td>
      <td>Otto</td>
    </tr>
  </tbody>
</table>

<div style="margin-top:280px;">
	<%@include file="Footer.jsp"%>
	</div>
</body>
</html>
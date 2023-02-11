<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="allComponent/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="allComponent/navbar.jsp"%>
	
	<div class="container text-center mt-3">
	<i class="fas fa-check-circle fa-5x text-success"></i>
	<h1>Thank You</h1>
	<h2>Your Order is Successfully Placed</h2>
	<h5>Product will be Delivered in 7 Days</h5>
	<a href="index.jsp" class="btn btn-primary mt-3">Home</a>
	<a href = "order.jsp" class="btn btn-danger mt-3">View Order</a>
	</div>
</body>
</html>

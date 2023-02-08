<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.user"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Old Books</title>
<%@ include file="allComponent/allCSS.jsp"%>
</head>
<body>
	<%@ include file="allComponent/navbar.jsp"%>
	<div class="container p-5">

		<c:if test="${not empty succMsg }">
			<div class="alert alert-success text-center">
			${succMsg}
			</div>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<table class="table table-striped">
			<thead class="bg-primary text-white">
				<tr>
					<th scope="col">Book Name</th>
					<th scope="col">Author</th>
					<th scope="col">Price</th>
					<th scope="col">Book Category</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
				<%
				user u = (user) session.getAttribute("userobj");
				String email = u.getEmail();
				BookDAOImpl dao = new BookDAOImpl(DBConnect.getconn());
				List<BookDtls> list = dao.getBookByOld(email, "Old");
				for (BookDtls b : list) {
				%>
				<tr>
					<td><%=b.getBookName()%></td>
					<td><%=b.getAuthor()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getBookCategory()%></td>
					<td><a href="delete_old_book?em=<%=b.getEmail()%>&&id=<%=b.getBookId() %>"
						class="btn btn-sm btn-danger">Delete</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>
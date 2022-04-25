<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<style type="text/css">
.img-jmbo{
background-image: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url('<c:url value="/resources/images/background.jpg"/>');
background-size: cover;
height: 100%;
background-position: center;
background-repeat: no-repeat;

}
</style>
</head>
<body> <%-- background='<c:url value="/resources/images/background.jpg"/>' --%>
	<div class="img-jmbo bg">
		<div class="container text-white">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-center mt-3 mb-3">Welcome to Product App</h1>
					<table class="table text-white">
						<thead class="thead-dark">
							<tr>
								<th scope="col">S.No.</th>
								<th scope="col">Product Name</th>
								<th scope="col">Product Description</th>
								<th scope="col">Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${products}" var="p">
								<tr>
									<th scope="row">${p.id }</th>
									<td>${p.name }</td>
									<td>${p.description }</td>
									<td class="font-weight-bold">&#x20B9;${p.price }</td>
									<td><a href="delete/${p.id}"><i
											class="fas fa-trash text-danger mr-3"></i></a> <a
										href="update/${p.id}"><i
											class="fas fa-pen-nib text-primary"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="text-center">
						<a href="add-product" class="btn btn-outline-success">Add
							Product</a>
					</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>

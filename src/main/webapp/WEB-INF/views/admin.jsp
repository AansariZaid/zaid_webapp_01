<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>

<div class="container">

	<div class="panel panel-default">

		<div class="panel-heading">Product Details</div>

		<div class="panel-body">

			<form:form action="${cp}/admin/save" method="POST"
				modelAttribute="product">
				<form:hidden path="id" />

				<form:input path="name" cssClass="form-control" /> &#160;

				<form:input path="brand" cssClass="form-control" /> &#160;
		
				<form:input path="category" cssClass="form-control" /> &#160;
	
				<form:input path="price" cssClass="form-control" />

				<br>
				<input type="Submit" value="save" class="btn btn-primary" />
			</form:form>
		</div>

	</div>

	<table class="table table-striped">

		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Brand</th>
			<th>Category</th>
			<th>Price</th>
			<th>&#160</th>
		</tr>

		<c:forEach items="${products }" var="product">
			<tr>
				<td>${product.id }</td>
				<td>${product.name }</td>
				<td>${product.category }</td>
				<td>${product.brand }</td>
				<td>${product.price }</td>

				<td><a href="${cp}/admin/edit/${product.id }"
					class="btn btn-primary">Edit</a> <a
					href="${cp}/admin/delete/${product.id }" class="btn btn-primary">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
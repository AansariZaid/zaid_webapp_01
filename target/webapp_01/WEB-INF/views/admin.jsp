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
				<form:label path="">Product Name</form:label>
				<form:input path="name" cssClass="form-control" />&#160;
				<form:label path="">Product Brand</form:label>
				<form:input path="brand" cssClass="form-control" />&#160;
				<form:label path="">Product Category</form:label>
				<form:input path="category" cssClass="form-control" />&#160;
				<form:label path="">Product Price</form:label>
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

		<c:forEach items="${products }" var="products">
			<tr>
				<td>${products.id }</td>
				<td>${products.name }</td>
				<td>${products.category }</td>
				<td>${products.brand }</td>
				<td>${products.price }</td>

				<td><a href="${cp}/admin/edit/${products.id }"
					class="btn btn-primary">Edit</a> <a
					href="${cp}/admin/delete/${products.id }" class="btn btn-primary">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
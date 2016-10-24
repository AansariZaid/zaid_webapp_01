<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<div class="container">

	<div class="panel panel-default">

		<div class="panel-heading">Product Details</div>

		<div class="panel-body">

			<form:form action="${cp}/admin/save" method="POST"
				modelAttribute="product" enctype="multipart/form-data">

				<c:if test="${!empty product}">
					<tr>
						<td><form:label path="id">
								<spring:message text="Product Id" />
							</form:label></td>
						<td><form:input path="id" readonly="true"
								class="form-control" disabled="true" /> <form:hidden path="id" />
							<!-- <span
								class="glyphicon glyphicon-lock "></span> --></td>
					</tr>
				</c:if>

				<form:label path="">Product Name</form:label>
				<form:input path="name" cssClass="form-control" required="" />
				<span><form:errors path="name" cssClass="error" /></span>
				<form:label path="">Product Brand</form:label>
				<form:input path="brand" cssClass="form-control" required="" />
				<span><form:errors path="brand" class="error" /></span>

				<!-- ADDED THIS CODE TO DYNAMICALLY LOAD PRODUCT LIST FROM DATABASE -->
				<form:label path="">Product Category</form:label>

				<form:select path="category" cssClass="form-control">

					<c:forEach items="${categories}" var="categories">

						<form:option value="${categories.categoryName }">${categories.categoryName}</form:option>

					</c:forEach>

				</form:select>

				<form:label path="">Product Price</form:label>
				<form:input path="price" class="form-control" />
				<span><form:errors path="price" cssClass="error" /></span>
				<form:label path="file">
					<spring:message text="Choose Image" />
				</form:label>
				<form:input path="file" type="file" cssClass="form-control"
					required="required" />
				<br>
				<input type="Submit" value="save" class="btn btn-primary" />

			</form:form>
		</div>

	</div>




	<table class="table table-striped">

		<tr>
			<th>ID</th>
			<th>Product Name</th>
			<th>Category</th>
			<th>Brand</th>
			<th>Price</th>
			<th>Image</th>
			<th>&#160</th>
		</tr>

		<c:forEach items="${products }" var="products">
			<tr>
				<td>${products.id }</td>
				<td>${products.name }</td>
				<td>${products.category }</td>
				<td>${products.brand }</td>
				<td>${products.price }</td>
				<td><img
					src="${cp}/resources/images/productimages/${products.id }.jpg"
					height="150" width="150" /></td>

				<td><a href="${cp}/admin/edit/${products.id }"
					class="btn btn-primary">Edit</a> <a
					href="${cp}/admin/delete/${products.id }" class="btn btn-primary">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
<br>
<br>
<%@ include file="footer.jsp"%>
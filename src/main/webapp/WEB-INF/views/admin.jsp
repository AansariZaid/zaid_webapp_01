<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<div class="container">

	<div class="panel panel-default col-sm-8 col-sm-offset-2">

		<div class="row panel-heading">Product Details</div>

		<div class="panel-body">

			<form:form action="${cp}/admin/save" method="POST"
				modelAttribute="product" enctype="multipart/form-data">

				<c:if test="${!empty product}">
					<div class="row">
						<div class="col-sm-3">
							<form:label path="id">
								<spring:message text="Product Id" />
							</form:label>
						</div>
						<div class="col-sm-9">
							<form:input path="id" readonly="true" class="form-control"
								disabled="true" />
							<form:hidden path="id" />
						</div>
					</div>
				</c:if>
				<br>
				<div class="row">
					<div class="col-sm-3">
						<form:label path="">Product Name</form:label>
					</div>
					<div class="col-sm-9">
						<form:input path="name" cssClass="form-control" required="" />
						<span><form:errors path="name" cssClass="error" /></span>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-3">
						<form:label path="">Product Brand</form:label>
					</div>
					<div class="col-sm-9">
						<form:input path="brand" cssClass="form-control" required="" />
						<span><form:errors path="brand" class="error" /></span>
					</div>
				</div>
				<br>

				<!-- ADDED THIS CODE TO DYNAMICALLY LOAD PRODUCT LIST FROM DATABASE -->
				<div class="row">
					<div class="col-sm-3">
						<form:label path="">Product Category</form:label>
					</div>
					<div class="col-sm-9">
						<form:select path="category" cssClass="form-control">

							<c:forEach items="${categories}" var="categories">

								<form:option value="${categories.categoryName }">${categories.categoryName}</form:option>

							</c:forEach>

						</form:select>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-3">
						<form:label path="">Product Price</form:label>
					</div>
					<div class="col-sm-9">
						<form:input path="price" class="form-control" />
						<span><form:errors path="price" cssClass="error" /></span>
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-sm-3">
						<form:label path="file">
							<spring:message text="Choose Image" />
						</form:label>
					</div>
					<div class="col-sm-9">
						<form:input path="file" type="file" cssClass="form-control"
							required="required" />
					</div>
				</div>
				<br>
					<input type="Submit" value="save" class="btn btn-primary"/>
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
<%@ include file="linking.jsp"%>
<%@ include file="navigator.jsp"%>
<title>viewOne</title>


<div class="container">
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-8 ">
			<div class="table-responsive">
				<table class="table table-hover table-condensed cf table2">
					<thead class="cf">
						<tr>
							<th></th>
							<th>Product ID</th>
							<th>Product Name</th>
							<th>Product Brand</th>
							<th>Product Category</th>
							<th>Product Price</th>
							<th>Edit Product</th>
							<th>Delete Product</th>
						</tr>
					</thead>
					<tbody>
						<!-- loop to print data from object (productData) which is coming thorough  Controller -->

						<tr>
							<!-- we are getting image from server local storage and rest data from H2 DataBase -->
							<td><img alt=""
								src="${cp}/resources/image/productimages/${product.productId}.jpg"
								height="100ppx" width="100px" /></td>
							<td class="active">${product.id}</td>
							<td align="left">${product.name}</td>
							<td>${product.brand}</td>
							<td>${product.category}</td>
							<td>${product.price}</td>
							<td><a href="<c:url value="checkout"/>"
								class="btn btn-primary btn-lg">ADD CARt</a></td>

						</tr>

					</tbody>
				</table>

			</div>
		</div>
		<div class="col-sm-2"></div>
	</div>


</div>
<%@ include file="footer.jsp"%>
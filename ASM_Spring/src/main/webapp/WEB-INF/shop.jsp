<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>




<style>
/* Dark mode styles */
body.dark-mode {
	background-color: #222;
	color: #fff;
}

body.dark-mode .carousel-inner .carousel-item {
	background-color: #333;
	color: #fff;
}

body.dark-mode .carousel-inner .carousel-item h1, body.dark-mode .carousel-inner .carousel-item h3,
	body.dark-mode .carousel-inner .carousel-item p {
	color: #fff;
}

body.dark-mode .carousel-control-prev i, body.dark-mode .carousel-control-next i
	{
	color: #fff;
}

body.dark-mode .promo-box .promo-item1, body.dark-mode .promo-box .promo-item2,
	body.dark-mode .promo-box .promo-item3, body.dark-mode .promo-box .promo-item4
	{
	background-color: #333;
	color: #fff;
}

body.dark-mode .promo-box .promo-item1 h3, body.dark-mode .promo-box .promo-item2 h3,
	body.dark-mode .promo-box .promo-item3 h3, body.dark-mode .promo-box .promo-item4 h3
	{
	color: #fff;
}

body.dark-mode .section_3_banner .three_banner {
	background-color: #444;
}

body.dark-mode .section_3_banner .three_banner img {
	filter: brightness(0.8);
}

body.dark-mode .section-index .text-center h1, body.dark-mode .section-index .text-center p
	{
	color: #fff;
}

body.dark-mode .card {
	background-color: #333;
	color: #fff;
}

body.dark-mode .card a {
	color: #fff;
}

body.dark-mode .list-group-item {
	background-color: #444;
	color: #fff;
}

body.dark-mode .card ul .text-muted {
	color: #aaa !important;
}

.list-group-item {
	background-color: #fff;
	color: #000;
}

.card-img-top {
	text-align: center;
}
</style>




<c:if test="${messageShop != null }">
	<div class="alert alert-danger">${messageShop}</div>
</c:if>
<c:if test="${messageShop1 != null }">
	<div class="alert alert-success">${messageShop1}</div>
</c:if>
<c:if test="${ !empty listLamp }">

	<c:forEach var="l" items="${listLamp}">

		<div class="col-3 mt-3">

			<div class="card py-3 mt-3 ml-5" style="margin: left">
				<img src="./img/${l.img}" class="card-img-top"
					style="width: 319px; height: 319px">
				<div class="card-body">
					<h5 class="card-title">${l.name}</h5>
				</div>
				<ul class="list-group list-group-flush">
					<li class="list-group-item ">số lượng : ${l.quantity } chiếc</li>
					<li class="list-group-item ">giá : <fmt:formatNumber
							pattern="###,### vnđ">${l.price }</fmt:formatNumber> VND/1sp
					</li>
				</ul>

				<div class="card-body">

					<div>
						<a href="/cart/add?id=${l.id_lamp }" class="btn btn-primary">Thêm
							vào giỏ hàng </a>
					</div>
					<div>
						<a href="/shop/detail?id=${l.id_lamp}"
							class="btn btn-secondary mt-3">Xem Chi Tiết </a>
					</div>
				</div>

			</div>

		</div>
	</c:forEach>

</c:if>

<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
		<li class="page-item"><a class="page-link"
			href="/layout/page?page=0 ">First</a></li>
		<li class="page-item"><a class="page-link"
			href="/layout/page?page=${page.number -1 }">Previous</a></li>
		<li class="page-item"><a class="page-link"
			href="/layout/pagepage?page=${page.number +1 }">Next</a></li>
		<li class="page-item"><a class="page-link"
			href="/layout/page?page=${page.totalPages -1 }">Last</a></li>
	</ul>

	<!-- Start Script -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
	<script src="assets/css/bootstrap.min.css"></script>
	<!-- End Script -->
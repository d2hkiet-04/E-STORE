<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Electronic Shop</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="assets/img/apple-icon.png">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/templatemo.css">
<link rel="stylesheet" href="assets/css/custom.css">
<link rel="stylesheet" href="assets/css/styles.css">
<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet" href="assets/css/fontawesome.min.css">
<script src="assets/js/myjs.js"></script>
<style>
/* Dark mode styles */
body.dark-mode {
	background-color: #222;
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
body.dark-mode .card ul>li {
	color: #fff;
}
body.dark-mode .list-group-item {
    background-color:#444; 
    color: #fff; 
}
body.dark-mode.navbar-nav.nav-link {
    color: #fff; 
}
#templatemo_main_nav a {
    color: #59ab6e;
}

body.dark-mode .navbar-nav .nav-link {
    color: #fff;
}

body.dark-mode .card ul .text-muted {
	color: #aaa !important;
}
.list-group-item {
    background-color: #fff;
    color: #000; 
}
.dark-mode.nav-link {
   background: white; 
}

.dark-mode.fa-search {
    color: #fff; 
}
/*.dark-mode button {
    background-color: #222; 
}*/
.dark-mode .navbar {
    background-color: white;
    color: black;
}
.button {
    width: 30px; 
    height: 30px;  
    border: none;
    background-color: white; 
    cursor: pointer; 
    transition: background-color 0.3s ease; 
    margin: 5px 5px;
    
}

button:focus {
    outline: none;
}
button:active {
    background-color: inherit; 
}
.dark-mode.nav-icon.fa {
    color: #fff;
}
.nav-item.dropdown:hover .dropdown-menu {
    display: block;
}

</style>
</head>

<body>
	<!-- Start Top Nav -->
	<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> 
					<a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">namvps32722@fpt.edu.vn</a> 
					<i class="fa fa-phone mx-2"></i> 
					<a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">0886684759</a>
				</div>
				<div>
					<a class="text-light" href="https://vi-vn.facebook.com/" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a> 
					<a class="text-light" href="https://www.instagram.com/accounts/login/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a> 
					<a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a> 
					<a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->

	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div class="container d-flex justify-content-between align-items-center">
			<a class="navbar-brand text-success logo h1 align-self-center" href="/home">Electronic Shop</a>
			<button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
				<div class="flex-fill">
					<ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="/home">Trang Chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="/about">Giới Thiệu</a></li>
						<li class="nav-item"><a class="nav-link" href="/shop">Sản Phẩm</a></li>
						<li class="nav-item"><a class="nav-link" href="/contact">Liên hệ</a></li>
						<c:if test="${sessionScope.role == true }">
							<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Quản Lý</a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#!">Đăng Nhập</a></li>
									<li><hr class="dropdown-divider" /></li>
									<li><a class="dropdown-item" href="/lamp">Quản Lý Sản Phẩm</a></li>
									<li><a class="dropdown-item" href="/user/listuser">Quản Lý Người Dùng</a></li>
									<li><a class="dropdown-item" href="#!">Quản Lý Giỏ Hàng</a></li>
									
								</ul>
							</li>
						</c:if>
						<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Tài khoản
    </a>
    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <a class="dropdown-item" href="/user/login">Đăng nhập</a>
        <c:if test="${sessionScope.user != null }">
            <a class="dropdown-item" href="#">Xin chào ${user.fullname}</a>
        </c:if>
        <a class="dropdown-item" href="/user/register">Đăng ký</a>
        <c:if test="${sessionScope.user != null }">
            <a class="dropdown-item" href="/user/logout">Đăng xuất</a>
        </c:if>
    </div>
</li>
						<button class="button" type="button" name="dark_light" onclick="toggleDarkLight()" title="Toggle dark/light mode">🌛</button>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
						<div class="input-group">
							<input type="text" class="form-control" id="inputMobileSearch" placeholder="Nhập tên sản phẩm ...">
							<div class="input-group-text">
								<i class="fa fa-fw fa-search"></i>
							</div>
						</div>
					</div>
					<a class="nav-icon d-none d-lg-inline" href="/cart/index" data-bs-toggle="modal" data-bs-target="#templatemo_search">
						<i class="fa fa-fw fa-search text-dark mr-2"></i>
					</a>
					<a class="nav-icon position-relative text-decoration-none" href="/cart/index">
						<i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
					</a>
					<a class="nav-icon position-relative text-decoration-none" href="/cart/index">
						<i class="fa fa-fw fa-user text-dark mr-3"></i>
					</a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="/home/find" class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch" name="name" placeholder="Nhập Tên Sản Phẩm">
					<button type="submit" class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>

	<div class="row">
		<jsp:include page="${view}"></jsp:include>
	</div>

	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">Electronic Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 123 Quang Trung, Quận 12, HCM City</li>
						<li><i class="fa fa-phone fa-fw"></i> <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a></li>
						<li><i class="fa fa-envelope fa-fw"></i> <a class="text-decoration-none" href="mailto:info@company.com">namvvps32722@fpt.edu.com</a></li>
					</ul>
					<iframe width="300" height="300" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.461516269135!2d106.62365867451814!3d10.852459357787751!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b161f50ae47%3A0x2328d1d1acc3b11a!2sFPT%20Polytechnic%20TP.HCM%20-%20T%C3%B2a%20F!5e0!3m2!1svi!2s!4v1717942336424!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Đồng Hồ</a></li>
						<li><a class="text-decoration-none" href="#">Điện thoại</a></li>
						<li><a class="text-decoration-none" href="#">Đèn để bàn</a></li>
						<li><a class="text-decoration-none" href="#">Tai nghe</a></li>
						<li><a class="text-decoration-none" href="#">Điện Thoại</a></li>
						
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Trang Chủ</a></li>
						<li><a class="text-decoration-none" href="#">Giới Thiệu</a></li>
						<li><a class="text-decoration-none" href="#">Sản Phẩm</a></li>
						<li><a class="text-decoration-none" href="#">FAQs</a></li>
						<li><a class="text-decoration-none" href="#">Liên hệ</a></li>
					</ul>
				</div>

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li class="list-inline-item border border-light rounded-circle text-center"><a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a></li>
						<li class="list-inline-item border border-light rounded-circle text-center"><a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a></li>
						<li class="list-inline-item border border-light rounded-circle text-center"><a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a></li>
						<li class="list-inline-item border border-light rounded-circle text-center"><a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a></li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Địa chỉ Email</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Đăng Ký</div>
					</div>
				</div>
			</div>
		</div>

		<div class="w-100 bg-black py-3">
			<div class="container">
				<div class="row pt-2">
					<div class="col-12">
						<p class="text-left text-light">
							Copyright &copy; 2023 Company Name 
							| Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">FPT Polytechnic</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- Scripts -->
	<script src="assets/js/jquery-1.11.0.min.js"></script>
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.bundle.min.js"></script>
	<script src="assets/js/templatemo.js"></script>
	<script src="assets/js/custom.js"></script>
</body>

</html>

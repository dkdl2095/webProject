<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
<title>5조</title>
<style>
ul {
	background-color: #81D4FA;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a {
	display: block;
	background-color: #81D4FA;
	color: #000000;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a.current {
	background-color: #81D4FA;
	color: white;
}

li a:hover:not(.current) {
	background-color: #81D4FA;
	color: white;
}

.img_wrap {
	position: relative;
	width: 300px;
	height: 347px;
	overflow: hidden;
}

.img_wrap img {
	margin-top: 4px;
	position: absolute;
	width: 100%;
	height: 100%;
	object-fit: cover;
	transform: scale(1.0);
	transition: transform 0.5s;
}

.img_wrap:hover img {
	transform: scale(1.1);
	z-index: 1;
}

body {
  background-color: #E1F5FE;
}

</style>
</head>
<body>
	<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" aria-current="page" href="Main.jsp">
    <img src="./image/5wh.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top"></a>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="MovieSelect2.jsp">영화조회</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

	<!-- 영화 정보 표시 -->
	<!-- 1번 영화 -->
	<div class="swiper-wrapper"
		style="transform: translate3d(0px, 0px, 0px);">
		<div class="swiper-slide swiper-slide-movie swiper-slide-active"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img
					src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87090/87090_320.jpg"
					alt="플래시" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
				</div>
				<div class="screenType_wrap">
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">플래시</strong> <hr><span><img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png"
					alt="Golden Egg great"> 94%</span> <p>예매율 27.1%</p>
			</div>
		</div>
		<!-- 2번 영화 -->
		<div class="swiper-slide swiper-slide-movie swiper-slide-next"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img
					src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87045/87045_320.jpg"
					alt="범죄도시3" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
				</div>
				<div class="screenType_wrap"></div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">범죄도시3</strong> <hr><span><img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png"
					alt="Golden Egg great"> 94%</span> <p>예매율 19.1%</p>
			</div>
		</div>
		<!-- 3번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img
					src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87034/87034_320.jpg"
					alt="엘리멘탈" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
				</div>
				<div class="screenType_wrap">
					
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">엘리멘탈</strong> <hr><span> <img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png"
					alt="Golden Egg great"> 98%
				</span> <p>예매율 18.6%</p>
			</div>
		</div>
		<!-- 4번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img
					src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87095/87095_320.jpg"
					alt="귀공자" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
				</div>
				<div class="screenType_wrap"></div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">귀공자</strong><hr> <span><img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
					alt="Golden Egg Preegg">97%</span> <p>예매율 10.4%</p>
			</div>
		</div>
		<!-- 5번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 300px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img
					src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87106/87106_320.jpg"
					alt="스파이더맨-어크로스 더 유니버스" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
				</div>
				<div class="screenType_wrap">
				
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">스파이더맨-어크로스 더 유니버스</strong><hr> <span><img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png"
					alt="Golden Egg Preegg">99%</span> <p>예매율 9.4%</p>
			</div>
		</div>
	</div>
	<script>
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 4,
			spaceBetween : 24,
			slidesPerGroup : 4,
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			pagination : {
				el : '.swiper-pagination',
				clickable : true,
			},
			scrollbar : {
				el : '.swiper-scrollbar',
			},
		});
	</script>
</body>
</html>
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
		background-color: #FFDAB9;
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
		background-color: #FFDAB9;
		color: #000000;
		padding: 8px;
		text-decoration: none;
		text-align: center;
		font-weight: bold;
	}

	li a.current {
		background-color: #FF6347;
		color: white;
	}

	li a:hover:not(.current) {
		background-color: #CD853F;
		color: white;
	}
</style>
</head>
<body>
	<h1>오른쪽 메뉴 설정</h1>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="Main.jsp"><img src="C:/Users/COMPUTER/Desktop"></a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
	</ul>
	
	<!-- 영화 정보 표시 -->
	<!-- 1번 영화 -->
	<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
		<div class="swiper-slide swiper-slide-movie swiper-slide-active"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87090/87090_320.jpg" alt="플래시" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc age12">12</i>
				</div>
				<div class="screenType_wrap">
					<i class="screenType">
						<img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax">
					</i> 
					<i class="screenType">
						<img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX">
					</i> 
					<i class="screenType">
						<img src="https://img.cgv.co.kr/R2014/images/common/logo/screenx_white.png" alt="screenx">
					</i>
				</div>
				<div class="movieChart_btn_wrap">
					<a href="/movies/detail-view/?midx=87090" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '플래시');" class="btn_movieChart_detail">상세보기</a> 
					<a href="/ticket/?MOVIE_CD=20032875&amp;MOVIE_CD_GROUP=20032875" onclick="gaEventLog('PC_메인', '무비차트_예매하기','플래시')" class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">플래시</strong> 
				<span><img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png"alt="Golden Egg great"> 94%</span> 
				<span>예매율 27.1%</span>
			</div>
		</div>
		<!-- 2번 영화 -->
		<div class="swiper-slide swiper-slide-movie swiper-slide-next"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87045/87045_320.jpg" alt="범죄도시3" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc age15">15</i>
				</div>
				<div class="screenType_wrap"></div>
				<div class="movieChart_btn_wrap">
					<a href="/movies/detail-view/?midx=87045" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '범죄도시3');" class="btn_movieChart_detail">상세보기</a> 
					<a href="/ticket/?MOVIE_CD=20032729&amp;MOVIE_CD_GROUP=20032729" onclick="gaEventLog('PC_메인', '무비차트_예매하기','범죄도시3')" class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">범죄도시3</strong> 
				<span><img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png" alt="Golden Egg great"> 94%</span>
				<span>예매율 19.1%</span>
			</div>
		</div>
		<!-- 3번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87034/87034_320.jpg" alt="엘리멘탈" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc ageAll">All</i>
				</div>
				<div class="screenType_wrap">
					<i class="screenType">
					<img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX"></i> 
					<i class="screenType">
					<img src="https://img.cgv.co.kr/R2014/images/common/logo/threeD_white.png" alt="threeD"></i>
				</div>
				<div class="movieChart_btn_wrap">
					<a href="/movies/detail-view/?midx=87034" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '엘리멘탈');" class="btn_movieChart_detail">상세보기</a> 
					<a href="/ticket/?MOVIE_CD=20032890&amp;MOVIE_CD_GROUP=20032704" onclick="gaEventLog('PC_메인', '무비차트_예매하기','엘리멘탈')" class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">엘리멘탈</strong> <span> <img
					src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldenegggreat.png"
					alt="Golden Egg great"> 98%
				</span> <span>예매율 18.6%</span>
			</div>
		</div>
		<!-- 4번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87095/87095_320.jpg" alt="귀공자" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc age18">18</i>
					<i class="cgvIcon etc ageDay" data-before-text="D - 5">D Day</i>
				</div>
				<div class="screenType_wrap"></div>
				<div class="movieChart_btn_wrap">
					<a href="/movies/detail-view/?midx=87095" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '귀공자');" class="btn_movieChart_detail">상세보기</a> 
					<a href="/ticket/?MOVIE_CD=20032988&amp;MOVIE_CD_GROUP=20032881" onclick="gaEventLog('PC_메인', '무비차트_예매하기','귀공자')" class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">귀공자</strong> 
				<span><img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg">97%</span> 
				<span>예매율 10.4%</span>
			</div>
		</div>
		<!-- 5번 영화 -->
		<div class="swiper-slide swiper-slide-movie"
			style="width: 170.4px; margin-right: 32px;">
			<div class="img_wrap" data-scale="false">
				<img src="https://img.cgv.co.kr/Movie/Thumbnail/Poster/000087/87106/87106_320.jpg" alt="스파이더맨-어크로스 더 유니버스" onerror="errorImage(this)">
				<div class="movieAgeLimit_wrap">
					<i class="cgvIcon etc ageAll">All</i>
					<i class="cgvIcon etc ageDay" data-before-text="D - 5">D Day</i>
				</div>
				<div class="screenType_wrap">
					<i class="screenType">
					<img src="https://img.cgv.co.kr/R2014/images/common/logo/imax_white.png" alt="imax"></i> 
					<i class="screenType">
					<img src="https://img.cgv.co.kr/R2014/images/common/logo/forDX_white.png" alt="forDX"></i>
				</div>
				<div class="movieChart_btn_wrap">
					<a href="/movies/detail-view/?midx=87106" onclick="gaEventLog('PC_메인', '무비차트_영화상세', '스파이더맨-어크로스 더 유니버스');" class="btn_movieChart_detail">상세보기</a> 
					<a href="/ticket/?MOVIE_CD=20032904&amp;MOVIE_CD_GROUP=20032904" onclick="gaEventLog('PC_메인', '무비차트_예매하기','스파이더맨-어크로스 더 유니버스')" class="btn_movieChart_ticketing">예매하기</a>
				</div>
			</div>
			<div class="movie_info_wrap">
				<strong class="movieName">스파이더맨-어크로스 더 유니버스</strong> 
				<span><img src="https://img.cgv.co.kr/R2014/images/common/egg/eggGoldeneggPreegg.png" alt="Golden Egg Preegg">99%</span> 
				<span>예매율 9.4%</span>
			</div>
		</div>	
	</div>
</body>
</html>
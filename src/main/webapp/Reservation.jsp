<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<<h1>오른쪽 메뉴 설정</h1>
	<!-- 네비게이션 바 -->
	<ul>
		<li><img src="C:/Users/COMPUTER/Desktop">로고</li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="Reservation.jsp">영화예매</a></li>
	</ul>

	<div class="col-body" style="height: 565px;">
		<!-- 영화선택 -->
		<div class="movie-select">
			<div class="tabmenu">
				<span class="side on"></span> <a href="#"
					class="button menu1 selected">전체</a> <span class="side on"></span>
				<a href="#" class="button menu2">아트하우스<span class="arrow"></span></a>
				<div class="tabmenu-selectbox MOVIECOLLAGE" style="display: none;">
					<ul>
						<li><a href="#" onclick="return false;">전체</a></li>
						<li><a href="#" onclick="return false;">최신작</a></li>
						<li com_cd="03"><a href="#" onclick="return false;">시네마톡</a></li>
						<li com_cd="09"><a href="#" onclick="return false;">STAGE</a></li>
						<li com_cd="10"><a href="#" onclick="return false;">CHANNEL</a></li>
						<li com_cd="50"><a href="#" onclick="return false;">톰 크루즈
								특별전</a></li>
						<li com_cd="85"><a href="#" onclick="return false;">라이브러리톡</a></li>
						<li com_cd="WP"><a href="#" onclick="return false;">언택트톡</a></li>
						<li com_cd="WU"><a href="#" onclick="return false;">원작도서
								증정</a></li>
						<li com_cd="YK"><a href="#" onclick="return false;">무대인사,
								PRIVATE BOX</a></li>
					</ul>
				</div>
				<span class="side"></span> <a href="#" onclick="return false;"
					class="button menu3">특별관<span class="arrow"></span></a>
				<div class="tabmenu-selectbox SPECIALTHEATER" style="display: none;">
					<ul>
						<li><a href="#" onclick="return false;">전체</a></li>
						<li><a href="#" onclick="return false;">IMAX</a></li>
						<li><a href="#" onclick="return false;">4DX</a></li>
						<li><a href="#" onclick="return false;">SCREENX</a></li>
						<li><a href="#" onclick="return false;">PRIVATE BOX</a></li>
						<li><a href="#" onclick="return false;">SUITE CINEMA</a></li>
						<li><a href="#" onclick="return false;">CINE de CHEF</a></li>
						<li><a href="#" onclick="return false;">TEMPUR CINEMA</a></li>
						<li><a href="#" onclick="return false;">GOLD CLASS</a></li>
						<li><a href="#" onclick="return false;">CINE&amp;FORET</a></li>
						<li><a href="#" onclick="return false;">CINE&amp;LIVINGROOM</a></li>
						<li><a href="#" onclick="return false;">CINE KIDS</a></li>
						<li><a href="#" onclick="return false;">DOLBY ATMOS</a></li>
						<li><a href="#" onclick="return false;">PREMIUM</a></li>
						<li><a href="#" onclick="return false;">STARIUM</a></li>
						<li><a href="#" onclick="return false;">SPHERX</a></li>
						<li><a href="#" onclick="return false;">BRAND</a></li>
					</ul>
				</div>
				<span class="side"></span>
			</div>
			<div class="sortmenu">
				<a href="#" onclick="sortMovieByRank();return false;"
					id="movieSortRankBtn" class="button btn-rank selected">예매율순</a> <a
					href="#" onclick="sortMovieByName();return false;"
					id="movieSortNameBtn" class="button btn-abc">가나다순</a>

			</div>


			<div class="col-head" id="skip_movie_list">
				<h3 class="sreader">영화</h3>
				<a href="#" class="skip_to_something"
					onclick="skipToSomething('skip_theater_list');return false;">영화선택
					건너뛰기</a>
			</div>
			<div class="movie-list nano has-scrollbar has-scrollbar-y"
				id="movie_list">
				<ul class="content scroll-y" onscroll="movieSectionScrollEvent();"
					tabindex="-1" style="right: -17px;">
					<li class="" data-index="0" movie_cd_group="20032875"
						movie_idx="87090"><a href="#" onclick="return false;"
						title="플래시" alt="플래시"><i class="cgvIcon etc age12">12</i><span
							class="text">플래시</span><span class="sreader"></span></a></li>
					<li class="" data-index="1" movie_cd_group="20032729"
						movie_idx="87045"><a href="#" onclick="return false;"
						title="범죄도시3" alt="범죄도시3"><i class="cgvIcon etc age15">15</i><span
							class="text">범죄도시3</span><span class="sreader"></span></a></li>
					<li class="" data-index="2" movie_cd_group="20032704"
						movie_idx="87034"><a href="#" onclick="return false;"
						title="엘리멘탈" alt="엘리멘탈"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">엘리멘탈</span><span class="sreader"></span></a></li>
					<li class="" data-index="3" movie_cd_group="20032881"
						movie_idx="87095"><a href="#" onclick="return false;"
						title="귀공자" alt="귀공자"><i class="cgvIcon etc age18">18</i><span
							class="text">귀공자</span><span class="sreader"></span></a></li>
					<li class="" data-index="4" movie_cd_group="20032904"
						movie_idx="87106"><a href="#" onclick="return false;"
						title="스파이더맨-어크로스더유니버스" alt="스파이더맨-어크로스더유니버스"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">스파이더맨-어크로스더유니버스</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="5" movie_cd_group="20032965"
						movie_idx="87133"><a href="#" onclick="return false;"
						title="명탐정코난-하이바라아이이야기~흑철의미스터리트레인"
						alt="명탐정코난-하이바라아이이야기~흑철의미스터리트레인"><i class="cgvIcon etc age12">12</i><span
							class="text">명탐정코난-하이바라아이이야기~흑철의미스터리트레인</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="6" movie_cd_group="20032743"
						movie_idx="87055"><a href="#" onclick="return false;"
						title="트랜스포머-비스트의서막" alt="트랜스포머-비스트의서막"><i
							class="cgvIcon etc age12">12</i><span class="text">트랜스포머-비스트의서막</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="7" movie_cd_group="20032921"
						movie_idx="87108"><a href="#" onclick="return false;"
						title="비의도적연애담스페셜" alt="비의도적연애담스페셜"><i
							class="cgvIcon etc age12">12</i><span class="text">비의도적연애담스페셜</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="8" movie_cd_group="20032709"
						movie_idx="87035"><a href="#" onclick="return false;"
						title="남은인생10년" alt="남은인생10년"><i class="cgvIcon etc age12">12</i><span
							class="text">남은인생10년</span><span class="sreader"></span></a></li>
					<li class="" data-index="9" movie_cd_group="20032734"
						movie_idx="87049"><a href="#" onclick="return false;"
						title="너의눈을들여다보면" alt="너의눈을들여다보면"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">너의눈을들여다보면</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="10" movie_cd_group="20032775"
						movie_idx="87061"><a href="#" onclick="return false;"
						title="어퓨굿맨" alt="어퓨굿맨"><i class="cgvIcon etc age15">15</i><span
							class="text">어퓨굿맨</span><span class="sreader"></span></a></li>
					<li class="" data-index="11" movie_cd_group="20032809"
						movie_idx="87069"><a href="#" onclick="return false;"
						title="애스터로이드시티" alt="애스터로이드시티"><i class="cgvIcon etc age12">12</i><span
							class="text">애스터로이드시티</span><span class="sreader"></span></a></li>
					<li class="" data-index="12" movie_cd_group="20032777"
						movie_idx="87063"><a href="#" onclick="return false;"
						title="매그놀리아" alt="매그놀리아"><i class="cgvIcon etc age18">18</i><span
							class="text">매그놀리아</span><span class="sreader"></span></a></li>
					<li class="" data-index="13" movie_cd_group="20032164"
						movie_idx="86883"><a href="#" onclick="return false;"
						title="가디언즈오브갤럭시-Volume3" alt="가디언즈오브갤럭시-Volume3"><i
							class="cgvIcon etc age12">12</i><span class="text">가디언즈오브갤럭시-Volume3</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="14" movie_cd_group="20032773"
						movie_idx="87059"><a href="#" onclick="return false;"
						title="탑건" alt="탑건"><i class="cgvIcon etc age12">12</i><span
							class="text">탑건</span><span class="sreader"></span></a></li>
					<li class="" data-index="15" movie_cd_group="20032778"
						movie_idx="87064"><a href="#" onclick="return false;"
						title="아이즈와이드셧" alt="아이즈와이드셧"><i class="cgvIcon etc age18">18</i><span
							class="text">아이즈와이드셧</span><span class="sreader"></span></a></li>
					<li class="" data-index="16" movie_cd_group="20032566"
						movie_idx="86991"><a href="#" onclick="return false;"
						title="극장판포켓몬스터DP-아르세우스초극의시공으로" alt="극장판포켓몬스터DP-아르세우스초극의시공으로"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">극장판포켓몬스터DP-아르세우스초극의시공으로</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="17" movie_cd_group="20032950"
						movie_idx="87126"><a href="#" onclick="return false;"
						title="마마무:마이콘더무비" alt="마마무:마이콘더무비"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">마마무:마이콘더무비</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="18" movie_cd_group="20032779"
						movie_idx="87065"><a href="#" onclick="return false;"
						title="바닐라스카이" alt="바닐라스카이"><i class="cgvIcon etc age18">18</i><span
							class="text">바닐라스카이</span><span class="sreader"></span></a></li>
					<li class="" data-index="19" movie_cd_group="20032776"
						movie_idx="87062"><a href="#" onclick="return false;"
						title="뱀파이어와의인터뷰" alt="뱀파이어와의인터뷰"><i class="cgvIcon etc age18">18</i><span
							class="text">뱀파이어와의인터뷰</span><span class="sreader"></span></a></li>
					<li class="" data-index="20" movie_cd_group="20032774"
						movie_idx="87060"><a href="#" onclick="return false;"
						title="레인맨" alt="레인맨"><i class="cgvIcon etc age12">12</i><span
							class="text">레인맨</span><span class="sreader"></span></a></li>
					<li class="" data-index="21" movie_cd_group="20032194"
						movie_idx="86891"><a href="#" onclick="return false;"
						title="말없는소녀" alt="말없는소녀"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">말없는소녀</span><span class="sreader"></span></a></li>
					<li class="" data-index="22" movie_cd_group="20032095"
						movie_idx="86849"><a href="#" onclick="return false;"
						title="인어공주" alt="인어공주"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">인어공주</span><span class="sreader"></span></a></li>
					<li class="" data-index="23" movie_cd_group="20031945"
						movie_idx="86815"><a href="#" onclick="return false;"
						title="스즈메의문단속" alt="스즈메의문단속"><i class="cgvIcon etc age12">12</i><span
							class="text">스즈메의문단속</span><span class="sreader"></span></a></li>
					<li class="" data-index="24" movie_cd_group="20032732"
						movie_idx="87047"><a href="#" onclick="return false;"
						title="그여름" alt="그여름"><i class="cgvIcon etc age12">12</i><span
							class="text">그여름</span><span class="sreader"></span></a></li>
					<li class="" data-index="25" movie_cd_group="20031745"
						movie_idx="86763"><a href="#" onclick="return false;"
						title="[사이다경제]평범한직장인이160억대자산가가될수있었던사연"
						alt="[사이다경제]평범한직장인이160억대자산가가될수있었던사연"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">[사이다경제]평범한직장인이160억대자산가가될수있었던사연</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="26" movie_cd_group="20033007"
						movie_idx="87137"><a href="#" onclick="return false;"
						title="순응자" alt="순응자"><i class="cgvIcon etc age18">18</i><span
							class="text">순응자</span><span class="sreader"></span></a></li>
					<li class="" data-index="27" movie_cd_group="20032498"
						movie_idx="86959"><a href="#" onclick="return false;"
						title="슬픔의삼각형" alt="슬픔의삼각형"><i class="cgvIcon etc age15">15</i><span
							class="text">슬픔의삼각형</span><span class="sreader"></span></a></li>
					<li class="" data-index="28" movie_cd_group="20031612"
						movie_idx="86720"><a href="#" onclick="return false;"
						title="더퍼스트슬램덩크" alt="더퍼스트슬램덩크"><i class="cgvIcon etc age12">12</i><span
							class="text">더퍼스트슬램덩크</span><span class="sreader"></span></a></li>
					<li class="" data-index="29" movie_cd_group="20032848"
						movie_idx="87081"><a href="#" onclick="return false;"
						title="박하경여행기" alt="박하경여행기"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">박하경여행기</span><span class="sreader"></span></a></li>
					<li class="" data-index="30" movie_cd_group="20030889"
						movie_idx="86341"><a href="#" onclick="return false;"
						title="슈퍼마리오브라더스" alt="슈퍼마리오브라더스"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">슈퍼마리오브라더스</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="31" movie_cd_group="20032564"
						movie_idx="86989"><a href="#" onclick="return false;"
						title="드림팰리스" alt="드림팰리스"><i class="cgvIcon etc age12">12</i><span
							class="text">드림팰리스</span><span class="sreader"></span></a></li>
					<li class="" data-index="32" movie_cd_group="20032766"
						movie_idx="87057"><a href="#" onclick="return false;"
						title="어디로가고싶으신가요" alt="어디로가고싶으신가요"><i
							class="cgvIcon etc age12">12</i><span class="text">어디로가고싶으신가요</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="33" movie_cd_group="20032953"
						movie_idx="87127"><a href="#" onclick="return false;"
						title="제10회스토리업쇼츠섹션2.대담한대담-너의세계를들여다보면"
						alt="제10회스토리업쇼츠섹션2.대담한대담-너의세계를들여다보면"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">제10회스토리업쇼츠섹션2.대담한대담-너의세계를들여다보면</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="34" movie_cd_group="20032570"
						movie_idx="86995"><a href="#" onclick="return false;"
						title="극장판짱구는못말려-동물소환닌자배꼽수비대" alt="극장판짱구는못말려-동물소환닌자배꼽수비대"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">극장판짱구는못말려-동물소환닌자배꼽수비대</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="35" movie_cd_group="20032571"
						movie_idx="86996"><a href="#" onclick="return false;"
						title="분노의질주-라이드오어다이" alt="분노의질주-라이드오어다이"><i
							class="cgvIcon etc age15">15</i><span class="text">분노의질주-라이드오어다이</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="36" movie_cd_group="20032884"
						movie_idx="87098"><a href="#" onclick="return false;"
						title="제10회스토리업쇼츠섹션1....좋아하세요" alt="제10회스토리업쇼츠섹션1....좋아하세요"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">제10회스토리업쇼츠섹션1....좋아하세요</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="37" movie_cd_group="20030214"
						movie_idx="86099"><a href="#" onclick="return false;"
						title="[아트&amp;다이닝]나의사랑,나의파리" alt="[아트&amp;다이닝]나의사랑,나의파리"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">[아트&amp;다이닝]나의사랑,나의파리</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="38" movie_cd_group="20031991"
						movie_idx="86825"><a href="#" onclick="return false;"
						title="아기공룡둘리-얼음별대모험리마스터링" alt="아기공룡둘리-얼음별대모험리마스터링"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">아기공룡둘리-얼음별대모험리마스터링</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="39" movie_cd_group="20032810"
						movie_idx="87070"><a href="#" onclick="return false;"
						title="익스트림페스티벌" alt="익스트림페스티벌"><i class="cgvIcon etc age12">12</i><span
							class="text">익스트림페스티벌</span><span class="sreader"></span></a></li>
					<li class="" data-index="40" movie_cd_group="20032903"
						movie_idx="87105"><a href="#" onclick="return false;"
						title="위대한작은농장" alt="위대한작은농장"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">위대한작은농장</span><span class="sreader"></span></a></li>
					<li class="" data-index="41" movie_cd_group="20032650"
						movie_idx="87014"><a href="#" onclick="return false;"
						title="블랙워터-어비스" alt="블랙워터-어비스"><i class="cgvIcon etc age15">15</i><span
							class="text">블랙워터-어비스</span><span class="sreader"></span></a></li>
					<li class="" data-index="42" movie_cd_group="20032768"
						movie_idx="87058"><a href="#" onclick="return false;"
						title="[사이다경제]1분투자로1천만원아낀다!<부동산절세무작정따라하기>저자특강"
						alt="[사이다경제]1분투자로1천만원아낀다!<부동산절세무작정따라하기>저자특강"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">[사이다경제]1분투자로1천만원아낀다!&lt;부동산절세무작정따라하기&gt;저자특강</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="43" movie_cd_group="20032920"
						movie_idx="87107"><a href="#" onclick="return false;"
						title="[인사이터XCGV]마케터의chatGPT활용법" alt="[인사이터XCGV]마케터의chatGPT활용법"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">[인사이터XCGV]마케터의chatGPT활용법</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="44" movie_cd_group="20029597"
						movie_idx="85861"><a href="#" onclick="return false;"
						title="[콘서트&amp;다이닝]피카소의식탁" alt="[콘서트&amp;다이닝]피카소의식탁"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">[콘서트&amp;다이닝]피카소의식탁</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="45" movie_cd_group="20032579"
						movie_idx="86997"><a href="#" onclick="return false;"
						title="사랑하는당신에게" alt="사랑하는당신에게"><i class="cgvIcon etc age12">12</i><span
							class="text">사랑하는당신에게</span><span class="sreader"></span></a></li>
					<li class="" data-index="46" movie_cd_group="20032653"
						movie_idx="87017"><a href="#" onclick="return false;"
						title="카일리블루스" alt="카일리블루스"><i class="cgvIcon etc age12">12</i><span
							class="text">카일리블루스</span><span class="sreader"></span></a></li>
					<li class="" data-index="47" movie_cd_group="20032275"
						movie_idx="86910"><a href="#" onclick="return false;"
						title="드림" alt="드림"><i class="cgvIcon etc age12">12</i><span
							class="text">드림</span><span class="sreader"></span></a></li>
					<li class="" data-index="48" movie_cd_group="20032728"
						movie_idx="87044"><a href="#" onclick="return false;"
						title="이윽고바다에닿다" alt="이윽고바다에닿다"><i class="cgvIcon etc age12">12</i><span
							class="text">이윽고바다에닿다</span><span class="sreader"></span></a></li>
					<li class="" data-index="49" movie_cd_group="20032850"
						movie_idx="87083"><a href="#" onclick="return false;"
						title="김재훈의피.엔.오" alt="김재훈의피.엔.오"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">김재훈의피.엔.오</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="50" movie_cd_group="20032395"
						movie_idx="86940"><a href="#" onclick="return false;"
						title="빈필하모닉정기연주회-헤르베르트블롬슈테트&amp;레오니다스카바코스"
						alt="빈필하모닉정기연주회-헤르베르트블롬슈테트&amp;레오니다스카바코스"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">빈필하모닉정기연주회-헤르베르트블롬슈테트&amp;레오니다스카바코스</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="51" movie_cd_group="20032892"
						movie_idx="87101"><a href="#" onclick="return false;"
						title="[푸치니오페라:세여인의변신]나비부인" alt="[푸치니오페라:세여인의변신]나비부인"><i
							class="cgvIcon etc age12">12</i><span class="text">[푸치니오페라:세여인의변신]나비부인</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="52" movie_cd_group="20032844"
						movie_idx="87077"><a href="#" onclick="return false;"
						title="실버맨" alt="실버맨"><i class="cgvIcon etc age12">12</i><span
							class="text">실버맨</span><span class="sreader"></span></a></li>
					<li class="" data-index="53" movie_cd_group="20032565"
						movie_idx="86990"><a href="#" onclick="return false;"
						title="말이야바른말이지" alt="말이야바른말이지"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">말이야바른말이지</span><span class="sreader"></span></a></li>
					<li class="" data-index="54" movie_cd_group="20032961"
						movie_idx="87129"><a href="#" onclick="return false;"
						title="믿거나말거나,진짜야" alt="믿거나말거나,진짜야"><i
							class="cgvIcon etc age15">15</i><span class="text">믿거나말거나,진짜야</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="55" movie_cd_group="20032000"
						movie_idx="86828"><a href="#" onclick="return false;"
						title="수라" alt="수라"><i class="cgvIcon etc ageAll">ALL</i><span
							class="text">수라</span><span class="sreader"></span></a></li>
					<li class="" data-index="56" movie_cd_group="20032344"
						movie_idx="86921"><a href="#" onclick="return false;"
						title="치치핑핑의쿵쿵따탐험대" alt="치치핑핑의쿵쿵따탐험대"><i
							class="cgvIcon etc ageAll">ALL</i><span class="text">치치핑핑의쿵쿵따탐험대</span><span
							class="sreader"></span></a></li>
					<li class="" data-index="57" movie_cd_group="20032846"
						movie_idx="87079"><a href="#" onclick="return false;"
						title="하나님의마음" alt="하나님의마음"><i class="cgvIcon etc age12">12</i><span
							class="text">하나님의마음</span><span class="sreader"></span></a></li>
					<li class="" data-index="58" movie_cd_group="20026641"
						movie_idx="84579"><a href="#" onclick="return false;"
						title="학교가는길" alt="학교가는길"><i class="cgvIcon etc age12">12</i><span
							class="text">학교가는길</span><span class="sreader"></span></a></li>
					<li class="" data-index="59" movie_cd_group="20032843"
						movie_idx="87076"><a href="#" onclick="return false;"
						title="206-사라지지않는" alt="206-사라지지않는"><i
							class="cgvIcon etc age12">12</i><span class="text">206-사라지지않는</span><span
							class="sreader"></span></a></li>
				</ul>
				<div class="pane pane-y"
					style="display: block; opacity: 1; visibility: visible;">
					<div class="slider slider-y" style="height: 50px; top: 24.3917px;"></div>
				</div>
				<div class="pane pane-x"
					style="display: none; opacity: 1; visibility: visible;">
					<div class="slider slider-x" style="width: 50px;"></div>
				</div>
			</div>
			<div class="selectbox-movie-type" style="display: none;">
				<a href="#" onclick="closeSelectboxMovieType();return false;"
					class="btn-close">영화속성 레이어 닫기</a>
				<ul>
					<li id="sbmt_all" class="GROUP1 ALL"><a data-type="ALL"
						href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">전체</a></li>
					<li id="sbmt_digital" class="GROUP1 DIGITAL proplist"><a
						data-type="DIGITAL" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">2D</a></li>
					<li id="sbmt_imax" class="GROUP1 IMAX proplist"><a
						data-type="IMAX" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">IMAX</a></li>
					<li id="sbmt_4dx" class="GROUP1 4DX proplist"><a
						data-type="4DX" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">4DX</a></li>
					<li id="sbmt_soundx" class="GROUP1 SOUNDX proplist"><a
						data-type="SOUNDX" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">SOUNDX</a></li>
					<li id="sbmt_screenx" class="GROUP1 SCREENX proplist"><a
						data-type="SCREENX" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">SCREENX</a></li>
					<li id="sbmt_3d" class="GROUP1 3D proplist"><a data-type="3D"
						href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">3D</a></li>
					<li id="sbmt_dubbing" class="GROUP2 DUBBING proplist"><a
						data-type="DUBBING" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">더빙</a></li>
					<li id="sbmt_subtitle" class="GROUP2 SUBTITLES proplist"><a
						data-type="SUBTITLES" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">자막</a></li>
					<li id="sbmt_lovemom" class="GROUP3 LOVEMOM proplist"><a
						data-type="LOVEMOM" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">러브맘</a></li>
					<li id="sbmt_liveTalk" class="GROUP3 LIVETALK proplist"><a
						data-type="LIVETALK" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">스타라이브톡</a></li>
					<li id="sbmt_wheelchairAccess"
						class="GROUP3 WHEELCHAIRACCESS proplist"><a
						data-type="WHEELCHAIRACCESS" href="#"
						onclick="SelectboxMovieTypeClickListener(event);return false;">배리어프리</a></li>
				</ul>
			</div>
			<div class="col-head" id="skip_date_list">
				<h3 class="sreader">날짜</h3>
				<a href="#" onclick="return false;" class="skip_to_something">날짜
					건너뛰기</a>
			</div>
			<div class="col-body" style="height: 565px;">
				<!-- 날짜선택 -->
				<div class="date-list nano has-scrollbar has-scrollbar-y"
					id="date_list">
					<ul class="content scroll-y" tabindex="-1" style="right: -17px;">
						<div>
							<li class="month dimmed"><div>
									<span class="year">2023</span><span class="month">6</span>
									<div></div>
								</div></li>
							<li data-index="0" date="20230616" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">금</span><span
									class="day">16</span><span class="sreader"></span></a></li>
							<li data-index="1" date="20230617" class="day day-sat"><a
								href="#" onclick="return false;"><span class="dayweek">토</span><span
									class="day">17</span><span class="sreader"></span></a></li>
							<li data-index="2" date="20230618" class="day day-sun"><a
								href="#" onclick="return false;"><span class="dayweek">일</span><span
									class="day">18</span><span class="sreader"></span></a></li>
							<li data-index="3" date="20230619" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">월</span><span
									class="day">19</span><span class="sreader"></span></a></li>
							<li data-index="4" date="20230620" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">화</span><span
									class="day">20</span><span class="sreader"></span></a></li>
							<li data-index="5" date="20230621" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">수</span><span
									class="day">21</span><span class="sreader"></span></a></li>
							<li data-index="6" date="20230622" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">목</span><span
									class="day">22</span><span class="sreader"></span></a></li>
							<li data-index="7" date="20230623" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">금</span><span
									class="day">23</span><span class="sreader"></span></a></li>
							<li data-index="8" date="20230624" class="day day-sat"><a
								href="#" onclick="return false;"><span class="dayweek">토</span><span
									class="day">24</span><span class="sreader"></span></a></li>
							<li data-index="9" date="20230625" class="day day-sun"><a
								href="#" onclick="return false;"><span class="dayweek">일</span><span
									class="day">25</span><span class="sreader"></span></a></li>
							<li data-index="10" date="20230626" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">월</span><span
									class="day">26</span><span class="sreader"></span></a></li>
							<li data-index="11" date="20230627" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">화</span><span
									class="day">27</span><span class="sreader"></span></a></li>
							<li data-index="12" date="20230629" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">목</span><span
									class="day">29</span><span class="sreader"></span></a></li>
							<li data-index="13" date="20230630" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">금</span><span
									class="day">30</span><span class="sreader"></span></a></li>
							<li class="month dimmed"><div>
									<span class="year">2023</span><span class="month">7</span>
									<div></div>
								</div></li>
							<li data-index="14" date="20230701" class="day day-sat"><a
								href="#" onclick="return false;"><span class="dayweek">토</span><span
									class="day">1</span><span class="sreader"></span></a></li>
							<li data-index="15" date="20230704" class="day"><a href="#"
								onclick="return false;"><span class="dayweek">화</span><span
									class="day">4</span><span class="sreader"></span></a></li>
						</div>
					</ul>
					<div class="pane pane-y"
						style="display: block; opacity: 1; visibility: visible;">
						<div class="slider slider-y" style="height: 50px; top: 0px;"></div>
					</div>
					<div class="pane pane-x"
						style="display: none; opacity: 1; visibility: visible;">
						<div class="slider slider-x" style="width: 50px;"></div>
					</div>
				</div>
			</div>
			<div class="col-head" id="skip_time_list">
				<h3 class="sreader">시간</h3>
				<a href="#" class="skip_to_something"
					onclick="skipToSomething('tnb_step_btn_right');return false;">시간선택
					건너뛰기</a>
			</div>
			<div class="col-body" style="height: 565px;">
				<!-- 시간선택 -->
				<div class="time-option">
					<span class="morning">모닝</span><span class="night">심야</span>
				</div>
				<div class="placeholder hidden">영화, 극장, 날짜를 선택해주세요.</div>
				<div class="time-list nano has-scrollbar">
					<div class="content scroll-y" tabindex="-1" style="right: -17px;">
						<div class="theater" screen_cd="011" movie_cd="20032729">
							<span class="title"><span class="name">2D</span><span
								class="floor">씨네앤포레 (Laser)</span><span class="seatcount">(총48석)</span></span>
							<ul>
								<li data-index="0" data-remain_seat="48" play_start_tm="2120"
									screen_cd="011" movie_cd="20032729" play_num="5"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>21:20</span></span><span class="count">44석</span>
										<div class="sreader">종료시간 23:15</div> <span
										class="sreader mod"></span></a></li>
							</ul>
						</div>
						<div class="theater" screen_cd="003" movie_cd="20032729">
							<span class="title"><span class="name">2D</span><span
								class="floor">3관 (Laser)</span><span class="seatcount">(총218석)</span></span>
							<ul>
								<li data-index="1" data-remain_seat="218" play_start_tm="1145"
									screen_cd="003" movie_cd="20032729" play_num="2"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>11:45</span></span><span class="count">201석</span>
										<div class="sreader">종료시간 13:40</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="2" data-remain_seat="218" play_start_tm="1400"
									screen_cd="003" movie_cd="20032729" play_num="3"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>14:00</span></span><span class="count">198석</span>
										<div class="sreader">종료시간 15:55</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="3" data-remain_seat="218" play_start_tm="1615"
									screen_cd="003" movie_cd="20032729" play_num="4"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>16:15</span></span><span class="count">205석</span>
										<div class="sreader">종료시간 18:10</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="4" data-remain_seat="218" play_start_tm="1830"
									screen_cd="003" movie_cd="20032729" play_num="5"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>18:30</span></span><span class="count">184석</span>
										<div class="sreader">종료시간 20:25</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="5" data-remain_seat="218" play_start_tm="2045"
									screen_cd="003" movie_cd="20032729" play_num="6"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>20:45</span></span><span class="count">196석</span>
										<div class="sreader">종료시간 22:40</div> <span
										class="sreader mod"></span></a></li>
							</ul>
						</div>
						<div class="theater" screen_cd="005" movie_cd="20032729">
							<span class="title"><span class="name">2D</span><span
								class="floor">5관 (컴포트석, Laser)</span><span class="seatcount">(총80석)</span></span>
							<ul>
								<li data-index="6" data-remain_seat="80" play_start_tm="1030"
									screen_cd="005" movie_cd="20032729" play_num="1"
									class="morning disabled"><a class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>10:30</span></span><span class="count">예매종료</span>
										<div class="sreader">종료시간 12:25</div> <span
										class="sreader mod"> 조조 선택불가</span></a></li>
							</ul>
						</div>
						<div class="theater" screen_cd="008" movie_cd="20032729">
							<span class="title"><span class="name">2D</span><span
								class="floor">8관 (컴포트석, Laser)</span><span class="seatcount">(총80석)</span></span>
							<ul>
								<li data-index="7" data-remain_seat="80" play_start_tm="1300"
									screen_cd="008" movie_cd="20032729" play_num="2"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>13:00</span></span><span class="count">80석</span>
										<div class="sreader">종료시간 14:55</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="8" data-remain_seat="80" play_start_tm="1515"
									screen_cd="008" movie_cd="20032729" play_num="3"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>15:15</span></span><span class="count">79석</span>
										<div class="sreader">종료시간 17:10</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="9" data-remain_seat="80" play_start_tm="1730"
									screen_cd="008" movie_cd="20032729" play_num="4"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;" title=""><span
										class="time"><span>17:30</span></span><span class="count">80석</span>
										<div class="sreader">종료시간 19:25</div> <span
										class="sreader mod"></span></a></li>
								<li data-index="10" data-remain_seat="80" play_start_tm="2205"
									screen_cd="008" movie_cd="20032729" play_num="6"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>22:05</span></span><span class="count">80석</span>
										<div class="sreader">종료시간 24:00</div> <span
										class="sreader mod"></span></a></li>
							</ul>
						</div>
						<div class="theater" screen_cd="010" movie_cd="20032729"
							style="border: none;">
							<span class="title"><span class="name">2D</span><span
								class="floor">10관 (Laser)</span><span class="seatcount">(총184석)</span></span>
							<ul>
								<li data-index="11" data-remain_seat="184" play_start_tm="2300"
									screen_cd="010" movie_cd="20032729" play_num="5"><a
									class="button" href="#"
									onclick="screenTimeClickListener(event);return false;"><span
										class="time"><span>23:00</span></span><span class="count">178석</span>
										<div class="sreader">종료시간 24:55</div> <span
										class="sreader mod"></span></a></li>
							</ul>
						</div>
					</div>
					<div class="pane pane-y"
						style="display: none; opacity: 1; visibility: visible;">
						<div class="slider slider-y" style="height: 50px;"></div>
					</div>
					<div class="pane pane-x"
						style="display: none; opacity: 1; visibility: visible;">
						<div class="slider slider-x" style="width: 50px;"></div>
					</div>
				</div>
			</div>
</body>
</html>
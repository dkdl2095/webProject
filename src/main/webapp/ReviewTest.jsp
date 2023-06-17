<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5조</title>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style type="text/css">
  /* 창 여분 없애기 */
  body {
    margin: 0;
  }

  /* 전체 배경화면 색상 */
  .wrapper_div {
    background-color: #f5f5f5;
    height: 100%;
  }

  /* 팝업창 제목 */
  .subject_div {
    width: 100%;
    background-color: #7b8ed1;
    color: white;
    padding: 10px;
    font-weight: bold;
  }

  /* 컨텐츠, 버튼 영역 padding */
  .input_wrap {
    padding: 30px;
  }

  .btn_wrap {
    padding: 5px 30px 30px 30px;
    text-align: center;
  }

  /* 버튼 영역 */
  .cancel_btn {
    margin-right: 5px;
    display: inline-block;
    width: 130px;
    background-color: #5e6b9f;
    padding-top: 10px;
    height: 27px;
    color: #fff;
    font-size: 14px;
    line-height: 18px;
  }

  .enroll_btn {
    display: inline-block;
    width: 130px;
    background-color: #7b8ed1;
    padding-top: 10px;
    height: 27px;
    color: #fff;
    font-size: 14px;
    line-height: 18px;
  }

  /* 영화제목 영역 */
  .movietilte_div h2 {
    margin: 0;
  }

  /* 평점 영역 */
  .rating_div {
    padding-top: 10px;
  }

  .rating_div h4 {
    margin: 0;
  }

  .slider-container {
    margin: 15px;
    width: 300px;
  }

  .slider-value {
    text-align: center;
    margin-top: 10px;
    font-size: 16px;
    font-weight: 600;
  }

  /* 리뷰 작성 영역 */
  .content_div {
    padding-top: 10px;
  }

  .content_div h4 {
    margin: 0;
  }

  textarea {
    width: 100%;
    height: 100px;
    border: 1px solid #dadada;
    padding: 12px 8px 12px 8px;
    font-size: 15px;
    color: #a9a9a9;
    resize: none;
    margin-top: 10px;
  }
</style>
</head>
<body>

<div class="wrapper_div">
  <div class="subject_div">
    리뷰 등록
  </div>
</div>

<div class="input_wrap">
  <div class="bookName_div">
    <h2>${bookInfo.bookName}</h2>
  </div>
  <div class="rating_div">
    <h4>평점</h4>
    <div class="slider-container">
      <div id="rating-slider"></div>
      <div class="slider-value" id="slider-value">0</div>
    </div>
  </div>
  <div class="content_div">
    <h4>리뷰</h4>
    <textarea name="content"></textarea>
  </div>
</div>

<div class="btn_wrap">
  <a class="cancel_btn">취소</a>
  <a class="enroll_btn">등록</a>
</div>

<script>
  /* 취소 버튼 */
  $(".cancel_btn").on("click", function (e) {
    window.close();
  });

  /* 등록 버튼 */
  $(".enroll_btn").on("click", function (e) {
    const bookId = '${bookInfo.bookId}';
    const memberId = '${memberId}';
    const rating = $("#rating-slider").slider("value");
    const content = $("textarea").val();

    const data = {
      movietitle: bookId, //영화제목
      memberId: memberId, //작성자
      rating: rating,     //별점
      content: content 	  //리뷰내용
    };
/*	
    $.ajax({
      data: data,
      type: 'POST',
      url: '/Review/enroll',
      success: function (result) {
        window.close();
      }
    });
  });
*/ //취소 부분 하지만 리뷰를 저장하는 ReviewDTO를 완성 못함..ㅠ
  /* 슬라이더 설정 */
  $(function () {
    $("#rating-slider").slider({
      range: "min",
      value: 0,
      min: 0,
      max: 5,
      step: 1,
      slide: function (event, ui) {
        $("#slider-value").text(ui.value);
      }
    });
  });
</script>
</body>
</html>
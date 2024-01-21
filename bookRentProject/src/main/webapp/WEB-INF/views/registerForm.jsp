<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- css 경로 설정 -->
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<title>도서 고객 및 대여관리 프로그램 ver 1.0</title>
<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<!-- 핸드폰번호 유효성 검사 -->
<script type="text/javascript">
	function phChk(obj) {
		var phoneRule = /^(01[016789]{1})*-[0-9]{3,4}*-[0-9]{4}$/;
		if(phoneRule )
	}
</script>
<body>
	<header><h2>도서 고객 및 대여관리 프로그램 ver 1.0</h2></header>
	<hr>
	<nav class="menu">
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item"><a href="register">고객등록</a></li>
			<li class="nav-item"><a href="custList">고객목록조회/수정</a></li>
			<li class="nav-item"><a href="rentList">고객대여리스트</a></li>
			<li class="nav-item"><a href="rentAmount">고객대여금액조회</a></li>
			<li class="nav-item"><a href="/bookRentProject/">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<form action="registerPro" method="post">
		<section>
			<h5>고객등록</h5>
			<div class="mb-3">
				<label class="form-label">고객번호</label>
				<input class="form-control" type="text" readonly placeholder="${cust_no }">
			</div>
			<div class="mb-3">
				<label class="form-label">고객이름</label>
				<input class="form-control" type="text" name="cust_name" placeholder="한글 2~8자만 입력가능합니다" onkeyup="">
			</div>
			<div class="mb-3">
				<label class="form-label">전화번호</label>
				<input class="form-control" type="tel" name="phone" placeholder="010-0000-0000형식으로 입력하세요" onkeyup="phChk(this)">
			</div>
			<div class="mb-3">
				<label class="form-label">이메일</label>
				<input class="form-control" type="email" name="cust_email" onkeyup="onlyEngNum(this)">
			</div>
			<div class="mb-3">
				<label class="form-label">고객등급</label>
				<select class="form-select" name="grade" required>
					<option value="">고객등급을 선택해주세요</option>
					<option value="P">P</option>
					<option value="G">G</option>
					<option value="S">S</option>
				</select>
			</div>
			<div class="mb-3" align="center">
				<button class="btn btn-sm btn-outline-dark" type="submit" onclick="chk">등록</button>
				<button class="btn btn-sm btn-outline-dark" type="reset">취소</button>
			</div>
		</section>
	</form>
	<br>
	<div class="container">
		<footer>
			<p class="text-center text-body-secondary">나도 할 수 있는 Java & Spring 웹개발 종합반(정채원)</p>
		</footer>
	</div>
</body>
</html>
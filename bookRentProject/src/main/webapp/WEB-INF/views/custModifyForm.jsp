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
<!-- 자바스크립트, jQuery, AJAX -->
<!-- 연락처 숫자만 입력되는 유효성 검사 -->
<script type="text/javascript">
	function uncomma(str) {
	    str = String(str);
	    return str.replace(/[^\d]+/g, '');
	} 
	 
	function inputOnlyNumberFormat(obj) {
	    obj.value = onlynumber(uncomma(obj.value));
	}
	 
	function onlynumber(str) {
	    str = String(str);
	    //alert("숫자만 입력가능합니다.")
	    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g,'$1') + alert;
	}
</script>

<script type="text/javascript">
	var emailStatus =false; 
	
	//===========이메일 입력 시 영어, 숫자만 입력 가능===============
	function onlyEngNum(str) {
		var regType1 = /^[A-Za-z0-9+]*$/; // regex : 영어, 숫자만 입력
		if (regType1.test(str.value)) { //영어, 숫자만 입력했을 때
		}else{//영어, 숫자를 제외한 값 입력 시
			str.value = ""; // ""으로 초기화
			alert("영어와 숫자만 입력가능합니다.")
		}
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
			<li class="nav-item"><a href="/">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<form action="custModify" method="post" enctype="multipart/form-data">
		<section>
			<h5>고객정보수정</h5>
			<div class="mb-3">
				<label class="form-label">고객번호</label>
				<input type="text" readonly class="form-control" placeholder="${cust.cust_no }">
			</div>
			<div class="mb-3">
				<label class="form-label">고객이름</label>
				<input class="form-control" type="text" name="cust_name" value="${cust.cust_name }">
			</div>
			<div class="mb-3">
				<label class="form-label">전화번호</label>
				<input class="form-control" type="tel" name="phone" value="${cust.phone }">
			</div>
			<div class="mb-3">
				<label class="form-label">이메일</label>
				<input class="form-control" type="email" value="${cust.cust_email }">
			</div>
			<div class="mb-3">
				<label class="form-label">고객등급</label>
				<select class="form-select" name="grade" required>
					<option value="">고객등급을 선택해주세요</option>
					<option <c:if test="${cust.grade eq 'P'}">selected</c:if> value="P">P</option>
					<option <c:if test="${cust.grade eq 'G'}">selected</c:if> value="G">G</option>
					<option <c:if test="${cust.grade eq 'S'}">selected</c:if> value="S">S</option>
				</select>
			</div>
			<div class="mb-3" align="center">
				<button class="btn btn-sm btn-outline-dark" type="submit" onclick="">수정</button>
				<button class="btn btn-sm btn-outline-dark" onclick="location.href='???????????????'">조회</button> 
			</div>
		</section>
	</form>
	<div class="container">
		<footer>
			<p class="text-center text-body-secondary">나도 할 수 있는 Java & Spring 웹개발 종합반(정채원)</p>
		</footer>
	</div>
</body>
</html>
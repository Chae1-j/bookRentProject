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
<title>도서 고객 및 대여관리 프로그램 ver 1.0</title>
<link rel="stylesheet" href="${path}/resources/css/main.css" type="text/css">
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
	<header ><h2 align="center">도서 고객 및 대여관리 프로그램 ver 1.0</h2></header>
		<hr>
	<nav align="center">
		<ul>
			<li><a href="register">고객등록</a></li>
			<li><a href="">고객목록조회/수정</a></li>
			<li><a href="">고객대여리스트</a></li>
			<li><a href="">고객대여금액조회</a></li>
			<li><a href="">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<form action="" method="post" enctype="multipart/form-data">
		<section align= "center">
			<div>
				<label>고객번호</label>
				<label>${cust_no }</label>
			</div>
			<div>
				<label>고객이름</label>
				<input type="text" name="cust_name" placeholder="한글 2~8자만 입력가능합니다" onkeyup="">
			</div>
			<div>
				<label>전화번호</label>
				<input type="tel" name="phone" placeholder="숫자만 입력해주세요" onkeyup="inputOnlyNumberFormat(this)">
			</div>
			<div>
				<label>이메일</label>
				<input type="email" name="cust_email" onkeyup="onlyEngNum(this)">
			</div>
			<div>
				<label>고객등급</label>
				<select name="grade" required>
					<option value="">고객등급을 선택해주세요</option>
					<option value="P">P</option>
					<option value="G">G</option>
					<option value="S">S</option>
				</select>
			</div>
			<div>
				<button type="submit">등록</button>
				<button type="reset">취소</button>
			</div>
		</section>
	</form>
	<footer>
		<div><h5 align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(정채원)</h5></div>
	</footer>
</body>
</html>
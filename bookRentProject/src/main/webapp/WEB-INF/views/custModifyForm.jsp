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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/main.css" type="text/css">
<title>도서 고객 및 대여관리 프로그램 ver 1.0</title>
<script type="text/javascript">
	function nameChk(obj) {
		var nameValue = obj.value.trim(); // 입력값에서 앞뒤 공백을 제거
		var koreanRegex = /^[가-힣]{2,8}$/; // 한글 2~8자 패턴
	
		if (!koreanRegex.test(nameValue)) {
	    	alert("올바른 이름 형식이 아닙니다. (한글 2~8자)");
	    	obj.focus();
		}
	}
</script>
<!-- 핸드폰번호 유효성 검사 -->
<script type="text/javascript">
	function phChk(obj) {
        var phoneNumber = document.getElementsByName("phone")[0].value;
        var phoneRegex = /^\d{3}-\d{4}-\d{4}$/;
        
        if (!phoneRegex.test(phoneNumber)) {
            alert("올바른 핸드폰 번호 형식이 아닙니다. (예: xxx-xxxx-xxxx)");
            obj.focus(); 
        }
    }
</script>
<script>
	function emailChk(obj) {
		var email = document.getElementsByName("cust_email")[0].value.trim();
		var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
	
		if (email === "") {
			alert("이메일 주소를 입력하세요.");
			document.getElementsByName("cust_email")[0].focus();
		} else if (!emailRegex.test(email)) {
			alert("올바른 이메일 주소 형식이 아닙니다.");
			document.getElementsByName("cust_email")[0].focus();
		}
	}
</script>
<script>
	var selectBox = document.getElementsByName("grade")[0];
	var selectedValue = selectBox.options[selectBox.selectedIndex].value;
	
	if (selectedValue === "") {
		alert("고객등급을 선택하세요.");
		selectBox.focus();
		return false; // 폼 전송을 막기 위해 false를 반환
	}
	
	alert("셀렉트 박스가 유효합니다.");
	return true; // 폼 전송을 허용하기 위해 true를 반환
	}
</script>
<script>
    function validName() {
    	var name = document.getElementsByName("cust_name")[0].value;

        if (name === "") {
            alert("고객이름이 입력되지 않았습니다.");
            document.getElementsByName("cust_name")[0].focus();
            return false; // 폼 전송을 막기 위해 false를 반환
        }

        return true; // 폼 전송을 허용하기 위해 true를 반환
    }
</script>
<script>
  let msg = "${msg}";
  if(msg=="failed") alert("고객 정보 수정에 실패하였습니다. 다시 시도해주세요.");
</script>
</head>
<body>
	<header><h3>도서 고객 및 대여관리 프로그램 ver 1.0</h3></header>
	<nav class="menu">
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item"><a href="register">고객등록</a></li>
			<li class="nav-item"><a href="custList">고객목록조회/수정</a></li>
			<li class="nav-item"><a href="rentList">고객대여리스트</a></li>
			<li class="nav-item"><a href="rentAmount">고객대여금액조회</a></li>
			<li class="nav-item"><a href="/bookRentProject/">홈으로</a></li>
		</ul>
	</nav>
	<form action="custModify" method="post" onsubmit="return validName()">
		<section>
			<h5>고객정보수정</h5>
			<div class="content">
				<div class="mb-3">
					<label class="form-label">고객번호</label>
					<input type="text" readonly class="form-control" placeholder="${cust.cust_no }" onchange="nameChk(this)">
					<input type="hidden" name="cust_no" value="${cust.cust_no }">
				</div>
				<div class="mb-3">
					<label class="form-label">고객이름</label>
					<input class="form-control" type="text" name="cust_name" value="${cust.cust_name }">
				</div>
				<div class="mb-3">
					<label class="form-label">전화번호</label>
					<input class="form-control" type="tel" name="phone" value="${cust.phone }" onchange="phChk(this)">
				</div>
				<div class="mb-3">
					<label class="form-label">이메일</label>
					<input class="form-control" type="email" name="cust_email" value="${cust.cust_email }" onchange="emailChk(this)">
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
					<button class="btn btn-sm btn-outline-dark" type="submit" onclick="validName">수정</button>
					<button class="btn btn-sm btn-outline-dark" type="button" onclick="location.href='custList'">조회</button> 
				</div>
			</div>
		</section>
	</form>
	<div class="container">
		<footer class="card-footer text-body-secondary">	
			<p class="text-center">나도 할 수 있는 Java & Spring 웹개발 종합반(정채원)</p>
		</footer>
	</div>
</body>
</html>
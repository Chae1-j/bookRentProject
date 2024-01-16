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
<body>
	<header ><h2 align="center">도서 고객 및 대여관리 프로그램 ver 1.0</h2></header>
	<hr>
	<nav>
		<ul>
			<li><a href="register">고객등록</a></li>
			<li><a href="">고객목록조회/수정</a></li>
			<li><a href="">고객대여리스트</a></li>
			<li><a href="">고객대여금액조회</a></li>
			<li><a href="">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<section align= "center">
		<div>
			도서 고객 및 대여관리 프로그램<br>
			프로그램 작성순서<br>
			1. 고객정보 테이블을 생성 한다.<br>
			2. 대여정보 테이블을 생성 한다.<br>
			3. 고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.<br>
			4. 고객정보 입력 화면 프로그램을 작성한다.<br>
			5. 고객정보 조회 프로그램을 작성한다.<br>
			6. 고객대여리스트를 조회하는 프로그램을 작성한다.<br>
			7. 고객별 대여금액을 조회하는 프로그램을 작성한다.<br>
		</div>
	</section>
	<footer>
		<div><h5 align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(정채원)</h5></div>
	</footer> 
</body>
</html>
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
<link rel="stylesheet" href="${path}/resources/css/style.css" type="text/css">
</head>
<body>
	<header ><h2 align="center">도서 고객 및 대여관리 프로그램 ver 1.0 ${path }</h2></header>
	<hr>
	<nav align="center">
		<ul>
			<li><a href="register">고객등록</a></li>
			<li><a href="custList">고객목록조회/수정</a></li>
			<li><a href="rentList">고객대여리스트</a></li>
			<li><a href="rentAmount">고객대여금액조회</a></li>
			<li><a href="/bookRentProject">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<form action="" method="post" enctype="multipart/form-data">
		<section align= "center">
		<h3>고객목록 조회/수정</h3>
			<table class="custList" border=1 align="center">
				<tr>
					<th>고객번호</th>
					<th>고객이름</th>
					<th>고객등급</th>
					<th>총대여금액</th>
				</tr>
				<c:forEach var="cust" items="${custList }" varStatus="status">
				<!-- status 사용안할 수도 있음. mapper에서 테이블 조인함 -->
s					<tr>
						<td>${cust.cust_no }</td>
						<td>${cust.cust_name }</td>
						<td>${cust.grade }</td>
						<td>${rent[status.index].rent_price }</td>
					</tr>
				</c:forEach>
			</table>
		</section>
	</form>
	<footer>
		<div><h5 align="center">나도 할 수 있는 Java & Spring 웹 개발 종합반(정채원)</h5></div>
	</footer>
</body>
</html>
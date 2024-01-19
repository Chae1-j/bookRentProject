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
<body>
	<header><h2>도서 고객 및 대여관리 프로그램 ver 1.0</h2></header>
	<hr>
	<nav class="menu">
		<ul class="nav nav-pills nav-fill">
			<li class="nav-item"><a href="register">고객등록</a></li>
			<li class="nav-item"><a href="custList">고객목록조회/수정</a></li>
			<li class="nav-item"><a href="rentList">고객대여리스트</a></li>
			<li class="nav-item"><a href="rentAmount">고객대여금액조회</a></li>
			<li class="nav-item"><a href="">홈으로</a></li>
		</ul>
	</nav>
	<hr>
	<section>
	<h5>고객목록 조회/수정</h5>
		<table class="table table-sm">
			<tr>
				<th>고객번호</th>
				<th>고객이름</th>
				<th>전화번호</th>
				<th>가입일자</th>
				<th>이메일</th>
				<th>고객등급</th>
			</tr>
			<c:forEach var="cust" items="${custList }" >
					<tr>
						<td><a href="">${cust.cust_no }</a></td>
					<td>${cust.cust_name }</td>
					<td>${cust.phone }</td>
					<td>${cust.phone }</td>
					<td>${cust.cust_email }</td>
					<td>
						<c:if test="${cust.grade eq 'P' }">Platinum</c:if>
						<c:if test="${cust.grade eq 'G' }">Gold</c:if>
						<c:if test="${cust.grade eq 'S' }">Silver</c:if>
					</td>
				</tr>
			</c:forEach>
		</table>
	</section>
	<div class="container">
		<footer>
			<p class="text-center text-body-secondary">나도 할 수 있는 Java & Spring 웹개발 종합반(정채원)</p>
		</footer>
	</div>
</body>
</html>
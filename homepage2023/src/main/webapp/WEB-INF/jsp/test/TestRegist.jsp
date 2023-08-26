<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Language" content="ko">
<title>데이터 가져오기~</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<style>
table {
	border-collapse: collapse;
}

th {
	font-weight: bold;
}

th, td {
	padding: 5px;
	border: 1px solid #000;
}

a {
	text-decoration: underline;
	margin: 5px;
}
</style>
</head>
<body>
	<!-- BBS Style -->
	<link href="/asset/BBSTMP_0000000000001/style.css" rel="stylesheet" />
	<!-- 공통 Style -->
	<link href="/asset/LYTTMP_0000000000000/style.css" rel="stylesheet" />
	<c:choose>
		<c:when test="${not empty result.testId}">
			<c:set var="actionUrl" value="/test/update.do"/>
		</c:when>
		<c:otherwise>
			<c:set var="actionUrl" value="/test/insert.do"/>
		</c:otherwise>
	</c:choose>

	*등록폼
	<form action="${actionUrl}" method="post" name="testVO">
		<input type="hidden" name="testId" value="${result.testId}" /> 
		<label for="sj">제목</label> <input type="text" id="sj" name="sj"
			value="${result.sj}" placeholder="제목을 입력하세요" /> <br /> 
			<label for="userNm">작성자</label> <input type="text" id="userNm" name="userNm"
			value="${result.userNm}" placeholder="작성자를 입력하세요" /> <br /> <label
			for="cn">내용</label>
		<textarea id="cn" name="cn" placeholder="내용을 입력하세요">
		<c:out value="${result.cn}" /></textarea>
		<br />
		<c:choose>
			<c:when test="${not empty result.testId}">
				<button type="submit">수정</button>
			</c:when>
			<c:otherwise>
				<button type="submit">등록</button>
			</c:otherwise>
		</c:choose>
		<a href="/test/selectList.do">목록</a>
	</form>


</body>
</html>
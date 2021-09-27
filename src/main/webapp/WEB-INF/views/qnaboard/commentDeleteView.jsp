<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="/resources/js/jquery-3.6.0.js"></script>
	<script>
	$(document).ready(function(){
		var formObj = $("form[name='deleteForm']");
		
		$(".cancel_btn").on("click", function() {
			location.href = "/qnaboard/content?boardId=${commentDelete.boardId}"
				+ "&pageNum=${pageNum}";
		})
	})
	
	</script>
</head>
<body>
<!-- Navbar -->
	<jsp:include page="/WEB-INF/views/include/navbar.jsp" />
	
	<div class="boardform">
		<h1>Board Form</h1>
	</div>
	<p></p>



	<div class="hrtag">
		<hr class="my-4">
	</div>
	
	<h3>댓글</h3>
	
	<div>${boardVO.boardId}</div>
	
	<section id="container">
		<form name="deleteForm" role="form" method="post" action="/qnaboard/commentDelete">
			<input type="hidden" name="boardId" value="${commentDelete.boardId}"/>
			<input type="hidden" name="commentId" value="${commentDelete.commentId }"/>
			<input type="hidden" name="pageNum" value="${pageNum }">
	
			<div class="media">
		<i class="fa fa-user fa-5x"
			style="margin: 10px; line-height: 90px; font-size: 80px;"></i>
		<div class="media-body">
			<h4 class="mt-0">${commentDelete.commentId}</h4>
			<p>삭제 하시겠습니까?</p>
			</div>
		</div>
		<div class="btn_box">
			<button type="submit" class="delete_btn">삭제</button>
			<button type="button" class="cancel_btn">취소</button>
		</div>
		</form>
	</section>
<jsp:include page="/WEB-INF/views/include/bottomFooter.jsp" />
	<link rel="stylesheet" type="text/css"
		href="${path}/resources/css/contentstyle.css">
		<script src="/resources/js/jquery-3.6.0.js"></script>
</body>
</html>
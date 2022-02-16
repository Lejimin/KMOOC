<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 링크경로(Head포함) -->
<%@include file="../../module/link.jsp" %>

<body>

<div id="wrapper">
        <%@include file="../../module/header.jsp"%>
        <%@include file="../../module/nav.jsp"%>
</div>

<div class="page-contents">
<h2>공지사항</h2>	

<!-- admin만 허용 -->
<a href="/Notice/post.do">글쓰기</a>
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   <style>
        body{width: 100%; height: 1300px;}
        #wrapper{font-style: normal; font-family: 'Noto Sans KR', 'Malgun Gothic', '맑은 고딕', dotum, sans-serif; font-size: 1rem;  font-weight: normal;}
        header{width: 100%; height: 90px;}
        #logo{width: 230px; height: 70px; position: relative; top: 5px; left: 250px;}
        #search{width: 300px; height: 40px; position: relative; top: -50px; left: 519px;}
        #login{width: 100px; color: #222222; text-decoration: none; font-size: 20px; position: absolute; top: 35px; left: 1270px;}
        #join{width: 100px; color: #5B97E1; text-decoration: none; font-size: 20px; position: absolute; top: 35px; left: 1370px;}

        nav{width: 100%; height: 50px;}
        #menu{list-style: none; padding: 0px;}
        #menu>li{width: 180px; height: 40px; line-height: 40px; text-align: center; display: inline-block; position: relative; top: 0px; left: 210px;}
        #menu>li>a{text-decoration: none; color: #000000;}
        #menu>a{display: block;}
        .sub{display: none; color: #000000; list-style: none; width: 185px; position: relative; top: 35px; left: -20px;}
        .sub>a{text-decoration: none; color: #000000;}
        #menu:hover .sub{display: block; position: absolute;}
        #menunav:hover{height: 240px; background-color: #DAE6F5; transition: 0.4s;}
     
     	#content{margin-left:250px;}
     </style>


<body>

  <div id="wrapper" action="LoginProc.do">
        <header>
            <div>
            <a href="/Home.do"><img src="../resources/img/logo_top.png" id="logo"></a>
            </div>
            <div>
                <input type="search" name="search.." id="search">
            </div>
            <div>
                <a href="/LogoutProc.do" id="login">로그아웃</a></li>
                <a href="/MemberJoin.jsp" id="join"><p><b>회원가입</b></p></a>
            </div>
        </header>
        <nav id="menunav">
            <ul id="menu">
               <li>
                    <a href="#"><b>K-MOOC 소개</b></a>
                    <ul class="sub">
                        <a href="/intro.do"><li>K-MOOC란?</li></a>
                   </ul>
                </li>
                <li>
                    <a href="#"><b>강좌찾기</b></a>
                    <ul class="sub">
                        <a href="/lecture.do"><li>분야별 강좌</li></a>
                        <a href="/lecture2.do"><li>묶음 강좌</li></a>
                        <!-- <a href="/lecture3.do"><li>교양 강좌</li></a>
                        <a href="/lecture4.do"><li>학점은행과정</li></a> -->
                    </ul>
                </li>
                <li>
                    <a href="#"><b>커뮤니티</b></a>
                    <ul class="sub">
                        <!-- <a href="/Notice/list.do"><li>공지사항</li></a>
                        <a href="/news.do"><li>뉴스</li></a>
                        <a href="/mater.do"><li>자료실</li></a> -->
                        <a href="/Board/list.do"><li>자유게시판</li></a>
                    </ul>
                </li>
            </ul>
        </nav>
</div>

<div class="page-contents p-3" id="content">
<!--페이지 위치정보(브레드크럼 사용~) -->
<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/Home.do">Home</a></li>
    <li class="breadcrumb-item"><a href="/Board/list.do">Board</a></li>
    <li class="breadcrumb-item"><a href="/Board/list.do">List</a></li>
    <li class="breadcrumb-item active" aria-current="page">Post</li>
  </ol>
</nav>

<h2>글쓰기</h2>

<%@page import="vo.*" %>
<%
	MemberVO vo= (MemberVO)session.getAttribute("vo");
%>

<form method="post" action="/Board/post.do?flag=false" enctype="multipart/form-data">
	<table class="table w-75">
		<tr>
			<td>아이디</td>
			<td><input name="eamil" class="form-control" value=<%=vo.getEmail() %> disabled></td>
		</tr>
		<tr>
			<td>제 목</td>
			<td><input name="subject" class="form-control"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content" rows="10" cols="50" class="form-control"></textarea></td>
		</tr>
		<tr>
			<td>패스워드</td>
			<td><input type="password" name="pwd" class="form-control"></td>
		</tr>
		<tr>
			<td>파일업로드</td>
			<td><input type="file" name="uploadfile" class="form-control"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="POST" class="btn btn-primary">
				<input type="reset" value="RESET" class="btn btn-primary">
				<input type="button" value="BACK" class="btn btn-secondary" onClick="history.back()">
			</td>
		</tr>
	</table>
</form>

</div>

</body>
</html>
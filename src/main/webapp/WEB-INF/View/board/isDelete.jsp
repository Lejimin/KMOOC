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
                       <!--  <a href="/Notice/list.do"><li>공지사항</li></a>
                        <a href="/news.do"><li>뉴스</li></a>
                        <a href="/mater.do"><li>자료실</li></a> -->
                        <a href="/Board/list.do"><li>자유게시판</li></a>
                    </ul>
                </li>
            </ul>
        </nav>
</div>


<form method=post action="/Board/deleteReq.do" id="content">
	<table class="table w-50" style="margin:200px auto;">
		<tr>
			<td><input type="password" name="pwd" class="form-control" placeholder="Insert Password"></td>
			<td colspan="2"><input type="submit" value="확인" class="btn btn-primary"></td>
		</tr>
	</table>
	<input type="hidden" name=nowPage value="<%=request.getParameter("nowPage") %>">
	<input type="hidden" name=start value="<%=request.getParameter("start") %>">
	<input type="hidden" name=end value="<%=request.getParameter("end") %>">
</form>



</body>
</html>
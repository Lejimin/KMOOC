<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 페이지</title>
<style>
    body{width: 100%; height: 1100px;}
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
    nav:hover{height: 240px; background-color: #DAE6F5; transition: 0.4s;}
   
    #joindiv{width: 700px; height: 600px; position: relative; top: 100px; left: 495px; padding: 30px;}
    #joinform{font-size: 30px; text-align: center;}
    #inputEmail{width: 360px; height: 30px; margin-left: 80px; margin-bottom: 30px; margin-top: 70px;}
    #inputPassword{width: 360px; height: 30px; margin-left: 26px; margin-bottom: 30px;}
    #inputAddress{width: 360px; height: 30px; margin-left: 44px; margin-bottom: 30px;}
    #inputAddress2{width: 360px; height: 30px; margin-left: 17px; margin-bottom: 30px;}
    #inputZip{width: 360px; height: 30px; margin-left: 110px; margin-bottom: 30px;}
    #signbtn{width: 25%; height: 50px; font-size: 25px; margin-top: 30px; background-color:#5B97E1; border: 1px solid #5B97E1; color: white;}
</style>
</head>
<body>
    <div id="wrapper">
        <header>
            <div>
            <a href="Login.jsp"><img src="resources/img/logo_top.png" id="logo"></a>
            </div>
            <div>
                <input type="search" name="search.." id="search">
            </div>
            <div>
                <a href="Login.jsp" id="login"><p><b>로그인</b></p></a>
                <a href="MemberJoin.jsp" id="join"><p><b>회원가입</b></p></a>
            </div>
        </header>
        <nav>
            <ul id="menu">
                <li>
                    <a href="#"><b>K-MOOC 소개</b></a>
                    <ul class="sub">
                        <a href="#"><li>K-MOOC란?</li></a>
                    </ul>
                </li>
                <li>
                    <a href="#"><b>강좌찾기</b></a>
                    <ul class="sub">
                        <a href="#"><li>분야별 강좌</li></a>
                        <a href="#"><li>묶음 강좌</li></a>
                       <!--  <a href="#"><li>교양 강좌</li></a>
                        <a href="#"><li>학점은행과정</li></a> -->
                    </ul>
                </li>
                <li>
                    <a href="#"><b>커뮤니티</b></a>
                     <ul class="sub">
                        <!-- <a href="#"><li>공지사항</li></a>
                        <a href="#"><li>뉴스</li></a>
                        <a href="#"><li>자료실</li></a> -->
                        <a href="#"><li>자유게시판</li></a>
                    </ul>
                </li>
            </ul>
        </nav>
        



        <div id="joindiv">
            <h1>회원가입</h1>
            <form id="joinform" method="post" action="/MemberJoin.do">
                <div id="emaild1">
                <label for="inputEmail4">Email</label>
                <input type="email" id="inputEmail" name="email">
                </div>
                <div id="pwdd1">
                <label for="inputPassword4">Password</label>
                <input type="password" id="inputPassword" name="pwd">
                </div>
                <div id="addrd1">
                <label for="inputAddress">Address</label>
                <input type="text" id="inputAddress" placeholder="1234 Main St" name="addr1">
                </div>
                <div id="addrd2">
                <label for="inputAddress2">Address 2</label>
                <input type="text" id="inputAddress2" placeholder="Apartment, studio, or floor" name="addr2">
                </div>
                <div id="zipd1">
                <label for="inputZip">Zip</label>
                <input type="text" id="inputZip" name="zipcode">
                </div>
                <div id="signd1">
                <button type="submit" id="signbtn" class="btn btn-primary">회원가입</button>
                </div>
            </form>
       </div>
    </div>
</body>
</html>
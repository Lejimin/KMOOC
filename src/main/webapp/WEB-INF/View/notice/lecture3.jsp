<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
    <!-- <link href="resources/css/common.css" type="text/css" rel="stylesheet"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
        nav:hover{height: 240px; background-color: #DAE6F5; transition: 0.4s;}


		#content{width:100%; height:800px;margin-left:250px;}


        #foot1{width: 100%; height: 485px; background-color: #222222;}
        #f1{width: 400px; height: 300px; color: #FFFFFF; position: relative; top: 30px; left: 230px; font-size: 13px;}
        #f1title{font-size: 15.9px;}
        #f1>a>img{margin-left: 10px;}
        #bluep1{color: #79a9ff;}
        #f2{width: 400px; height: 300px; color: #FFFFFF; position: relative; top: -265px; left: 640px;}
        #f3{width: 400px; height: 300px; color: #FFFFFF; position: relative; top: -565px; left: 1000px;}
        #f3>a>img{margin-left: 10px;}
        #btn1{background-color: #FFFFFF; width: 80px; height: 37px;}
        #optionbar{background-color: #222222; color: #FFFFFF; width: 210px; height: 35px;}
        hr{width: 1230px; margin-top: -10px;}
        #f4{width: 1000px; height: 90px; color: #FFFFFF; position: relative; top: -540px; left: 220px;}
        #f4>a{display: inline-block; color: #FFFFFF; text-decoration: none; margin-left: 10px;}
        #bluep2{color: #79a9ff;}
        #f5{width: 500px; height: 90px; position: relative; top: -610px; left: 850px;}
        #f5>a>img{margin-left: 50px;}
    </style>   
</head>
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
                <a href="MemberJoin.jsp" id="join"><p><b>회원가입</b></p></a>
            </div>
        </header>
        <nav>
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
                      <!--   <a href="/lecture3.do"><li>교양 강좌</li></a>
                        <a href="/lecture4.do"><li>학점은행과정</li></a> -->
                    </ul>
                </li>
                <li>
                    <a href="#"><b>커뮤니티</b></a>
                    <ul class="sub">
                      <!--   <a href="/Notice/list.do"><li>공지사항</li></a>
                        <a href="/news.do"><li>뉴스</li></a>
                        <a href="/mater.do"><li>자료실</li></a> -->
                        <a href="/Board/list.do"><li>자유게시판</li></a>
                    </ul>
                </li>
            </ul>
        </nav>
        
        
        
        
        
        
        <div id="content">
        	<h2>교양강좌</h2>
        </div>
        
        
        
        
        
        
        
        
            <footer>
            <div id="foot1">
                <div id="f1">
                    <p id="f1title"><b>K-MOOC</b></p>
                    <p>(04520)서울특별시 중구 청계천로 14 (무교동 77)</p>
                    <p>(Tel) 1811-3118</p>
                    <p>※평일 9:00~18:00 운영 (점심시간 12:00~13:00 제외)</p>
                    <p>(사업 문의)kmooc@nile.or.kr</p>
                    <p>(서비스 이용 문의)info_kmooc@nile.or.kr</p>
                    <p>E-mail: kmooc@nile.or.kr</p>
                    <p id="bluep1">K-MOOC는 chrome 브라우저 사용을 권장합니다.</p>
                    <a href="#"><img src="../resources/img/icon_link_facebook.png"></a>
                    <a href="#"><img src="../resources/img/icon_link_instagram.png"></a>
                    <a href="#"><img src="../resources/img/icon_link_youtube.png"></a>
                    <a href="#"><img src="../resources/img/icon_link_blog.png"></a>
                </div>
                <div id="f2">
                    <p id="f2title"><b>패밀리사이트</b></p>
                    <select name="site" id=optionbar>
                        <option value="선택" selected="selected">선택</option>
                        <option value="교육부">교육부</option>
                        <option value="국가평생교육진흥원">국가평생교육진흥원</option>
                        <option value="매치업">매치업</option>
                        <option value="늘배움">늘배움</option>
                        <option value="평생학습계좌제">평생학습계좌제</option>
                        <option value="학점은행제">학점은행제</option>
                        <option value="독학학위제">독학학위제</option>
                        <option value="국가문해교육센터">국가문해교육센터</option>
                        <option value="평생교육사">평생교육사</option>
                        <option value="중앙다문화교육센터">중앙다문화교육센터</option>
                        <option value="전국학부모지원세터">전국학부모지원세터</option>
                        <option value="학점은행제 알리미">학점은행제</option>
                        <option value="대학평생교육활성화">대학평생교육활성화</option>
                     </select>
                     <button type="submit" id="btn1">이동</button>
                </div>
                <div id="f3">
                    <p id="f3title"><b>앱 다운로드</b></p>
                    <a href="#"><img src="../resources/img/icon_app_android.png"></a>
                    <a href="#"><img src="../resources/img/icon_app_ios.png"></a>
                </div>
                <div id="f4">
                    <hr>
                    <a href="#"><p id="bluep2">개인정보처리방침</p></a>
                    <a href="#"><p>이용약관</p></a>
                    <a href="#"><p>저작권 보호 정책</p></a>
                    <a href="#"><p>이수증 검증</p></a>
                    <a href="#"><p>원격도우미</p></a>
                    <p>Copyright@2020 National Institute for Lifelong Education.All Rights Reserved</p>
                </div>
                <div id="f5">
                    <a href="#"><img src="../resources/img/footer1.png"></a>
                    <a href="#"><img src="../resources/img/footer2.png"></a>
                </div>
            </div>
        </footer>
</body>
</html>
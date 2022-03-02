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


		#content{width: 100%; height: 1500px;}
        #context{margin-top: -140px; margin-left: 530px; color: white;}
        table{margin-top: 150px; margin-left: 390px; width: 60%; height: 900px;}
        td>img{width: 300px; height: 180px;}
        .tdp1{width: 300px; height: 300px; padding: 0px;} 
        .tdp2{width: 700px; height: 300px; padding: 30px;}
        .tdp3{width: 220px; font-size: 13px;}
        .b{font-weight: bold;}


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
        
        
        
        
        
        
        <div id="content">
            <div id="con"><img src="../resources/img/bg_group.jpg"></div>
            <div id="context">
                <h3>묶음강좌란? | </h3>
                <p>K-MOOC 묶음강좌란 특정 분야에 대한 보다 심도있는 학습기회를 제공하기 위해 복수의 강좌로 구성된 커리큘럼입니다.</p>
            </div>
            <div>
                <table>
                    <tr>
                        <td class="tdp1"><img src="http://www.kmooc.kr/static/file_upload/3f93ca8f5e664f74aa9de54846e754f9"></td>
                        <td class="tdp2"><p class="b">감성인식기술전문가 양성과정</p><br><p>심리학,신경과학 및 인공지능의 관점을 통합하여 인지의 중요한 요소인 인간 감성을 이해하고,인간의 지각,지능 및 감성을 통합적으로 학습하도록 함</p></td>
                        <td class="tdp3"><p><p class="b">대표기관</p>상명대학교</p><br><p><p class="b">구성강좌수</p> &nbsp; 6</p></td>
                    </tr>
                    <tr>
                        <td class="tdp1"><img src="http://www.kmooc.kr/static/file_upload/5eb45a5887c44aed8be712133fe3af1b"></td>
                        <td class="tdp2"><p class="b">노인심리상담사 기초과정</p><br><p>본 강좌는 초고령화시대에 접어들면서 노인인구 증가에 따른 사회적 변화에 발맞추어 노인심리상담사를 양성하기 위한 기초 과정으로 노인심리상담에 필요한 실제적인 지식을 습득할 수 있습니다. 본 강좌는 묶음 강좌로써 노인심리상담사로서 갖추어야할 기본 역량을 쌓기 위해 기초, 입문, 활용, 고급 과정으로 교과목이 구성되어 있습니다. 입문과정으로는 <노인상담의 이해>, 기초 과정으로는 <전 생애 발달과 노인심리>, 활용 과정으로는 <노인상담 이론과 기법>, <노인문제와 심리평가>, 그리고 고급 과정으로 <노인상담의 실제> 과목으로 구성하였습니다. 본 묶음 강좌에서는 노년기 발달 이슈를 전생애 발달 관점에서 이해함으로써 노인의 심리적 특성을 기반으로 한 노인심리상담의 기초를 익힐 수 있습니다. 또한 노인심리장애와 노인 심리평가 방법을 학습할 수 있고, 나아가 노인심리상담에서 자주 접하는 위기 영역(애도, 노인학대, 노인 자살 등)에 대해 실제 사례를 통한 전문 상담지식을 함양할 수 있도록 구성하였습니다.</p></td>
                        <td class="tdp3"><p><p class="b">대표기관</p>서울사이버대학교</p><br><p><p class="b">구성강좌수</p> &nbsp; 5</p></td>
                    </tr>
                    <tr>
                        <td class="tdp1"><img src="http://www.kmooc.kr/static/file_upload/4ca33070ed364a958956844180a466fc"></td>
                        <td class="tdp2"><p class="b">인문.사회계열 전공생을 위한 머신러닝 예비학교</p><br><p>본 강좌는 인문·사회·교육계열을 전공하는 학생들이 본인의 전공 혹은 진로 희망 분야에 인공지능 기술을 적용할 수 있도록 기초부터 심화까지의 과정을 묶음으로 구성하였다. 본 묶음강좌를 이수하면 먼저 Jupyter Notebook을 통해 Python 코딩에 입문하고 머신러닝(ML)과 신경망(NN) 문제를 실습한다. 이후 머신러닝 및 인공지능 심화학습을 위해 Python 코딩 실습을 겸한 수학 기초 과정을 학습하며, 실사례(Case Studies)로 구성된 실습을 통해 ML 혹은 AI 알고리즘을 구현할 수 있게 된다.</p></td>
                        <td class="tdp3"><p><p class="b">대표기관</p>성신여자대학교</p><br><p><p class="b">구성강좌수</p> &nbsp; 4</p></td>
                    </tr>
                </table>
            </div>
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
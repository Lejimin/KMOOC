<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
     	#commentdiv{margin-left:250px; width:1250px;}
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
                <a href="MemberJoin.jsp" id="join"><p><b>회원가입</b></p></a>
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
                        <a href="/lecture3.do"><li>교양 강좌</li></a>
                        <a href="/lecture4.do"><li>학점은행과정</li></a>
                    </ul>
                </li>
                <li>
                    <a href="#"><b>커뮤니티</b></a>
                    <ul class="sub">
                        <a href="/Notice/list.do"><li>공지사항</li></a>
                        <a href="/news.do"><li>뉴스</li></a>
                        <a href="/mater.do"><li>자료실</li></a>
                        <a href="/Board/list.do"><li>자유게시판</li></a>
                    </ul>
                </li>
            </ul>
        </nav>



<div class="page-contents p-3" id="content">
<!--페이지 위치정보(브레드크럼 사용~) -->
<nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item"><a href="/Home.do">Home</a></li>
    <li class="breadcrumb-item"><a href="/Board/list.do">Board</a></li>
    <li class="breadcrumb-item"><a href="/Board/list.do">List</a></li>
    <li class="breadcrumb-item active" aria-current="page">Read</li>
  </ol>
</nav>

<%@page import="vo.*" %>
<%
	BoardVO vo = (BoardVO)session.getAttribute("BoardVO");
	String nowPage = (String)request.getAttribute("nowPage");
	int start = (int)request.getAttribute("start");
	int end = (int)request.getAttribute("end");
	
%>

<%
	String MSG = (String)request.getAttribute("MSG");
	if(MSG!=null)
	{
%>
	<script>
		alert('<%=MSG%>');
	</script>
<%
	}
%>

<h2 class="mb-4">글내용</h2>
<table class="table w-75">
	<tr>
		<th>이메일</th>
		<td><%=vo.getEmail() %></td>
		<th>등록날짜</th>
		<td><%=vo.getRegdate() %></td>
	</tr>
	<tr>
		<th>제 목</th>
		<td colspan="3"><%=vo.getSubject() %></td>
	</tr>
	<tr>
		<th>첨부파일</th>
		<%
			if(vo.getFilename().equals("파일없음"))
			{
				%>
				<td colspan="3">파일없음</td>
				<% 
			}else
			{
				%>
				<td colspan="3"><a href="/Board/download.do"><%=vo.getFilename() %></a> (<%=vo.getFilesize()/1024 %> Kbyte)</td>
				<% 
			}
		%>
		
	</tr>
	<tr>
		<td colspan="4" style="height:250px;"><textarea rows=10 cols=50 class="form-control"><%=vo.getContent() %></textarea></td>
	</tr>
	<tr>
		<td colspan="4" align="right">IP : <%=vo.getIp() %> / 조회수 : <%=vo.getCount() %> </td>
	</tr>
	<tr>
		<td colspan="4">
		<a href="/Board/list.do?nowPage=<%=nowPage %>&start=<%=start %>&end=<%=end%>" class="btn btn-primary">LIST</a>&nbsp;
		<a href="/Board/updateReq.do?nowPage=<%=nowPage %>&start=<%=start %>&end=<%=end%>&flag=init" class="btn btn-primary">UPDATE</a>&nbsp;
		<a href="/Board/deleteReq.do?nowPage=<%=nowPage %>&start=<%=start %>&end=<%=end%>&flag=init" class="btn btn-primary">DELETE</a>&nbsp;
		</td>
	</tr>
</table>
<!-- page content 끝 -->
</div>

<!-- Reply -->
<script>
	function postreply(){
		$.ajax({
			url:'/Board/replypost.do',
			type:'GET',
			datatype:'html',
			data:{'comment':$('#comment').val()},
			success:function(result){
				listreply();	//댓글쓰고난다음 댓글포함한 내용 가져오기
			},
			error:function(){
				alert("문제발생!");
			}
		});
		
	}
	
	function listreply(){
		$.ajax({
			url:'/Board/replylist.do',
			type:'GET',
			datatype:'html',
			success:function(result){
				$('#replydiv').empty(); //기존 댓글리스트 삭제 (항상 모든 댓글읽어오기 때문에 삭제하고 전체를 받아와야함)
				$('#replydiv').append(result);
				$('#comment').val('');
			},
			error:function(){
				alert("문제발생!");	
			}
		});
	}
	listreply();
</script>

<div class="p-4" style="background-color:#f1f2f1;height:500px;overflow:auto;" id="commentdiv" >
<h3  class="p-3 ml-250">Comment</h3>
	
	
	<div class="row">
		<div class="col-7">
				<textarea row="3" class="form-control" id="comment"></textarea>
		</div>
		<div class="col-1">
			<button class="btn btn-secondary w-100 h-100" onclick="postreply()">SEND</button>
		</div>
	</div>
	
	<div id=replydiv>
	
	</div>
	
	<!-- 댓글리스트 표시 위치 -->
	
</div>

<!-- container-fluid 끝 -->
</div>



</body>
</html>
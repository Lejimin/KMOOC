package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import controller.auth.LoginProcController;
import controller.auth.LogoutProcController;
import controller.board.BoardDeleteController;
import controller.board.BoardDeleteReqController;
import controller.board.BoardDownloadController;
import controller.board.BoardListController;
import controller.board.BoardPostController;
import controller.board.BoardReadController;
import controller.board.BoardReplylistController;
import controller.board.BoardReplypostController;
import controller.board.BoardUpdateController;
import controller.board.BoardUpdateReqController;
import controller.home.HomeForwardingController;
import controller.home.IntroductionController;
import controller.home.Lecture2Controller;
import controller.home.Lecture3Controller;
import controller.home.Lecture4Controller;
import controller.home.LectureController;
import controller.home.MaterialsController;
import controller.home.NewsController;
import controller.member.MemberJoinController;
import controller.member.MemberSearchController;
import controller.notice.NoticeListController;
import controller.notice.NoticePostController;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig(
		fileSizeThreshold=1024*1024*10,  //10MB
		maxFileSize=1024*1024*50,		//50MB
		maxRequestSize=1024*1024*100	//100MB
		//location="c:/upload"
		)

public class FrontController extends HttpServlet{
	
	//URL 저장용도 
	Map <String,Controller> list = null;
	
	@Override
	public void init() throws ServletException {
		//컨트롤러 URL-SubController 저장
		list=new HashMap();
		
		//Member관련 URL
		list.put("/MemberJoin.do", new MemberJoinController());
		list.put("/MemberSearch.do", new MemberSearchController());
		
		//Home URL
		list.put("/Home.do", new HomeForwardingController());
		list.put("/intro.do", new IntroductionController());
		list.put("/news.do", new NewsController());
		list.put("/mater.do", new MaterialsController());
		list.put("/lecture.do", new LectureController());
		list.put("/lecture2.do", new Lecture2Controller());
		list.put("/lecture3.do", new Lecture3Controller());
		list.put("/lecture4.do", new Lecture4Controller());
		//Board관련 URL
		list.put("/Board/list.do", new BoardListController());
		list.put("/Board/post.do", new BoardPostController());
		list.put("/Board/read.do", new BoardReadController());
		list.put("/Board/update.do", new BoardUpdateController());
		list.put("/Board/updateReq.do",  new BoardUpdateReqController());
		list.put("/Board/deleteReq.do", new BoardDeleteReqController());
		list.put("/Board/delete.do", new BoardDeleteController());
		list.put("/Board/download.do", new BoardDownloadController());
		list.put("/Board/replypost.do", new BoardReplypostController());
		list.put("/Board/replylist.do", new BoardReplylistController());
		
		//notice관련 URL
		list.put("/Notice/list.do", new NoticeListController());
		list.put("/Notice/post.do",new NoticePostController());
		
		//Auth관련 URL
		list.put("/LoginProc.do", new LoginProcController());
		list.put("/LogoutProc.do", new LogoutProcController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("FrontController Test");
		String url = req.getRequestURI();
		System.out.println("URI : " +url);
		
		//컨트롤러 꺼내기
		Controller  subcontroller = list.get(url); 
		//서브컨트롤러 Execute함수 실행
		subcontroller.Execute(req, resp);
	}

	

}

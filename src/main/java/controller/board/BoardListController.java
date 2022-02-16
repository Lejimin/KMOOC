package controller.board;

import java.util.Vector;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.BoardService;
import vo.BoardVO;

public class BoardListController implements Controller{

	@Override
	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		
		//파라미터 가져오기(게시물 시작위치, 읽어들일 개수)
		String s = req.getParameter("start");   //list.jsp에서 받아옴
		String e = req.getParameter("end");
		String n = req.getParameter("nowPage");
		
		int start=0;  //시작게시물 위치 (db에 1000번째가 시작0번이된다)
		int end=10;   //시작위치로부터 총읽을 게시물 수 (1페이지에 10개 게시물씩 보여짐)
		int nowPage=1; //현재페이지
		
		
		//입력값 검증
		if(n!=null) {
			nowPage = Integer.parseInt(n); //nowPage
			start = Integer.parseInt(s);  //start
			end = Integer.parseInt(e);     //end
		}
		
		
		
		//서비스 실행
		BoardService service = BoardService.getInstance();
		Vector<BoardVO> list = service.getBoardList(start, end);
		int tcnt = service.getTotalCount();
	
		//View 이동
		req.setAttribute("list", list);
		req.setAttribute("tcnt", tcnt);
		HttpUtil.Forward(req, resp, "/WEB-INF/View/board/list.jsp?nowPage="+nowPage);
		
	}

}

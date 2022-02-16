package controller.board;

import controller.Controller;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.BoardService;
import vo.BoardVO;

public class BoardDownloadController implements Controller{

	@Override
	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		// 파라미터 받기
		
		//입력값 x
		
		//서비스
		BoardService service = BoardService.getInstance();
		service.Download(req,resp);
		
		//이동
		
	}

}

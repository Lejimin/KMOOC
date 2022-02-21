package controller.home;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LectureController implements Controller{

	@Override
	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		HttpUtil.Forward(req, resp,"/WEB-INF/View/notice/lecture.jsp");
		
	}

}

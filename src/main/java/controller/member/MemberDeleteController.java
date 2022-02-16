package controller.member;

import controller.Controller;
import controller.HttpUtil;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberDeleteController implements Controller{

	@Override
	public void Execute(HttpServletRequest req, HttpServletResponse resp) {
		System.out.println("회원삭제컨트롤러");
		
		//01 파라미터 받기
		System.out.println("01파라미터 받기");
		//02 입력값 검증 (Front-Javascript로 처리가능)
		System.out.println("02입력값 검증");
		//03 서비스 작업
		System.out.println("03서비스 작업");
		//04 페이지 이동(View) - Redirect VS Dispatcher(Forward)
		HttpUtil.Forward(req, resp, "/WEB-INF/View/MemberDeleteResult.jsp");		
	}
}

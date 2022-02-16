package controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HttpUtil {
	
	//static이 붙어서 class이름으로 접근가능
	public static void Forward(HttpServletRequest req, HttpServletResponse resp, String url) 
	{
		try {
			req.getRequestDispatcher(url).forward(req,resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}

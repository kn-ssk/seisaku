/*package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SelectServlet")
public class SelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(
			"WEB-INF/jsp/-----");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int select = Integer.parseInt(request.getParameter("----"));
	    
	    // フォームから選択されたMBTIに基づいてリダイレクト先を決定
	    String redirectUrl = "";
	    switch(select) {
	        case 1:
	            redirectUrl = "WEB-INF/jsp/----";
	            break;
	        case 2:
	            redirectUrl = "WEB-INF/jsp/----";
	            break;
	        // 他のMBTIのケースも追加
	        default:
	            // デフォルトのリダイレクト先を設定
	            redirectUrl = "WEB-INF/jsp/----";
	    }
	    
	    // リクエストにMBTIをセット
	    request.setAttribute("mbti", select);
	    
	    HttpSession session = request.getSession();
	    session.setAttribute("mbti", select);
	    
	    // リダイレクト先にフォワード
	    RequestDispatcher dispatcher = request.getRequestDispatcher(redirectUrl);
	    dispatcher.forward(request, response);
	}
}*/

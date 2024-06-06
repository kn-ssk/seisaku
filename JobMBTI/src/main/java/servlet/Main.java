package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Job;
import model.JobDAO;
//import model.HealthCheckLogic;

@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        // フォームからの入力を取得
        String mbtiId = request.getParameter("mbti");

        // データベースから該当するMBTIの情報を取得
        JobDAO jobDAO = new JobDAO();
        Job job = jobDAO.getJobByMbtiId(mbtiId);

        // JSPに渡すためにリクエストスコープにセット
        request.setAttribute("job" , job);

        // 結果を表示するJSPにフォワード
        RequestDispatcher dispatcher = request.getRequestDispatcher("intj.jsp");
        dispatcher.forward(request, response);
    }
}
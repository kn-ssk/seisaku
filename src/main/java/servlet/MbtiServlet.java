package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Mbti;
import model.Select;
import model.SelectLogic;

@WebServlet("/MbtiServlet")
public class MbtiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/all.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int select = Integer.parseInt(request.getParameter("mbti"));

        Select selectObj = new Select(select);

        SelectLogic logic = new SelectLogic();
        Mbti mbti = logic.execute(selectObj);

        if (mbti != null) {
            request.setAttribute("mbti", mbti);

            String jspFileName;
            if (select >= 1 && select <= 4) {
                jspFileName = "WEB-INF/jsp/group1.jsp";
            } else if (select >= 5 && select <= 8) {
                jspFileName = "WEB-INF/jsp/group2.jsp";
            } else if (select >= 9 && select <= 12) {
                jspFileName = "WEB-INF/jsp/group3.jsp";
            } else if (select >= 13 && select <= 16) {
                jspFileName = "WEB-INF/jsp/group4.jsp";
            } else {
                jspFileName = "WEB-INF/jsp/top.jsp";
            }

            RequestDispatcher dispatcher = request.getRequestDispatcher(jspFileName);
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("WEB-INF/jsp/error.jsp");
        }
    }
}

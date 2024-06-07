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

@WebServlet("/Main")
public class Main extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/jsp/top.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int select = Integer.parseInt(request.getParameter("mbti"));

        // Selectオブジェクトを生成して、DAOに渡す
        Select selectObj = new Select(select);

        // SelectLogicを使ってDAOからMBTI情報を取得
        SelectLogic logic = new SelectLogic();
        Mbti mbti = logic.execute(selectObj);

        if (mbti != null) {
            // リクエスト属性にMBTI情報を設定
            request.setAttribute("mbti", mbti);

            // 選択されたMBTIに基づいてJSPファイル名を決定し、フォワード
            String jspFileName = ""; // フォワードするJSPファイル名を格納する変数
            switch (select) {
                case 1:
                    jspFileName = "WEB-INF/jsp/intj.jsp";
                    break;
                case 2:
                    jspFileName = "WEB-INF/jsp/intp.jsp";
                    break;
                // 他のMBTIのケースも追加
                default:
                    // デフォルトのJSPファイルを設定
                    jspFileName = "WEB-INF/jsp/top.jsp";
            }

            // JSPにフォワード
            RequestDispatcher dispatcher = request.getRequestDispatcher(jspFileName);
            dispatcher.forward(request, response);
        } else {
            // エラーハンドリング
            response.sendRedirect("WEB-INF/jsp/error.jsp");
        }
    }
}
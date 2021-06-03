package iambo.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "InitServlet", value = "/InitServlet")
public class InitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        HttpSession session = request.getSession();
        String player1_username = request.getParameter("player1_username");
        String player1_no = request.getParameter("player1_no");
        String player2_username = request.getParameter("player2_username");
        String player2_no = request.getParameter("player2_no");
        String avatar_1 = request.getParameter("avatar_1");
        String avatar_2 = request.getParameter("avatar_2");
        session.setAttribute("player1_username", player1_username);
        session.setAttribute("player1_no", player1_no);
        session.setAttribute("player2_username", player2_username);
        session.setAttribute("player2_no", player2_no);
        session.setAttribute("avatar_1",avatar_1);
        session.setAttribute("avatar_2",avatar_2);
        request.setAttribute("from","init");
        request.getRequestDispatcher("/MonopolyGameServlet").forward(request,response);
    }
}

package iambo.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiceServlet", value = "/DiceServlet")
public class DiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        String username = request.getParameter("username");
        String dice = request.getParameter("dice");
        HttpSession session = request.getSession();
        request.setAttribute("from","dice");
        session.setAttribute("who",username);
        session.setAttribute("length",Integer.parseInt(dice));
        System.out.println("player"+username+" move forward "+dice);
        request.getRequestDispatcher("/MonopolyGameServlet").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

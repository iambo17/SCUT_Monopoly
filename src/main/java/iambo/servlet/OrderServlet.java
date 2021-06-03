package iambo.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "OrderServlet", value = "/OrderServlet")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json;charset=utf-8");
        String username=request.getParameter("username");  //1 or 2
        String order = request.getParameter("order");    // buy reduce uplevel
        String order_whether=request.getParameter("order_whether");  //true or false
        HttpSession session = request.getSession();
        request.setAttribute("from","order");
        session.setAttribute("who",username);
        session.setAttribute("order",order);
        session.setAttribute("order_whether",order_whether);
        request.getRequestDispatcher("/MonopolyGameServlet").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}

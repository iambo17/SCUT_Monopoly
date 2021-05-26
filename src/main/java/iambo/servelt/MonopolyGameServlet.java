package iambo.servelt;

import com.fasterxml.jackson.databind.ObjectMapper;
import iambo.game.Monopoly_Game;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "MonopolyGameServlet", value = "/MonopolyGameServlet")
public class MonopolyGameServlet extends HttpServlet {
    Monopoly_Game game = new Monopoly_Game();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Object from = request.getAttribute("from");
        if (from.equals("dice")) {
            player_move(request, response);
        }
        if (from.equals("order")) {
            player_order(request, response);
        }
        if (from.equals("init")) {
            init_game(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doGet(request, response);
    }

    private void init_game(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String player1_username = (String) session.getAttribute("player1_username");
        String player1_no = (String) session.getAttribute("player1_no");
        String player2_username = (String) session.getAttribute("player2_username");
        String player2_no = (String) session.getAttribute("player2_no");
        game.initGame(player1_username, player1_no, player2_username, player2_no);
        session.setAttribute("player1_money", 150);
        session.setAttribute("player2_money", 150);
        response.sendRedirect(request.getContextPath() + "/Background.jsp");
    }

    private void player_move(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        Map<String, String> map = new HashMap<>();
        HttpSession session = request.getSession();
        String who = (String) session.getAttribute("who");
        int length = (int) session.getAttribute("length");
        String[] nextOrder;
        if (who.equals("1")) {
            nextOrder = game.move("1", length);
        } else {
            nextOrder = game.move("2", length);
        }
        String order=nextOrder[0];
        map.put("player", who);
        map.put("dice", String.valueOf(length));
        map.put("order", nextOrder[0]);  //下一条指令
        if(order.equals("system")){
            map.put("function",nextOrder[1]);
            map.put("number",nextOrder[2]);
            map.put("where",nextOrder[3]);
            if(who.equals("1")){
                map.put("money",String.valueOf(game.player1.getMoney()));
            }else{
                if(who.equals("2")) {
                    map.put("money", String.valueOf(game.player2.getMoney()));
                }else{
                    map.put("money","Exception");
                }
            }
        }else {
            map.put("need", nextOrder[1]);  //需要多少钱
            map.put("where", nextOrder[2]);  //到达哪里
        }

        System.out.println(nextOrder[0]);
        System.out.println(nextOrder[1]);

        ObjectMapper mapper = new ObjectMapper();
        String s = mapper.writeValueAsString(map);
        response.getWriter().print(s);
    }

    //只有NormalBlock才会调用这个函数
    private void player_order(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("application/json;charset=utf-8");
        Map<String, String> map = new HashMap<>();
        HttpSession session = request.getSession();
        String who = (String) session.getAttribute("who");
        String order = (String) session.getAttribute("order");
        String order_whether = (String) session.getAttribute("order_whether");
        boolean order_status;
        if (who.equals("1")) {
            order_status = game.order("1", order, order_whether);
        } else {
            order_status = game.order("2", order, order_whether);
        }
        map.put("player", who);
        map.put("order", order);
        map.put("order_status", String.valueOf(order_status ? 1 : 0));
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writeValueAsString(map);
        response.getWriter().print(json);
    }
}

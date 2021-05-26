package iambo.game;

import iambo.element.*;
import iambo.element.block.Block;
import iambo.element.block.NormalBlock;
import iambo.element.block.SystemBlock;
import iambo.util.MoneyUtil;
import iambo.util.PositionUtil;

public class Monopoly_Game {
    private Map map;
    public Player player1;
    public Player player2;

    public void initGame(String player1_username, String player1_no, String player2_username, String player2_no) {
        //init
        PositionUtil pu = new PositionUtil();
        MoneyUtil mu = new MoneyUtil();
        map = new Map();
        player1 = new Player(player1_username, player1_no);
        player2 = new Player(player2_username, player2_no);
        player1.initPosition(pu.player1_position_file);
        player2.initPosition(pu.player2_position_file);
        player1.initMoney(mu.player1_money_file);
        player2.initMoney(mu.player2_money_file);
        System.out.println(player1.getName() + " " + player1_no + " is created");
        System.out.println(player2.getName() + " " + player2_no + " is created");
    }

    public String[] move(String who, int moveLength) {
        if (who.equals("1")) {
            player1.addPosition(moveLength);
            return judge(player1);
        } else {
            if (who.equals("2")) {
                player2.addPosition(moveLength);
                return judge(player2);
            }
        }
        return new String[]{"exception", "0"};
    }

    private String[] judge(Player player) {
        int position = player.getPosition();
        Block block = map.get(position);
        boolean isSystem = block.isSystem();
        if (isSystem) {
            SystemBlock sb = (SystemBlock) block;
            String[] orderSet = sb.function(player);  //ÌØÊâ·½¿é
            return new String[]{"system", orderSet[0], orderSet[1], block.getId()};
        } else {
            if (((NormalBlock) block).owner.getName().equals("no")) {
                String number = String.valueOf(((NormalBlock) block).buyNeedMoney());
                return new String[]{"buy", number, block.getId()};  //¹ºÂò
            } else {
                if (((NormalBlock) block).owner.getName().equals(player.getName())) {
                    String number = String.valueOf(((NormalBlock) block).getNeedMoney(((NormalBlock) block).getLevel()));
                    return new String[]{"uplevel", number, block.getId()};  //Éý¼¶
                } else {
                    String number = String.valueOf(((NormalBlock) block).reduceNeedMoney());
                    return new String[]{"reduce", number, block.getId()};  //¿ÛÇ®
                }
            }
        }
    }

    public boolean order(String who, String order, String order_whether) {
        boolean buy = Boolean.parseBoolean(order_whether) && order.equals("buy");
        boolean uplevel = Boolean.parseBoolean(order_whether) && order.equals("uplevel");
        if (who.equals("1")) {
            int position = player1.getPosition();
            Block block = map.get(position);
            NormalBlock nb = (NormalBlock) block;
            if (buy) {
                return nb.buy_action(player1);
            }
            if (uplevel) {
                return nb.upLevel(player1);
            }
            if (order.equals("reduce")) {
                return nb.payMoney(player1);
            }
        } else {
            int position = player2.getPosition();
            Block block = map.get(position);
            NormalBlock nb = (NormalBlock) block;
            if (buy) {
                return nb.buy_action(player2);
            }
            if (uplevel) {
                return nb.upLevel(player2);
            }
            if (order.equals("reduce")) {
                return nb.payMoney(player2);
            }
        }
        return true;
    }

    public Monopoly_Game() {

    }
}

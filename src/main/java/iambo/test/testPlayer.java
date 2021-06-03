package iambo.test;

import iambo.element.Player;
import iambo.util.MoneyUtil;
import iambo.util.PositionUtil;
import org.junit.Test;

public class testPlayer {
    @Test
    public void test1(){
        Player player=new Player("iambo","iambo");
        PositionUtil pu=new PositionUtil();
        player.initPosition(pu.player1_position_file);

        int position = player.getPosition();
        System.out.println(position);

        player.addPosition(3);
        int position1 = player.getPosition();
        System.out.println(position1);

        player.addPosition(5);
        int position2 = player.getPosition();
        System.out.println(position2);

        player.addPosition(7);
        int position3 = player.getPosition();
        System.out.println(position3);

        player.addPosition(5);
        int position4 = player.getPosition();
        System.out.println(position4);

        player.addPosition(6);
        int position5 = player.getPosition();
        System.out.println(position5);

        player.addPosition(6);
        int position6 = player.getPosition();
        System.out.println(position6);
    }

    @Test
    public void test2(){
        Player player=new Player("iambo","iambo");
        System.out.println(player.getName());
        System.out.println(player.getNo());
    }

    @Test
    public void test3(){
        Player player=new Player("iambo","iambo");
        MoneyUtil mu=new MoneyUtil();
        player.initMoney(mu.player1_money_file);

        int money1=player.getMoney();
        System.out.println(money1);

        player.addMoney(30);
        int money2 = player.getMoney();
        System.out.println(money2);

        player.addMoney(20);
        int money3=player.getMoney();
        System.out.println(money3);

        player.reduceMoney(100);
        int money4=player.getMoney();
        System.out.println(money4);

        player.reduceMoney(50);
        int money5=player.getMoney();
        System.out.println(money5);
        System.out.println(player.getStatus());

        player.reduceMoney(60);
        int money6=player.getMoney();
        System.out.println(money6);
        System.out.println(player.getStatus());
    }
}

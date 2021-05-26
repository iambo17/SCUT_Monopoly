package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class B1001 extends SystemBlock {
    public B1001(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //实验搞砸了 失去一部分经济
        int money = player.getMoney();
        if(money>=20) {
            player.setMoney(money - 20);
        }else{
            player.setMoney(0);
        }
        return new String[]{"实验搞砸了,失去一部分实验课学分","20"};
    }
}

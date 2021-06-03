package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Swimming extends SystemBlock {
    public Swimming(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //失去一部分经济
        int money = player.getMoney();
        if(money>=20) {
            player.setMoney(money - 20);
        }else{
            player.setMoney(0);
        }
        return new String[]{"游泳不小心溺水了，体育不及格被扣除了一部分学分","20"};
    }
}

package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Medical extends SystemBlock {
    public Medical(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //旁听了一节医学科 知识增加了 得到一部分经济
        player.setMoney(player.getMoney() + 20);
        return new String[]{"旁听了一节医学科,知识增加了,获得了学分","20"};
    }
}

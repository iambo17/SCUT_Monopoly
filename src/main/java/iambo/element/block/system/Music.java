package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Music extends SystemBlock {
    public Music(String music) {
        super(music);
    }

    @Override
    public String[] function(Player player) {
        //一轮过去分发钱
        player.setMoney(player.getMoney() + 40);
        return new String[]{"听完音乐，身心舒展，获得一部分学分","40"};
    }
}

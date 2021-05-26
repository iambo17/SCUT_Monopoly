package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Canteen extends SystemBlock {
    public Canteen(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //补充能量 获得一回合
        return new String[]{"干饭人，干饭魂，获得一回合","1"};
    }
}

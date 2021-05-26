package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Gym extends SystemBlock {
    public Gym(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //停止1回合
        return new String[]{"上完体育课累了，休息停止一回合","1"};
    }
}

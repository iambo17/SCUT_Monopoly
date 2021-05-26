package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Library extends SystemBlock {
    public Library(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //获得一回合
        return new String[]{"图书馆卷了一天，动力满满，获得一回合","1"};
    }
}

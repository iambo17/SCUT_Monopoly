package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Center extends SystemBlock {
    public Center(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //广场很大 强制拦下
        return new String[]{"广场很大，在这里迷路，停留下来","1"};
    }
}

package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Ceramic extends SystemBlock {
    public Ceramic(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //神庙祈福：下次购买升级建筑免费
        player.setCeramic();
        return new String[]{"神庙祈福，下次购买升级建筑免费","1"};
    }
}

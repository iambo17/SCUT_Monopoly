package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Tennis extends SystemBlock {
    public Tennis(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //观看别人打排球 无事发生
        player.setMoney(player.getMoney() + 40);
        return new String[]{"观看别人打排球，无事发生","1"};
    }
}

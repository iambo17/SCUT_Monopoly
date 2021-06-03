package iambo.element.block;

import iambo.element.Player;

public abstract class SystemBlock extends Block {
    public abstract String[] function(Player player);

    public boolean isSystem(){
        return true;
    }

    public SystemBlock(String id) {
        super(id);
    }
}

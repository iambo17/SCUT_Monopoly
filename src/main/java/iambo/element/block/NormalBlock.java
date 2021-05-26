package iambo.element.block;

import iambo.element.Player;

public abstract class NormalBlock extends Block {
    protected boolean isBought;
    protected int level;
    public Player owner;

    public abstract void buy(boolean want_to_buy, boolean want_to_level, Player player) throws Exception;

    public abstract boolean upLevel(Player player) ;

    public abstract boolean payMoney(Player player);

    public abstract int getLevel() ;

    public abstract void setLevel(int level) ;

    public abstract int getNeedMoney(int level);

    public abstract boolean buy_action(Player player);

    public abstract int buyNeedMoney();

    public abstract int reduceNeedMoney();

    public boolean isSystem(){
        return false;
    }

    public NormalBlock(String id){
        super(id);
        owner=new Player("no","no");
    }
}

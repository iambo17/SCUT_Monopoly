package iambo.element.block.normal;

import iambo.element.Player;
import iambo.element.block.NormalBlock;

public class TBuild extends NormalBlock {
    private Player owner;
    public TBuild(String id){
        super(id);
        owner=new Player("no","no");
    }
    public void setOwner(Player player){
        this.owner=player;
    }

    @Override
    public void buy(boolean want_to_buy,boolean want_to_level,Player player) throws Exception {
        if (!isBought) {
            //是否购买信息;
            if (want_to_buy) { //购买
                buy_action(player);
            }
        } else {
            if (player.getName().equals(owner.getName())) {  //判断是否owner
                //是否升级
                if (want_to_level) {
                    upLevel(player);
                }
            } else {
                payMoney(player);
            }
        }
    }
    @Override
    public boolean upLevel(Player player) {
        int now_level = getLevel();
        if (now_level == 3) {
            return false;
        }
        int need_money = getNeedMoney(now_level);
        if(player.getCeramic()){
            need_money=0;
            player.outCeramic();
        }
        if (player.getMoney() >= need_money) {
            //扣除现有资产
            player.setMoney(player.getMoney()-need_money);
            setLevel(now_level + 1);
            return true;
        } else {
            //资产不足无法购买
            System.out.println("money is not enough");
            return false;
        }
    }
    @Override
    public boolean payMoney(Player player) {  //补充其他玩家类
        int now_level = getLevel();
        int needPay;
        switch (now_level) {
            case 1: {
                needPay = 10;
                break;
            }
            case 2: {
                needPay = 30;
                break;
            }
            case 3: {
                needPay = 60;
                break;
            }
            default: {
                needPay = 0;
                break;
            }
        }
        if (player.getMoney() > needPay) {
            //扣除过路玩家资产
            player.setMoney(player.getMoney()-needPay);
            return true;
        } else {
            //破产？？or 贩卖资产(待定);
            player.setFalse();
            return false;
        }
    }
    @Override
    public int getLevel() {
        return level;
    }
    @Override
    public void setLevel(int level) {
        this.level = level;
    }
    @Override
    public int getNeedMoney(int level) {
        if (level == 1) {
            //temp
            return 25;
        } else {
            if (level == 2) {
                return 25;
            }
        }
        return 0;  //异常处理
    }
    @Override
    public boolean buy_action(Player player){
        int money = player.getMoney();
        int need_money=this.buyNeedMoney();
        if(player.getCeramic()){
            need_money=0;
            player.outCeramic();
        }
        if(money>=need_money){
            isBought = true;
            setOwner(player);
            player.setMoney(player.getMoney()-need_money);
            return true;
        }else{
            System.out.println("money is not enough");
            return false;
        }
    }

    @Override
    public int buyNeedMoney() {
        return 50;
    }

    @Override
    public int reduceNeedMoney() {
        int needPay;
        switch (this.getLevel()) {
            case 1: {
                needPay = 10;
                break;
            }
            case 2: {
                needPay = 30;
                break;
            }
            case 3: {
                needPay = 60;
                break;
            }
            default: {
                needPay = 0;
                break;
            }
        }
        return needPay;
    }
}

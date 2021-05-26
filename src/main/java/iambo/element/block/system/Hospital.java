package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

public class Hospital extends SystemBlock {
    public Hospital(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //被医生误认为生病 停止一回合
        return new String[]{"被医生误认为生病，被医院隔离，停止一回合","1"};
    }
}

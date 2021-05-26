package iambo.element.block.system;

import iambo.element.Player;
import iambo.element.block.SystemBlock;

import java.util.Random;

public class B1 extends SystemBlock {
    public B1(String id) {
        super(id);
    }

    @Override
    public String[] function(Player player) {
        //随机事件  从SystemBlock
        int ran=new Random().nextInt(11);
        SystemBlock[] sb={new B1001("B1001"),new Canteen("Canteen"),new Center("Center"),new Ceramic("Ceramic"),
        new Gym("Gym"),new Hospital("Hospital"),new Library("Library"),new Medical("Medical"),
        new Music("Music"),new Swimming("Swimming"),new Tennis("Tennis")};
        SystemBlock random=sb[ran];
        String[] rdm=random.function(player);
        return new String[]{("B1随机事件:"+rdm[0]),rdm[1]};
    }
}

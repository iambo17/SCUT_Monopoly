package iambo.game;

import iambo.element.block.*;
import iambo.element.block.normal.*;
import iambo.element.block.system.*;

import java.util.ArrayList;

public class Map {
    private final ArrayList<Block> map; //地图链表

    {
        map= new ArrayList<>(32);
    }

    public Map() {
        //constructor
        createBlockList();
    }

    public ArrayList<Block> getMap() {
        return map;
    }

    public Block get(int position){
        return map.get(position);
    }

    private void createBlockList() {
        Block music = new Music("music");
        Block library = new Library("library");
        Block gym = new Gym("gym");
        Block a1 = new ABuild("a1");
        Block a2 = new ABuild("a2");
        Block a3 = new ABuild("a3");
        Block a4 = new ABuild("a4");
        Block a5 = new ABuild("a5");
        Block swimming = new Swimming("swimming");
        Block tennis = new Tennis("tennis");
        Block canteen = new Canteen("canteen");
        Block hospital = new Hospital("hospital");
        Block t7 = new TBuild("t7");
        Block t6 = new TBuild("t6");
        Block t1 = new TBuild("t1");
        Block ceramic = new Ceramic("ceramic");
        Block b1001 = new B1001("b1001");
        Block b11 = new BBuild("b11");
        Block b1002 = new BBuild("b1002");
        Block b901 = new BBuild("b901");
        Block b902 = new BBuild("b902");
        Block center = new Center("center");
        Block b7 = new BBuild("b7");
        Block b5 = new BBuild("b5");
        Block b3 = new BBuild("b3");
        Block b1 = new B1("b1");
        Block b2 = new BBuild("b2");
        Block b12 = new BBuild("b12");
        Block medical = new Medical("medical");
        Block b4 = new BBuild("b4");
        Block b6 = new BBuild("b6");
        Block b8 = new BBuild("b8");
        map.add(music);
        map.add(library);
        map.add(gym);
        map.add(a1);
        map.add(a2);
        map.add(a3);
        map.add(swimming);
        map.add(a4);
        map.add(a5);
        map.add(tennis);
        map.add(canteen);
        map.add(hospital);
        map.add(t7);
        map.add(t6);
        map.add(ceramic);
        map.add(b11);
        map.add(b1002);
        map.add(b1001);
        map.add(b901);
        map.add(b902);
        map.add(t1);
        map.add(center);
        map.add(b7);
        map.add(b5);
        map.add(b3);
        map.add(b1);
        map.add(b2);
        map.add(b12);
        map.add(medical);
        map.add(b4);
        map.add(b6);
        map.add(b8);
    }
}

package iambo.test;

import iambo.element.block.Block;
import iambo.game.Map;
import org.junit.Test;

import java.util.ArrayList;

public class testMap {
    @Test
    public void test1() {
        ArrayList<Block> map=new Map().getMap();
        int counter=0;
        while(counter<map.size()){
            System.out.println(map.get(counter).getId());
            counter++;
        }
    }
    @Test
    public void test2(){
        ArrayList<Block> map=new Map().getMap();
        for(int i=0;i<map.size();i++){
            if(map.get(i).getId().equals("center")){
                System.out.println(i);
            }
        }
    }
    public static void main(String[] args){

    }
}

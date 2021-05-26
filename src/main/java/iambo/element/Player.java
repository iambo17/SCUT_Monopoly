package iambo.element;

import java.io.*;

/**
 * money 学分
 * name no 信息
 * position 当前所在位置
 * status  true: 正常 false: 破产
 */
public class Player {
    private File money;
    private String name;
    private String no;
    private File position;
    private boolean status;
    private boolean ceramic;

    {
        status = true;
        ceramic=false;
    }

    public Player() {
    }

    public Player(String name, String no) {
        this.setName(name);
        this.setNo(no);
    }

    public void addMoney(int add) {
        int nowMoney = this.getMoney();
        nowMoney += add;
        this.setMoney(nowMoney);
    }

    public void reduceMoney(int reduce) {
        int nowMoney = this.getMoney();
        if (nowMoney > reduce) {
            nowMoney -= reduce;
            this.setMoney(nowMoney);
        } else {
            //破产
            System.out.println("player is poor");
            this.setMoney(0);
            status = false;
        }
    }

    public int getMoney() {
        int result, length = 0;
        char[] ch = new char[8];
        try {
            FileReader fr = new FileReader(this.money);
            length = fr.read(ch, 0, 8);
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String ans = new String(ch, 0, length);
        result = Integer.parseInt(ans);
        return result;
    }

    public void setMoney(int nowMoney) {
        FileWriter fw;
        String wp = String.valueOf(nowMoney);
        try {
            fw = new FileWriter(this.money, false);
            fw.write(wp);
            fw.flush();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void initMoney(String path) {
        money = new File(path);
        FileWriter fw;
        try {
            fw = new FileWriter(this.money, false);
            fw.write("150");
            fw.flush();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public int getPosition() {
        int result, length = 0;
        char[] ch = new char[8];
        try {
            FileReader fr = new FileReader(this.position);
            length = fr.read(ch, 0, 8);
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String ans = new String(ch, 0, length);
        result = Integer.parseInt(ans);
        return result;
    }

    public void addPosition(int length) {
        int nowPosition = this.getPosition();
        int writePosition = nowPosition + length;
        if (nowPosition < 21 && writePosition >= 21) {
            writePosition = 21; //center function: 拦截
        }
        if (writePosition >= 32) {
            writePosition %= 32;
            this.addMoney(40);
        }
        String wp = String.valueOf(writePosition);
        FileWriter fw;
        try {
            fw = new FileWriter(this.position);
            fw.write(wp);
            fw.flush();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void initPosition(String path) {
        position = new File(path);
        FileWriter fw;
        try {
            fw = new FileWriter(this.position, false);
            fw.write("0");
            fw.flush();
            fw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void setFalse() {
        this.status = false;
    }

    public boolean getStatus() {
        return this.status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNo() {
        return no;
    }

    public void setNo(String no) {
        this.no = no;
    }

    public void setCeramic(){
        this.ceramic=true;
    }

    public boolean getCeramic(){
        return ceramic;
    }

    public void outCeramic(){
        this.ceramic=false;
    }
}

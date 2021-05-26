package iambo.element.block;


public abstract class Block {
    private Block block;
    private String id;

    public Block() {

    }

    public Block(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }

    public void setBlock(Block block) {
        this.block = block;
    }

    public Block getBlock() {
        return block;
    }

    public abstract boolean isSystem();
}

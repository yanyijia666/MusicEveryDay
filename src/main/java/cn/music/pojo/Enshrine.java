package cn.music.pojo;

/**
 * 歌单收藏表
 */
public class Enshrine {
    private int enshrineId;//编号
    private User userId;//收藏的用户
    private Collect collectId;//收藏歌单

    public int getEnshrineId() {
        return enshrineId;
    }

    public void setEnshrineId(int enshrineId) {
        this.enshrineId = enshrineId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public Collect getCollectId() {
        return collectId;
    }

    public void setCollectId(Collect collectId) {
        this.collectId = collectId;
    }

    @Override
    public String toString() {
        return "Enshrine{" +
                "enshrineId=" + enshrineId +
                ", userId=" + userId +
                ", collectId=" + collectId +
                '}';
    }
}

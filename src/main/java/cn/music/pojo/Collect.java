package cn.music.pojo;

/**
 * 歌单表
 */
public class Collect {
    private int  collectId;//歌单编号
    private String  collectImg;//封面
    private User  UserId;//创建用户
    private int  clicks;//歌单点击率
    private String  collectBrief;//歌单简介

    public int getCollectId() {
        return collectId;
    }

    public void setCollectId(int collectId) {
        this.collectId = collectId;
    }

    public String getCollectImg() {
        return collectImg;
    }

    public void setCollectImg(String collectImg) {
        this.collectImg = collectImg;
    }

    public User getUserId() {
        return UserId;
    }

    public void setUserId(User userId) {
        UserId = userId;
    }

    public int getClicks() {
        return clicks;
    }

    public void setClicks(int clicks) {
        this.clicks = clicks;
    }

    public String getCollectBrief() {
        return collectBrief;
    }

    public void setCollectBrief(String collectBrief) {
        this.collectBrief = collectBrief;
    }

    @Override
    public String toString() {
        return "Collect{" +
                "collectId=" + collectId +
                ", collectImg='" + collectImg + '\'' +
                ", UserId=" + UserId +
                ", clicks=" + clicks +
                ", collectBrief='" + collectBrief + '\'' +
                '}';
    }
}

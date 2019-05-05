package cn.music.pojo;

/**
 * 我的喜欢表
 */
public class MyLike {
    private int likeId;//编号
    private User userId;//用户Id
    private Music musicId;//音乐Id

    public int getLikeId() {
        return likeId;
    }

    public void setLikeId(int likeId) {
        this.likeId = likeId;
    }

    public User getUserId() {
        return userId;
    }

    public void setUserId(User userId) {
        this.userId = userId;
    }

    public Music getMusicId() {
        return musicId;
    }

    public void setMusicId(Music musicId) {
        this.musicId = musicId;
    }

    @Override
    public String toString() {
        return "MyLike{" +
                "likeId=" + likeId +
                ", userId=" + userId +
                ", musicId=" + musicId +
                '}';
    }
}

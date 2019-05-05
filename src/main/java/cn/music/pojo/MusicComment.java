package cn.music.pojo;

import java.util.Date;

/**
 * 音乐评论表
 */
public class MusicComment {
    private int commentId;//编号
    private User userId;//评论的用户编号
    private Music musicId;//评论的音乐编号
    private String commentContent;//评论的内容
    private Date commnetTime;//评论的时间

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
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

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Date getCommnetTime() {
        return commnetTime;
    }

    public void setCommnetTime(Date commnetTime) {
        this.commnetTime = commnetTime;
    }

    @Override
    public String toString() {
        return "MusicComment{" +
                "commentId=" + commentId +
                ", userId=" + userId +
                ", musicId=" + musicId +
                ", commentContent='" + commentContent + '\'' +
                ", commnetTime=" + commnetTime +
                '}';
    }
}

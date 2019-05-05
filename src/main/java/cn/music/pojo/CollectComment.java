package cn.music.pojo;

import java.util.Date;

/**
 * 歌单评论表
 */
public class CollectComment {
    private int commentId;//编号
    private User userId;//评论的用户
    private Collect collectId;//评论的歌单
    private String commentContent;//评论的内容
    private Date commnetTime;//评论时间

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

    public Collect getCollectId() {
        return collectId;
    }

    public void setCollectId(Collect collectId) {
        this.collectId = collectId;
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
        return "CollectComment{" +
                "commentId=" + commentId +
                ", userId=" + userId +
                ", collectId=" + collectId +
                ", commentContent='" + commentContent + '\'' +
                ", commnetTime=" + commnetTime +
                '}';
    }
}

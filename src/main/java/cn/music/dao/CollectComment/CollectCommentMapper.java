package cn.music.dao.CollectComment;

import cn.music.pojo.CollectComment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("collectCommentMapper")
public interface CollectCommentMapper {
    /**
     * 根据歌单编号得到歌单评论
     * @param collectId
     * @return
     */
    List<CollectComment> getCollectCommentByCollectId(Integer collectId);

    /**
     * 根据用户编号拿到该用评论的过的歌单
     * @param userId
     * @return
     */
    List<CollectComment> getCollectCommentByUserId(Integer userId);
    /**
     * 根据评论编号删除评论
     * @param collectCommentId
     * @return
     */
    int deleteCollectCommentByCollectCommentId(Integer collectCommentId);

    /**
     * 新增一条歌单评论
     * @param collectComment
     * @return
     */
    int addCollectComment(CollectComment collectComment);
}

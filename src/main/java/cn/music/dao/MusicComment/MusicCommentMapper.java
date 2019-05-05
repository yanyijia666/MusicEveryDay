package cn.music.dao.MusicComment;

import cn.music.pojo.Music;
import cn.music.pojo.MusicComment;
import cn.music.service.impl.MusicCommentServiceImpl;
import org.omg.CORBA.INTERNAL;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("musicCommentMapper")
public interface MusicCommentMapper {
    /**
     * 根据音乐编号拿到该音乐评论
     * @param musicId
     * @return
     */
    List<MusicComment> getMusicCommentByMusicId(Integer musicId);

    /**
     * 根据用户编号拿到该用户的评论
     * @param userId
     * @return
     */
    List<MusicComment> getMusicCommentByUserId(Integer userId);

    /**
     * 根据音乐编号拿到该音乐评论数
     * @param musicId
     * @return
     */
    int MusicCommentByMusicIdCount(Integer musicId);

    /**
     * 根据用户编号拿到该用户评论数
     * @param userId
     * @return
     */
    int MusicCommetnByUserIdCount(Integer userId);

    /**
     * 新增一条音乐评论记录
     * @param musicComment
     * @return
     */
    int addMusicComment(MusicComment musicComment);

    /**
     * 根据评论编号删除音乐评论
     * @param MusicCommetnId
     * @return
     */
    int deleteMusicCommentByMusicCommetnId(Integer MusicCommetnId);
}

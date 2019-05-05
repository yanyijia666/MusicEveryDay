package cn.music.dao.MyLike;

import cn.music.pojo.Music;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("MyLikeMapper")
public interface MyLikeMapper {
    /**
     * 根据用户编号拿到该用户喜欢的音乐
     * @param userId
     * @return
     */
    List<Music> getMusicByUserId(Integer userId);

    /**
     * 根据用户编号拿到该用户喜欢的音乐数量
     * @param userId
     * @return
     */
    int MusicCountByUserId(Integer userId);

    /**
     * 新增一条喜欢记录
     * @param userId
     * @param musicId
     * @return
     */
    int addMyLike(Integer userId,Integer musicId);

    /**
     * 根据我的喜欢编号删除一条喜欢记录
     * @param likeId
     * @return
     */
    int deleteMyLikeByLikeId(Integer likeId);

    /**
     * 根据音乐编号查看喜欢的用户人数
     * @param musicId
     * @return
     */
    int MusicMyLikeCountByMusicId(Integer musicId);


}

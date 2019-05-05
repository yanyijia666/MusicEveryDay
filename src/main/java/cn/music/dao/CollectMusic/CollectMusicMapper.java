package cn.music.dao.CollectMusic;

import cn.music.pojo.Music;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("CollectMusicMapper")
public interface CollectMusicMapper {
    /**
     * 根据歌单编号拿到歌单包含音乐
     * @param collectId
     * @return
     */
    List<Music> getCollectByCollectId(Integer collectId);

    /**
     * 根据歌单编号拿到歌单歌曲数量
     * @param collectId
     * @return
     */
    int CollectCountByCollectId(Integer collectId);

    /**
     * 新增一条歌单记录
     * @param collectId
     * @param musicId
     * @return
     */
    int addCollectMusic(Integer collectId,Integer musicId);

    /**
     * 根据编号删除一条歌单记录
     * @param MusicByCollectMusicId
     * @return
     */
    int deleteCollectMusicByCollectMusicId(Integer MusicByCollectMusicId);



}

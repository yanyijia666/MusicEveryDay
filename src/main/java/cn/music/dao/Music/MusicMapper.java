package cn.music.dao.Music;

import cn.music.pojo.Music;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("musicMapper")
public interface MusicMapper {
    /**
     * 得到所有音乐
     * @return
     */
    List<Music> getMusicList();

    /**
     * 根据音乐名得到音乐对象
     * @param musicName
     * @return
     */
    Music getMusicByMusicName(String musicName);

    /**
     * 根据音乐编号得到音乐对象
     * @param musicId
     * @return
     */
    Music getMusicByMusicId(Integer musicId);

    /**
     * 得到音乐总数
     * @return
     */
    int  musicCount();

    /**
     * 新增一条音乐记录
     * @param music
     * @return
     */
    int addMusic(Music music);

    /**
     * 根据编号删除音乐记录
     * @param music
     * @return
     */
    int deleteMusicByMusicId(Integer music);

    /**
     * 根据编号修改音乐信息
     * @param music
     * @return
     */
    int updateMusicByMusicId(Music music);

    /**
     * 根据音乐类别得到音乐集合
     * @param typeId
     * @return
     */
    List<Music> getMusicTypeId(Integer typeId);

    /**
     * 根据专辑编号得到该专辑音乐集合
     * @param album
     * @return
     */
    List<Music> getMusicAlbumId(Integer album);
}

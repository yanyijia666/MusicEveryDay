package cn.music.service;

import cn.music.pojo.Music;

import java.util.List;

public interface MusicService {

    /**
     * 得到所有音乐
     * @return
     */
    List<Music> getMusicList( Integer dangqian,Integer paagenum);
}

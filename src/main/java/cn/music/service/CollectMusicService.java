package cn.music.service;

import cn.music.pojo.Music;

import java.util.List;

public interface CollectMusicService {
    List<Music> getCollectByCollectId(Integer collectId);
    int CollectCountByCollectId(Integer collectId);
}

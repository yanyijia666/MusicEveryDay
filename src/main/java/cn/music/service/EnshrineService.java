package cn.music.service;

import cn.music.pojo.Collect;

import java.util.List;

public interface EnshrineService {

    List<Collect> getCollectByUserId(Integer userId);

    int addEnshrine(Integer userId,Integer collectId);
}

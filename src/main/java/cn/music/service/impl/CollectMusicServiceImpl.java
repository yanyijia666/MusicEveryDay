package cn.music.service.impl;

import cn.music.dao.CollectMusic.CollectMusicMapper;
import cn.music.pojo.Music;
import cn.music.service.CollectMusicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("CollectMusicService")
public class CollectMusicServiceImpl implements CollectMusicService {
    @Resource
    private CollectMusicMapper collectMusicMapper;

    @Override
    public List<Music> getCollectByCollectId(Integer collectId) {
        return collectMusicMapper.getCollectByCollectId(collectId);
    }

    @Override
    public int CollectCountByCollectId(Integer collectId) {
        return collectMusicMapper.CollectCountByCollectId(collectId);
    }


}


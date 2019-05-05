package cn.music.service.impl;

import cn.music.dao.CollectMusic.CollectMusicMapper;
import cn.music.service.CollectMusicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("CollectMusicService")
public class CollectMusicServiceImpl implements CollectMusicService {
    @Resource
    private CollectMusicMapper collectMusicMapper;

}

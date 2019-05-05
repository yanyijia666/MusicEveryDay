package cn.music.service.impl;

import cn.music.dao.Music.MusicMapper;
import cn.music.service.MusicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("MusicServiceImpl")
public class MusicServiceImpl implements MusicService {
    @Resource
    private MusicMapper musicMapper;
}

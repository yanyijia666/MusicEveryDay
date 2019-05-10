package cn.music.service.impl;

import cn.music.dao.Album.AlbumMapper;
import cn.music.service.AlbumService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("AlbumService")
public class AlbumServiceImpl implements AlbumService {

    @Resource
    private AlbumMapper albumMapper;
}

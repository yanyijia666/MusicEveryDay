package cn.music.service.impl;

import cn.music.dao.MyLike.MyLikeMapper;
import cn.music.service.MyLikeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("MyLikeService")
public class MyLikeServiceImpl implements MyLikeService {
    @Resource
    private MyLikeMapper myLikeMapper;
}

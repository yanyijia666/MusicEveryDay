package cn.music.service.impl;

import cn.music.dao.MyLike.MyLikeMapper;
import cn.music.pojo.Music;
import cn.music.service.MyLikeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("MyLikeService")
public class MyLikeServiceImpl implements MyLikeService {
    @Resource
    private MyLikeMapper myLikeMapper;
    @Override
    public List<Music> getMusicByUserId(Integer userId) {
        return myLikeMapper.getMusicByUserId(userId);
    }

    @Override
    public int deleteMyLikeByLikeId(Integer likeId) {
        return myLikeMapper.deleteMyLikeByLikeId(likeId);
    }
}

package cn.music.service.impl;

import cn.music.dao.CollectComment.CollectCommentMapper;
import cn.music.dao.CollectMusic.CollectMusicMapper;
import cn.music.service.CollectCommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("CollectCommentService")
public class CollectCommentServiceImpl implements CollectCommentService {
    @Resource
    private CollectCommentMapper collectCommentMapper;
}

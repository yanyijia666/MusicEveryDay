package cn.music.service.impl;

import cn.music.dao.MusicComment.MusicCommentMapper;
import cn.music.service.MusicCommentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("MusicCommentService")
public class MusicCommentServiceImpl implements MusicCommentService {
     @Resource
    private MusicCommentMapper musicCommentMapper;
}

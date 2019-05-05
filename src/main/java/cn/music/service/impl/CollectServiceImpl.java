package cn.music.service.impl;

import cn.music.dao.Collect.CollectMapper;
import cn.music.service.CollectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("CollectService")
public class CollectServiceImpl implements CollectService {
    @Resource
    private CollectMapper collectMapper;
}

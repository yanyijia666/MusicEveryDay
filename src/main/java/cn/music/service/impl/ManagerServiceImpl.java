package cn.music.service.impl;

import cn.music.dao.Manager.ManagerMapper;
import cn.music.service.ManagerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("ManagerService")
public class ManagerServiceImpl implements ManagerService {
    @Resource
    private ManagerMapper managerMapper;
}

package cn.music.service.impl;

import cn.music.dao.User.UserMapper;
import cn.music.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;
}

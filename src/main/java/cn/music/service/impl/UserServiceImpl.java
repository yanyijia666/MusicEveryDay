package cn.music.service.impl;

import cn.music.dao.User.UserMapper;
import cn.music.pojo.User;
import cn.music.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;


    /**
     * 登陆
     * @param userName
     * @param usrePwd
     * @return
     */
    @Override
    public User login(String userName, String usrePwd) {
        return userMapper.login(userName,usrePwd);
    }

    /**
     * 新增
     * @param user
     * @return
     */
    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    /**
     * 修改
     * @param user
     * @return
     */
    @Override
    public int updateUserByUserId(User user) {
        return userMapper.updateUserByUserId(user);
    }


}

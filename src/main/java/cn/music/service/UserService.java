package cn.music.service;

import cn.music.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    /**
     * 用户登入
     *
     * @param userName
     * @param usrePwd
     * @return
     */
    User login(String userName,String usrePwd);

    /**
     * 新增一条用户记录
     *
     * @param user
     * @return
     */
    int addUser(User user);

    /**
     * 根据用户编号修改用户信息
     *
     * @param user
     * @return
     */
    int updateUserByUserId(User user);
}

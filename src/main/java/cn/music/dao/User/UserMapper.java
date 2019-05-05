package cn.music.dao.User;

import cn.music.pojo.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userMapper")
public interface UserMapper {

    /**
     * 得到用户集合
     *
     * @return
     */
    List<User> getUserList();

    /**
     * 根据用户编号得到用户对象
     *
     * @param usrId
     * @return
     */
    User getUserByUserId(Integer usrId);

    /**
     * 根据用户名得到用户对象
     *
     * @param userName
     * @return
     */
    User getUserByUserName(String userName);

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

    /**
     * 根据用户编号删除用户记录
     *
     * @return
     */
    int deleteUserByUserId();

    /**
     * 用户登入
     *
     * @param userName
     * @param usrePwd
     * @return
     */
    User login(String userName, String usrePwd);


}

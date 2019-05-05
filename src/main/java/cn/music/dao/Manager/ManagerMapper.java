package cn.music.dao.Manager;

import cn.music.pojo.Manager;
import org.springframework.stereotype.Repository;

@Repository("managerMapper")
public interface ManagerMapper {
    /**
     * 根据编号拿到管理员对象
     * @param id
     * @return
     */
    Manager getManagerById(Integer id);

    /**
     * 根据名称拿到管理员对象
     * @param name
     * @return
     */
    Manager getManagerByName(String name);

    /**
     * 管理员登入
     * @param name
     * @param pwd
     * @return
     */
    Manager login(String name,String pwd);
}

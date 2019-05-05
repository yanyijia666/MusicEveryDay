package cn.music.dao.Enshrine;

import cn.music.pojo.Collect;
import org.springframework.stereotype.Repository;

import java.net.Inet4Address;
import java.util.List;

@Repository("enshrineMapper")
public interface EnshrineMapper {
    /**
     * 根据用户编号得到用户收藏歌单
     * @param userId
     * @return
     */
    List<Collect> getCollectByUserId(Integer userId);

    /**
     * 根据用户编号得到用户收藏歌单数量
     * @param userId
     * @return
     */
    int CollectCountByUserId(Integer userId);

    /**
     * 新增一条收藏记录
     * @param userId
     * @param collectId
     * @return
     */
    int addEnshrine(Integer userId,Integer collectId);

    /**
     * 根据收藏编号删除收藏记录
     * @param enshrineId
     * @return
     */
    int deleteEnshrineByEnshrineId(Inet4Address enshrineId);
}

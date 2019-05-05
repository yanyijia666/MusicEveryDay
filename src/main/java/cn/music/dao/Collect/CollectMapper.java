package cn.music.dao.Collect;

import cn.music.pojo.Collect;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("collectMapper")
public interface CollectMapper {
    /**
     * 得到所有歌单信息
     * @return
     */
     List<Collect> getCollectList();

    /**
     * 根据编号拿到歌单对象
     * @param collectId
     * @return
     */
     Collect getCollectByCollectId(Integer collectId);

    /**
     * 根据歌单名得到歌单对象
     * @param collectName
     * @return
     */
     Collect getCollectByCollectName(String collectName);

    /**
     * 新增一个歌单
     * @param collect
     * @return
     */
     int addCollect(Collect collect);

    /**
     * 根据编号删除歌单
     * @param collectId
     * @return
     */
     int deleteCollectByCollectId(Integer collectId);

    /**
     * 根据编号修改歌单
     * @param collect
     * @return
     */
     int updateCollectByCollectId(Collect collect);
}

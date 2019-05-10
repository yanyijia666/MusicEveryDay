package cn.music.service.impl;

import cn.music.dao.Enshrine.EnshrineMapper;
import cn.music.pojo.Collect;
import cn.music.service.EnshrineService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("EnshrineService")
public class EnshrineServiceImpl implements EnshrineService {
    @Resource
    private EnshrineMapper enshrineMapper;

    @Override
    public List<Collect> getCollectByUserId(Integer userId) {
        return enshrineMapper.getCollectByUserId(userId);
    }

    @Override
    public int addEnshrine(Integer userId, Integer collectId) {
        return enshrineMapper.addEnshrine(userId, collectId);
    }
}

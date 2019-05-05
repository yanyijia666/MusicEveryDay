package cn.music.service.impl;

import cn.music.dao.Enshrine.EnshrineMapper;
import cn.music.service.EnshrineService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("EnshrineService")
public class EnshrineServiceImpl implements EnshrineService {
    @Resource
    private EnshrineMapper enshrineMapper;
}

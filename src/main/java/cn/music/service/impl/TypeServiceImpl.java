package cn.music.service.impl;

import cn.music.dao.Type.TypeMapper;
import cn.music.service.TypeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("TypeService")
public class TypeServiceImpl implements TypeService {

    @Resource
    private TypeMapper typeMapper;
}

package cn.music.service.impl;

import cn.music.dao.Music.MusicMapper;
import cn.music.pojo.Music;
import cn.music.service.MusicService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("MusicServiceImpl")
public class MusicServiceImpl implements MusicService {
    @Resource
    private MusicMapper musicMapper;

    /***
     * 得到所有音乐
     * @return
     */
    @Override
    public List<Music> getMusicList(Integer dangqian,Integer paagenum) {
        return musicMapper.getMusicList(dangqian,paagenum);
    }
}

package cn.music.service;

import cn.music.pojo.Music;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface MyLikeService {
    List<Music> getMusicByUserId( Integer userId);

    int deleteMyLikeByLikeId(Integer likeId);
}

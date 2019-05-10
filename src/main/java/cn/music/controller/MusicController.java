package cn.music.controller;

import cn.music.pojo.Music;
import cn.music.service.MusicService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller("musicController")
public class MusicController {
    @Resource
    private MusicService musicService;


    /***
     * 得到所有音乐
     * @param session
     * @return
     */
    @RequestMapping("/index2.html")
    public String getmusic(HttpSession session ){
        int dangqian=1;
/*分页的公式：
        1：当前页码=（当前页码-1）*每页显示的内容数量
        2：总页码= （总条数%每页显示的条数==0）的话 （总条数%每页显示的条数==0）否则 （总条数%每页显示的条数==0）+1*/
     List<Music> music= musicService.getMusicList((dangqian-1)*12,12);
        List<Music> music1= musicService.getMusicList(12,12);
     session.setAttribute("music1",music1);
        session.setAttribute("music",music);
     return "yinyueguan";
    }



}

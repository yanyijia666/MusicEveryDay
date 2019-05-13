package cn.music.controller;

import cn.music.pojo.Music;
import cn.music.pojo.User;
import cn.music.service.MyLikeService;
import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mylike")
public class MyLikeController {
    @Resource
    MyLikeService myLikeService;
    private static Logger logger = Logger.getLogger("MyLikeController");

    /*显示的喜欢的歌单里的全部歌曲*/
    @RequestMapping("/like.html")
    public String tiaoZhuan(HttpSession session) {
        User user = (User) session.getAttribute("user");
        List<Music> list = myLikeService.getMusicByUserId(user.getUserId());
        session.setAttribute("list", list);
        return "gerenzhongx";
    }

    /*删除一首我喜欢的歌*/
    @RequestMapping("/droup.html")
    @ResponseBody
    public Integer droup(Integer likeId) {
        Integer result = myLikeService.deleteMyLikeByLikeId(likeId);
        return result;

    }
}
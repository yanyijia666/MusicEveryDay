package cn.music.controller;

import cn.music.pojo.Music;
import cn.music.service.MyLikeService;
import org.apache.log4j.Logger;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/mylike")
public class MyLikeController {
    @Resource
    MyLikeService myLikeService;
    private  static Logger logger=Logger.getLogger("MyLikeController");
    /*显示的喜欢的歌单里的全部歌曲*/
    @RequestMapping("/like.html")
    public String tiaoZhuan(HttpSession session, Model model, Integer UserId){
       List<Music> list= myLikeService.getMusicByUserId(5);
       session.setAttribute("list",list);
        return "gerenzhongx";
    }
    /*删除一首我喜欢的歌*/
    @RequestMapping("/droup.html")
    public String droup(Integer likeId){
      Integer result=  myLikeService.deleteMyLikeByLikeId(likeId);
      if (result>0){

          return "/like.html";
      }
    return "/like.html";
    }

}

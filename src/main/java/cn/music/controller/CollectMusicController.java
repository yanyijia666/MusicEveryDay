package cn.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class CollectMusicController {
    @RequestMapping("/index.html")
    public  String getCollectByCollectId(){
        return "index";
    }
    @RequestMapping("/bendi.html")
    public String bendi(){
        return "bendi";
    }
}

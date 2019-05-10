package cn.music.controller;

import cn.music.pojo.User;
import cn.music.service.UserService;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

/**
 * 继承处理时间的类
 */
@Controller("userController")
@RequestMapping("/user")
public class UserController extends BaseController {

    @Resource
    private UserService userService;
    /**
     * 登陆
     * @param session
     * @return
     */
    @RequestMapping("/dologin.html")
    public String login(HttpSession session,String userName,String userPwd){
      User user=  userService.login(userName,userPwd);
        if(user!=null){
            session.setAttribute("user",user);
            return "yinyueguan";
        }else{
            return "login";
        }
    }

    /**
     * 退出登陆
     * @return
     */
    @RequestMapping("/loginOut.html")
    public String loginOut(HttpSession session){
session.removeAttribute("user");
        return "yinyueguan";
    }

    /**
     * 跳转登陆页面
     * @return
     */
    @RequestMapping("/login.html")
    public String tiaologin(){
        return "login";
    }

    /**
     * 跳转注册页面
     * @return
     */
    @RequestMapping("/zhuce1.html")
    public String tiaozhuce(){
        return "zhuce";
    }
    @RequestMapping(value = "/doadd.html",method = RequestMethod.POST)
    public String add(User user){

       int count=userService.addUser(user);
       if (count==1){
           return "redirect:/user/login.html";
       }else{
           return "zhuce";
       }

    }
    /**
     * 跳转修改页面
     * @return
     */
    @RequestMapping("/doupdate.html")
    public String tiaoupdate(HttpSession session){
       User user= (User) session.getAttribute("user");
        if (user!=null){
            session.setAttribute("user",user);
            return "gerenzhongxin";
        }else{
            return "login";
        }

    }

    /**
     * 修改用户信息
     * @param session
     * @param user
     * @param attre
     * @return
     */
   @RequestMapping(value = "/doxiu.html",method = RequestMethod.POST)
    public  String update(HttpSession session,User user,String userid, @RequestParam(value = "attre",required = false) MultipartFile attre) {
       String idPicPath=null;
       //判断是否为空
       if(!attre.isEmpty()){
           //获取文件的路径  File.separator系统的自适应分隔符
           String filePath=session.getServletContext().getRealPath("statics"+ File.separator +"uploadfiles");
           // InputStream filePath=  session.getServletContext().getResourceAsStream("statics"+ File.separator +"uploadfiles");
           //获取源文件名
           String fileOldName=attre.getOriginalFilename();
           //获取文件的后缀
//            String sufix=fileOldName.substring(fileOldName.lastIndexOf(".")+1,fileOldName.length());
           String sufix= FilenameUtils.getExtension(fileOldName);
           List<String> sufixs= Arrays.asList(new String[]{"jpg","png","jpeg","pneg"});
           if(attre.getSize()>500000){
               session.setAttribute("uploadFileError","文件太大了");
               return "yinyueguan";
           }else if(sufixs.contains(sufix)){
               //重新命名，目的就是解决重名和字符乱码问题
               String fileName=System.currentTimeMillis()+new Random().nextInt(1000000)+"_person."+sufix;
               File file=new File(filePath,fileName);
               if(!file.exists()){
                   file.mkdirs();
               }
               try {
                   attre.transferTo(file);
               }catch (Exception e){
                   e.printStackTrace();
                   session.setAttribute("uploadFileError","上传失败");
                   return "index";
               }
               idPicPath=filePath+File.separator+fileName;

           }else{
               session.setAttribute("uploadFileError","文件格式不对");
               return "yinyueguan";
           }
       }
       String path2= idPicPath.substring(idPicPath.lastIndexOf(File.separator)+1);
       user.setUserPortrait(path2);
       user.setUserId(Integer.parseInt(userid));
        if (userService.updateUserByUserId(user)==1){
            return "login";
        }else{
            return "gerenzhongxin";
        }
    }

   /* *//**
     * 修改时验证密码
     * @return
     *//*
    @RequestMapping(value = "/cheakpass.html",method = RequestMethod.POST)
    @ResponseBody
    public boolean cheakpass(String jiuuserPwd,HttpSession session){
      User user= (User) session.getAttribute("user");

        if (user.getUserPwd().equals(jiuuserPwd)) {
            return true;
        }else{
            return false;
        }
    }*/
}

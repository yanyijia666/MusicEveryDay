package cn.music.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.*;

@Controller
public class tests {
    @RequestMapping("/test.html")
    public String fill(HttpSession session){
        String path= session.getServletContext().getRealPath("static"+ File.separator+"music");
        System.out.println("路径=="+path);
        DataInputStream dis = null;
        DataOutputStream dos = null;
        try {
            FileInputStream fis = new FileInputStream("D:\\By2 - 爱丫爱丫.mp3");
            dis=new DataInputStream(fis);

            File fi=new File(path+"\\By2 - 爱丫爱丫.mp3");
            if(!fi.exists()){//如果访问的是目录会报拒绝访问错误
                //先判断文件存不存在，存在就略过，不存在就先得到文件的父级目录并创建，再创建文件
                fi.getParentFile().mkdir();
                fi.createNewFile();
            }
            FileOutputStream fos = new FileOutputStream(path+"\\By2 - 爱丫爱丫.mp3");
            dos = new DataOutputStream(fos);

            int row=0;
          while((row=dis.read())!=-1){
              dos.write(row);
          }
            System.out.println("上传成功！");

        }catch(Exception e){
            e.printStackTrace();
        }finally {
            try {
                dos.close();
                dis.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return "test";
    }
}

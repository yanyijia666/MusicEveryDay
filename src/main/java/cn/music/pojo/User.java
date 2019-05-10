package cn.music.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 用户表
 */
public class User {
    private Integer userId;//用户编号
    private String userPortrait;//用户头像
    private String userName;//用户名
    private String userPwd;//用户密码
    private int sex;//性别
   /* @DateTimeFormat(pattern = "yyyy-MM-dd")*/
    private Date birthData;//出生日期
    private String address;//住址
    private String phone;//电话
    private double money;//用户余额
    private String brief;//简介
    private int vip;//是否会员1.不是2.是
    private int grade;//等级

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserPortrait() {
        return userPortrait;
    }

    public void setUserPortrait(String userPortrait) {
        this.userPortrait = userPortrait;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public Date getBirthData() {
        return birthData;
    }

    public void setBirthData(Date birthData) {
        this.birthData = birthData;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public int getVip() {
        return vip;
    }

    public void setVip(int vip) {
        this.vip = vip;
    }

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userPortrait='" + userPortrait + '\'' +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", sex=" + sex +
                ", birthData=" + birthData +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", money=" + money +
                ", brief='" + brief + '\'' +
                ", vip=" + vip +
                ", grade=" + grade +
                '}';
    }
}

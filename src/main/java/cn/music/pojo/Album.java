package cn.music.pojo;

import java.sql.Date;

/**
 * 专辑表
 */
public class Album {
    private int albumId;//编号
    private String albumName;//专辑名
    private int albumNumber;//专辑歌曲数
    private String albumSinger;//专辑作者
    private Date albumTimee;//发行年份

    public int getAlbumId() {
        return albumId;
    }

    public void setAlbumId(int albumId) {
        this.albumId = albumId;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public int getAlbumNumber() {
        return albumNumber;
    }

    public void setAlbumNumber(int albumNumber) {
        this.albumNumber = albumNumber;
    }

    public String getAlbumSinger() {
        return albumSinger;
    }

    public void setAlbumSinger(String albumSinger) {
        this.albumSinger = albumSinger;
    }

    public Date getAlbumTimee() {
        return albumTimee;
    }

    public void setAlbumTimee(Date albumTimee) {
        this.albumTimee = albumTimee;
    }

    @Override
    public String toString() {
        return "Album{" +
                "albumId=" + albumId +
                ", albumName='" + albumName + '\'' +
                ", albumNumber=" + albumNumber +
                ", albumSinger='" + albumSinger + '\'' +
                ", albumTimee=" + albumTimee +
                '}';
    }
}

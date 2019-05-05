package cn.music.pojo;

/**
 * 音乐表
 */
public class Music {
    private int musicId;//音乐编号
    private String musicName;//音乐名
    private String musicImg;//音乐封面
    private double musicDuration;//音乐时长
    private String singer;//音乐作者
    private Album albumId;//所属专辑
    private String musicUrl;//音乐链接
    private Type typeId;//类别
    private String lyric;//歌词

    public int getMusicId() {
        return musicId;
    }

    public void setMusicId(int musicId) {
        this.musicId = musicId;
    }

    public String getMusicName() {
        return musicName;
    }

    public void setMusicName(String musicName) {
        this.musicName = musicName;
    }

    public String getMusicImg() {
        return musicImg;
    }

    public void setMusicImg(String musicImg) {
        this.musicImg = musicImg;
    }

    public double getMusicDuration() {
        return musicDuration;
    }

    public void setMusicDuration(double musicDuration) {
        this.musicDuration = musicDuration;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public Album getAlbumId() {
        return albumId;
    }

    public void setAlbumId(Album albumId) {
        this.albumId = albumId;
    }

    public String getMusicUrl() {
        return musicUrl;
    }

    public void setMusicUrl(String musicUrl) {
        this.musicUrl = musicUrl;
    }

    public Type getTypeId() {
        return typeId;
    }

    public void setTypeId(Type typeId) {
        this.typeId = typeId;
    }

    public String getLyric() {
        return lyric;
    }

    public void setLyric(String lyric) {
        this.lyric = lyric;
    }

    @Override
    public String toString() {
        return "Music{" +
                "musicId=" + musicId +
                ", musicName='" + musicName + '\'' +
                ", musicImg='" + musicImg + '\'' +
                ", musicDuration=" + musicDuration +
                ", singer='" + singer + '\'' +
                ", albumId=" + albumId +
                ", musicUrl='" + musicUrl + '\'' +
                ", typeId=" + typeId +
                ", lyric='" + lyric + '\'' +
                '}';
    }
}

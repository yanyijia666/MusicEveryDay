package cn.music.dao.Album;

import cn.music.pojo.Album;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("AlbumMapper")
public interface AlbumMapper {
    /**
     * 得到专辑数量
     * @return
     */
    int AlbumCount();

    /**
     * 得到所有专辑
     * @return
     */
    List<Album> getAlbumList();

    /**
     * 根据id拿到专辑对象
     * @param albumId
     * @return
     */
    Album getAlbumById(Integer albumId);

    /**
     *根据专辑名拿到专辑对象
     * @param albumName
     * @return
     */
    Album getAlbum(String albumName);

    /**
     * 新增一张专辑
     * @param album
     * @return
     */
    int addAlbum(Album album);

    /**
     * 根据编号删除专辑
     * @param albumId
     * @return
     */
    int deleteAlbum(Integer albumId);

    /**
     * 根据编号修改专辑
     * @param album
     * @return
     */
    int updateAlbumByAlbumId(Album album);
}

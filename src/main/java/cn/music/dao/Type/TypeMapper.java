package cn.music.dao.Type;

import cn.music.pojo.Type;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("typeMapper")
public interface TypeMapper {
    /**
     * 得到类别集合
     * @return
     */
    List<Type> getType();

    /**
     * 根据类别编号得到类别对象
     * @param typeId
     * @return
     */
    Type getTypeByTypeId(Integer typeId);

    /**
     * 根据类别名得到类别对象
     * @param typeName
     * @return
     */
    Type getTypeByTypeName(Integer typeName);

    /**
     * 新增一个类别
     * @param type
     * @return
     */
    int addType(Type type);

    /**
     * 根据类别编号修改类别
     * @param type
     * @return
     */
    int updateTypeByTypeId(Type type);

    /**
     * 根据类别编号删除类别
     * @param typeId
     * @return
     */
    int deleteByTypeId(Integer typeId);


}

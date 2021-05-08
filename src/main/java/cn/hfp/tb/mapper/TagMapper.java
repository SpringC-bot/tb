package cn.hfp.tb.mapper;

import cn.hfp.tb.pojo.Tag;

import java.util.List;

/**
 * 标签
 */
public interface TagMapper {

    /**
     * 查询所有标签
     * @return
     */
    List<Tag> selectAllTag();
}

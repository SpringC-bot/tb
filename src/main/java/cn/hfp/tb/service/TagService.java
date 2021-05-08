package cn.hfp.tb.service;

import cn.hfp.tb.pojo.Tag;

import java.util.List;

public interface TagService {
    /**
     *查询所有标签
     */
    List<Tag> selectAllTag();
}

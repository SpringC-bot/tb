package cn.hfp.tb.mapper;

import cn.hfp.tb.pojo.SomeoneLike;

import java.util.List;

public interface SomeoneLikeMapper {

    /**
     * 查找所有点赞
     * @return
     */
    List<SomeoneLike> findAllLike();

}

package cn.hfp.tb.service;

import cn.hfp.tb.pojo.SomeoneLike;

import java.util.List;

public interface SomeoneLikeService {
    /**
     * 查找所有点赞
     * @return
     */
    List<SomeoneLike> findAllLike();
}

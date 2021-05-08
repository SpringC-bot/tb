package cn.hfp.tb.service;

import cn.hfp.tb.pojo.UserComment;

import java.util.List;

public interface UserCommentService {
    /**
     * 查询所有评论
     * @return
     */
    List<UserComment> findAllComment();
}

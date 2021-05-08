package cn.hfp.tb.mapper;

import cn.hfp.tb.pojo.UserComment;

import java.util.List;

public interface UserCommentMapper {

    /**
     * 查询所有评论
     * @return
     */
    List<UserComment> findAllComment();
}

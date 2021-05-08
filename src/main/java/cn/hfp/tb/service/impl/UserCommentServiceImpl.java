package cn.hfp.tb.service.impl;

import cn.hfp.tb.mapper.UserCommentMapper;
import cn.hfp.tb.pojo.UserComment;
import cn.hfp.tb.service.UserCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserCommentServiceImpl implements UserCommentService {

    @Autowired
    UserCommentMapper mapper;

    @Override
    public List<UserComment> findAllComment() {
        List<UserComment> allComment = mapper.findAllComment();
        return allComment;
    }
}

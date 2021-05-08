package cn.hfp.tb.service.impl;

import cn.hfp.tb.mapper.SomeoneLikeMapper;
import cn.hfp.tb.pojo.SomeoneLike;
import cn.hfp.tb.service.SomeoneLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SomeoneLikeServiceImpl implements SomeoneLikeService {

    @Autowired
    private SomeoneLikeMapper likeMapper;

    @Override
    public List<SomeoneLike> findAllLike() {
        List<SomeoneLike> allLike = likeMapper.findAllLike();
        return allLike;
    }
}

package cn.hfp.tb.service.impl;

import cn.hfp.tb.mapper.TagMapper;
import cn.hfp.tb.pojo.Tag;
import cn.hfp.tb.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TagServiceImpl implements TagService {

    @Autowired
    private TagMapper tagMapper;

    @Override
    public List<Tag> selectAllTag() {
        List<Tag> tags = tagMapper.selectAllTag();
        return tags;
    }
}

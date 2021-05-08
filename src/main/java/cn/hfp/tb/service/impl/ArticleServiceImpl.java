package cn.hfp.tb.service.impl;

import cn.hfp.tb.mapper.ArticleMapper;
import cn.hfp.tb.pojo.Article;
import cn.hfp.tb.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    @Override
    public List<Article> selectAllArticle() {
        List<Article> articles = articleMapper.selectAllArticle();
        return articles;
    }
}

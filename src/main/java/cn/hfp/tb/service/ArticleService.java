package cn.hfp.tb.service;

import cn.hfp.tb.pojo.Article;

import java.util.List;

public interface ArticleService {

    /**
     * 查询所有文章
     * @return
     */
    List<Article> selectAllArticle();
}

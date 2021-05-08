package cn.hfp.tb.mapper;

import cn.hfp.tb.pojo.Article;

import java.util.List;

public interface ArticleMapper {

    /**
     * 查询所有文章
     * @return
     */
    List<Article> selectAllArticle();

}

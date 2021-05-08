package cn.hfp.tb.utils;

import cn.hfp.tb.pojo.Article;
import cn.hfp.tb.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

public class ArticleListener implements ServletContextListener {

    @Autowired
    private ArticleService articleService;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {

        List<Article> articles = articleService.selectAllArticle();
        HttpServletRequest request = (HttpServletRequest) servletContextEvent;
        request.setAttribute("articles",articles);

        System.out.println(articles);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}

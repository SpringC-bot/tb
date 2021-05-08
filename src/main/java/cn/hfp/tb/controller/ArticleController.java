package cn.hfp.tb.controller;

import cn.hfp.tb.pojo.Article;
import cn.hfp.tb.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

@Controller
@RequestMapping("article")
public class ArticleController{

    @Autowired
    private ArticleService articleService;

    @RequestMapping(path = "/showArticle")
    public void showArticle(HttpServletRequest request , HttpServletResponse response){
        List<Article> articles = articleService.selectAllArticle();

        request.setAttribute("articles",articles);

        System.out.println(articles.get(0).getTitle());

        response.setContentType("text/html;charset=UTF-8");
        return;

    }
}

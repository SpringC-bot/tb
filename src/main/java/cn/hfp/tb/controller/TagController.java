package cn.hfp.tb.controller;

import cn.hfp.tb.pojo.Tag;
import cn.hfp.tb.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class TagController {

    @Autowired
    private TagService tagService;

    @RequestMapping(path = "/findTag")
    public String findTag(HttpServletRequest request){
        List<Tag> tags = tagService.selectAllTag();
        System.out.println(tags);
        request.setAttribute("tags",tags);
        return "admin/test/success";
    }
}

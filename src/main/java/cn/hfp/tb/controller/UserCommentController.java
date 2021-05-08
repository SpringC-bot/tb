package cn.hfp.tb.controller;

import cn.hfp.tb.pojo.UserComment;
import cn.hfp.tb.service.UserCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserCommentController {

    @Autowired
    private UserCommentService service;

    @RequestMapping(path = "/findAllComment")
    public String findAllComment(HttpServletRequest request){
        List<UserComment> allComment = service.findAllComment();
        System.out.println(allComment);
        request.setAttribute("allComment",allComment);
        return "admin/test/success";
    }

}

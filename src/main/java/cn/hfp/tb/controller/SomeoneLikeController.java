package cn.hfp.tb.controller;

import cn.hfp.tb.pojo.SomeoneLike;
import cn.hfp.tb.service.SomeoneLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class SomeoneLikeController {

    @Autowired
    private SomeoneLikeService likeService;

    @RequestMapping(path ="/findAllLike" )
    public String findAllLike(HttpServletRequest request){
        List<SomeoneLike> allLike = likeService.findAllLike();
        System.out.println(allLike);
        request.setAttribute("allLike",allLike);
        return "admin/test/success";
    }
}

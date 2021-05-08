package cn.hfp.tb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HomeController {

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping(path = "/toHome")
    public String toHome(){
        return "admin/pages/Home";
    }

    /**
     * 跳转到登录页面
     * @return
     */
    @RequestMapping("/Login")
    public String Login(){

        return "admin/pages/Login";
    }

    /**
     * 跳转到注册界面
     * @return
     */
    @RequestMapping("/Register")
    public String Register(){

        return "admin/pages/Register";
    }

    /**
     * 用户退出登录
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/userExit")
    public String userExit(HttpServletRequest request, HttpServletResponse response){
        request.getSession().invalidate();//清除所有session数据
        return "admin/pages/Home";
    }

}

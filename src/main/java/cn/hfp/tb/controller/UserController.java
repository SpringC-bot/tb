package cn.hfp.tb.controller;


import cn.hfp.tb.pojo.User;
import cn.hfp.tb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 接收登录表单提交的数据
     * @param request
     * @param response
     * @return
     */
    @RequestMapping("/userLogin")
    public String userLogin(HttpServletRequest request,HttpServletResponse response){
        User user = new User();  //存放表单获取的用户数据
        String error = "登录失败，用户名或密码错误";
        String code; //存放验证码
        HttpSession session = request.getSession();
        Enumeration parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String o = (String) parameterNames.nextElement();
            if (o.equalsIgnoreCase("email") && o != null && o != "") {
                String parameter = request.getParameter(o);
                user.setEmail(parameter);
                System.out.println(parameter);
            } else if (o.equalsIgnoreCase("password") && o != null && o != "") {
                String parameter = request.getParameter(o);
                user.setPassword(parameter);
                System.out.println(parameter);
            } else if (o.equalsIgnoreCase("checkCode") && o != null && o != "") {
                String parameter = request.getParameter(o);
                code = parameter;
                System.out.println(parameter);
            }else{

                session.setAttribute("loginError",error);
                return "admin/pages/LoginError";
            }
        }

        User user1 = userService.selectByEmail(user.getEmail());
        if (user1 != null && user != null){
            if (user1.getPassword().equals(user.getPassword())){
                session.setAttribute("user",user1);
                return "admin/pages/LoginSuccess";
            }else{
                session.setAttribute("loginError",error);
                return "admin/pages/LoginError";
            }
        }else {
            session.setAttribute("loginError",error);
            return "admin/pages/LoginError";
        }

    }

    /**
     * 用户注册
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(path = "/userRegister" ,method = RequestMethod.POST)
    public String userRegister(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("这是第一次");
        User user = new User();
        String firstPassword = null;
        //获取注册表单的所有数据
        Enumeration parameterNames = request.getParameterNames();
        while(parameterNames.hasMoreElements()){
            HttpSession session = request.getSession();
            String o = (String)parameterNames.nextElement();
            if (o.equalsIgnoreCase("email")){
                System.out.println(o);
                user.setEmail(request.getParameter(o));
            }else if (o.equalsIgnoreCase("userName")){
                System.out.println(o);
                user.setUserName(request.getParameter(o));
            }else if (o.equalsIgnoreCase("nickName")){
                System.out.println(o);
                user.setNickName(request.getParameter(o));
            }else if (o.equalsIgnoreCase("password")){
                System.out.println(o);
                System.out.println("第一次密码"+request.getParameter(o));
                firstPassword = request.getParameter(o);
            }else if (o.equalsIgnoreCase("check_password") && o != null && o != ""){
                System.out.println("第二次密码"+request.getParameter(o));
                if (request.getParameter(o).equalsIgnoreCase(firstPassword)){
                    System.out.println("两次输入的密码一样");
                    user.setPassword(request.getParameter(o));
                }else {
                    String error = "输入的密码不一致";
                    session.setAttribute("RegisterError",error);
                    return "admin/pages/RegisterError";
                }
            }else if (o.equalsIgnoreCase("gender")){
                String parameter = request.getParameter(o);
                if (parameter.equals("男")){
                    user.setGender(0); //男0
                }else {
                    user.setGender(1); //女1
                }
            }else if (o.equalsIgnoreCase("phone")){
                user.setPhone(request.getParameter(o));
            }else if (o.equalsIgnoreCase("checkCode")){
                //判断验证码
            }
        }
        user.setRegister(new Date());   //注册时间
        user.setStatus(0);  //初始状态

        userService.insertUser(user);//插入用户
        System.out.println("这是第二次");
        //记录登录的用户名字和信息，直接登录
        HttpSession session = request.getSession();
        session.setAttribute("user",user);


        return "admin/pages/RegisterSuccess";
        //request.getRequestDispatcher(request.getContextPath()+ "/WEB-INF/pages/admin/pages/RegisterSuccess.jsp").forward(request,response);
    }



    @RequestMapping(path = "/findAll")
    public String userMethod(HttpServletRequest request, HttpServletResponse response){
        System.out.println("这里运行了");

        List<User> users = userService.selectAllUser();
        System.out.println(users);
        request.setAttribute("users",users);
        return "admin/test/success";

    }
    @RequestMapping(path = "/toNavigation")
    public String toNavigation(){
        return "admin/Navigation";
    }


}

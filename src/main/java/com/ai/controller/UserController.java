package com.ai.controller;


import javax.servlet.ServletException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import com.ai.po.User;
import com.ai.service.IUserService;
import com.ai.util.CheckNullUtil;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;


@Controller
    @RequestMapping("/user")
    public class UserController {
     @Resource
        private IUserService userService;
     /*退出登录*/
     @RequestMapping("closeIndex")
     public String closeIndex(HttpSession session){
         session.invalidate();

         return "redirect:doLogin.do";
     }

     @RequestMapping("personal")
     public String personalDo(HttpSession session){
         User user = (User) session.getAttribute("user");
         if(user==null){
             String page = "personal";
             session.setAttribute("page",page);
             return "redirect:doLogin.do";
         }
         return "personal";
     }


     /*个人信息中修改路径*/
     @RequestMapping("/update.do")
     public void update(User user, String rePassword, HttpServletResponse response, Model model, HttpServletRequest request,HttpSession session) throws IOException, ServletException {

         boolean password = CheckNullUtil.checkMessage(user.getPassword());
         boolean addr = CheckNullUtil.checkMessage(user.getAddr());
         boolean email = CheckNullUtil.checkMessage(user.getEmail());
         boolean phone = CheckNullUtil.checkMessage(user.getPhone());
         boolean flag = true;

         if(!password){
             model.addAttribute("password","密码不可为空");
             flag = false;
         }
         if(!addr){
             model.addAttribute("addr","地址不可为空");
             flag = false;
         }
         if(!email){
             model.addAttribute("email","邮箱不可为空");
             flag = false;
         }
         if(!phone){
             model.addAttribute("phone","手机号不可为空");
             flag = false;
         }
         if(flag == false){
             request.getRequestDispatcher("/user/personal.do").forward(request,response);
             return;
         }

         if (user.getPhone().length() != 11) {
              return;
         }

         if (!user.getPassword().equals(rePassword)){
             return;
         }

          userService.updateUser(user);
         User sessionUser = (User)session.getAttribute("user");
         sessionUser.setAddr(user.getAddr());
         sessionUser.setEmail(user.getEmail());
         sessionUser.setPhone(user.getPhone());
         response.getWriter().print("ok");
     /*    return "personal";*/
     }



        /*登录页面访问地址*/
        @RequestMapping("/doLogin.do")
        public String doLogin(){
            return  "login";
        }

        /*登录页提交，验证用户名密码*/
        @RequestMapping("checkLogin.do")
        public String checkLogin(String renumberMe,User user, HttpSession session,Model model,HttpServletResponse response) throws UnsupportedEncodingException {

            User userByNameAndPass = userService.findUserByNameAndPass(user);
//            验证是否为空
            if((user.getUsername()==null||"".equals(user.getUsername()))||(user.getPassword()==null||"".equals(user.getPassword()))){
              model.addAttribute("msg2","用户名或密码不能为空");
                return "login";
            }
//            验证用户名和密码是否存在
            if(userByNameAndPass!=null){
                session.setAttribute("user",userByNameAndPass);
            }else{
                model.addAttribute("msg","用户名或密码错误");
                return "login";
            }
            //            创建Cookie,存储信息
            Cookie cookie = new Cookie("user", URLEncoder.encode(user.getUsername()+"-"+user.getPassword(),"UTF-8"));
            if(renumberMe!=null){
                cookie.setMaxAge(60*60*24*7);
                cookie.setPath("/");
            }else {
                cookie.setMaxAge(0);
                cookie.setPath("/");
            }

            response.addCookie(cookie);
            String page = (String)session.getAttribute("page");
            if (page != null){
                 if ("findProductByPid".equals(page)){
                     return "redirect:/ai.com";
                 }
                return page;
            }

            return "redirect:/ai.com";
        }

        /*注册页面访问地址*/
        @RequestMapping("/registerPage.do")
        public String registerPage(HttpServletRequest request, HttpServletResponse response) throws IOException {
            return "register";
        }
        /*注册页面添加用户*/
        @RequestMapping("/doRegister.do")
        public String doRegister(User user, Model model,String yzmCode,HttpSession session){
//           非空验证；
            boolean username = CheckNullUtil.checkMessage(user.getUsername());
            boolean password = CheckNullUtil.checkMessage(user.getPassword());
            boolean nameFlag = CheckNullUtil.checkMessage(user.getName());
            boolean addr = CheckNullUtil.checkMessage(user.getAddr());
            boolean email = CheckNullUtil.checkMessage(user.getEmail());
            boolean phone = CheckNullUtil.checkMessage(user.getPhone());
            String ComputercCode = (String) session.getAttribute("code");
            if (!yzmCode.equalsIgnoreCase(ComputercCode)){

                model.addAttribute("codeMsg","请输入正确的验证码信息");
                return "register";
            }
            boolean flag = true;
            if(!username){
                model.addAttribute("username","用户名不可为空");
                flag = false;
            }
            if(!password){
                model.addAttribute("password","密码不可为空");
                flag = false;
            }
            if(!addr){
                model.addAttribute("addr","地址不可为空");
                flag = false;
            }
            if(!nameFlag){
                model.addAttribute("nameFlag","姓名不可为空");
                flag = false;
            }
            if(!email){
                model.addAttribute("email","邮箱不可为空");
                flag = false;
            }
            if(!phone){
                model.addAttribute("phone","手机号不可为空");
                flag = false;
            }
            if(flag == false){
                return "register";
            }
            userService.addUser(user);
            model.addAttribute("username",user.getUsername());
            return  "login";
        }
        /**
         * 注册页通过AJAX查数据库重复名字
         */
        @RequestMapping("/register.do")
        public void register(String username,HttpServletRequest request, HttpServletResponse response) throws IOException {
            System.out.println(username+"controller");
//            接受客户端信息并执行查询姓名
            User user = userService.registerByName(username);

            if(user==null){
                response.getWriter().print("ok");
            }else{
                response.getWriter().print("no");
            }

        }

    }



package com.ai.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/")
public class YZM {

    @RequestMapping("yzm")
        public void YZMController(HttpServletResponse response, HttpSession session) throws IOException {
        ValidateCode vc = new ValidateCode(170,60,4,100);
        String code = vc.getCode();
        session.setAttribute("code",code);
        vc.write(response.getOutputStream());

        }
        @RequestMapping("getCode")
    public void getCode(HttpSession session,HttpServletResponse response) throws IOException {
            String code = (String)session.getAttribute("code");
            response.getWriter().print(code);
        }
}

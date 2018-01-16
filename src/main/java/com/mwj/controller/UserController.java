package com.mwj.controller;


import com.mwj.bean.BookTypeDangShop;
import com.mwj.bean.User;
import com.mwj.services.BookTypeDangShopServices;
import com.mwj.services.UserServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/")
@Controller
public class UserController {


    @Resource
    private UserServices userServices;

    @Resource
   private BookTypeDangShopServices bookTypeDangShopServices;



    @RequestMapping("register.do")
    @ResponseBody
    public  String register(User user){
       System.out.println("555");
        boolean insert = userServices.insert(user);

        if (insert)
            return
            "{'msg':'success'}";
        else
            return
            "register";
    }



   @RequestMapping("login.do")
    public  String login(String emailNameOrRealName,String userPwd,Model model){
        System.out.println("555");
        boolean login = userServices.login(emailNameOrRealName,userPwd);

        if (login) {
            List<BookTypeDangShop> bookTypeDangShops = bookTypeDangShopServices.showAllBookType();
            model.addAttribute("book",bookTypeDangShops);
            return "index";
        }

            return
                    "login";
    }
}

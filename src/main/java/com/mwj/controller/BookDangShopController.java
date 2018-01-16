package com.mwj.controller;


import com.mwj.bean.BookDangShop;
import com.mwj.services.BookDangShopServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/")
public class BookDangShopController {

    @Resource
    private BookDangShopServices bookDangShopServices;


    @RequestMapping("bookinfo.do")
    public  String show(int bookType, Model model){

        List<BookDangShop> bookDangShops = bookDangShopServices.queryBookByType(bookType);
        model.addAttribute("info",bookDangShops);
        if (bookDangShops != null)
            return
            "index";
        else
            return
            null;



    }
}

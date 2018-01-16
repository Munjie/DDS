package com.mwj.controller;


import com.mwj.bean.BookTypeDangShop;
import com.mwj.services.BookTypeDangShopServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/")
@Controller
public class BookTypeDangShopController {


    @Resource
    private BookTypeDangShopServices bookTypeDangShopServices;



}

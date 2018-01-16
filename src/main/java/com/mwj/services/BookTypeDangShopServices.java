package com.mwj.services;


import com.mwj.bean.BookTypeDangShop;
import com.mwj.dao.BookTypeDangShopDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookTypeDangShopServices {

    @Resource
    private BookTypeDangShopDao bookTypeDangShopDao;

    public List<BookTypeDangShop> showAllBookType(){

      return    bookTypeDangShopDao.showAllBookType();
    }
}

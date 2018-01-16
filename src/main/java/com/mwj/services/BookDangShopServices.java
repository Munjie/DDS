package com.mwj.services;

import com.mwj.bean.BookDangShop;
import com.mwj.dao.BookDangShopDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class BookDangShopServices {

@Resource
private BookDangShopDao bookDangShopDao;

    public List<BookDangShop> queryBookByType(int bookType){

      return   bookDangShopDao.queryBookByType(bookType);
    }

}

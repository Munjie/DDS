package com.mwj.dao;


import com.mwj.bean.BookTypeDangShop;
import com.mwj.mapper.BookTypeDangShopMapper;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class BookTypeDangShopDao {


    @Resource
    private BookTypeDangShopMapper bookTypeDangShopMapper;


    public List<BookTypeDangShop> showAllBookType(){

        return    bookTypeDangShopMapper.showAllBookType();
    }

   }

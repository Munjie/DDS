package com.mwj.mapper;

import com.mwj.bean.BookDangShop;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookDangShopMapper {


    List<BookDangShop> queryBookByType(@Param("bookType") int bookType);

    List<BookDangShop> displayBook();

}
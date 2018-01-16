package com.mwj.dao;

import com.mwj.bean.BookDangShop;
import com.mwj.bean.BookTypeDangShop;
import com.mwj.mapper.BookDangShopMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

@Repository
public class BookDangShopDao {

    @Resource
    private BookDangShopMapper bookDangShopMapper;


//更具书的类型查看书
    public  List<BookDangShop> queryBookByType(int bookType){

        return bookDangShopMapper.queryBookByType(bookType);
    }

//显示全部书
    public   List<BookDangShop> displayBook(){

        return  bookDangShopMapper.displayBook();
    }

}

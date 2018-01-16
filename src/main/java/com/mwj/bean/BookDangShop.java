package com.mwj.bean;

import java.util.Date;

public class BookDangShop {
    private String bookid;

    private String bookname;

    private String authorname;

    private String publishname;

    private Date publishdate;

    private int bookprice;

    private int dangbookPrice;

    private String bookImg;

    private int bookType;

    public int getBookprice() {
        return bookprice;
    }

    public void setBookprice(int bookprice) {
        this.bookprice = bookprice;
    }

    public int getDangbookPrice() {
        return dangbookPrice;
    }

    public void setDangbookPrice(int dangbookPrice) {
        this.dangbookPrice = dangbookPrice;
    }

    public int getBookType() {
        return bookType;
    }

    public void setBookType(int bookType) {
        this.bookType = bookType;
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid == null ? null : bookid.trim();
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname == null ? null : authorname.trim();
    }

    public String getPublishname() {
        return publishname;
    }

    public void setPublishname(String publishname) {
        this.publishname = publishname == null ? null : publishname.trim();
    }

    public Date getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(Date publishdate) {
        this.publishdate = publishdate;
    }



    public void setBookprice(Short bookprice) {
        this.bookprice = bookprice;
    }



    public void setDangbookPrice(Short dangbookPrice) {
        this.dangbookPrice = dangbookPrice;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg == null ? null : bookImg.trim();
    }



    public void setBookType(Short bookType) {
        this.bookType = bookType;
    }
}
package com.mwj.bean;

public class BookTypeDangShop {
    private Short bookTypeId;

    private String bookTypeName;

    private Short bookParentId;

    public Short getBookTypeId() {
        return bookTypeId;
    }

    public void setBookTypeId(Short bookTypeId) {
        this.bookTypeId = bookTypeId;
    }

    public String getBookTypeName() {
        return bookTypeName;
    }

    public void setBookTypeName(String bookTypeName) {
        this.bookTypeName = bookTypeName == null ? null : bookTypeName.trim();
    }

    public Short getBookParentId() {
        return bookParentId;
    }

    public void setBookParentId(Short bookParentId) {
        this.bookParentId = bookParentId;
    }
}
package com.mwj.bean;

public class User {
    private String emailName;

    private String realName;

    private String userPwd;

    private String userGender;

    private String userCity;

    public String getEmailName() {
        return emailName;
    }

    public void setEmailName(String emailName) {
        this.emailName = emailName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserCity() {
        return userCity;
    }

    public void setUserCity(String userCity) {
        this.userCity = userCity;
    }

    @Override
    public String toString() {
        return "User{" +
                "emailName='" + emailName + '\'' +
                ", realName='" + realName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userGender='" + userGender + '\'' +
                ", userCity='" + userCity + '\'' +
                '}';
    }
}
package com.mwj.services;


import com.mwj.bean.User;
import com.mwj.dao.UserDao;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServices {

    @Resource
    private UserDao userDao;

    public  boolean  insert(User user){

        return  userDao.insert(user);
    }

    //用户登录
   /* public  boolean login(String emailName, String realName, String userPwd){

        return userDao.login(emailName, realName, userPwd);

    }*/

    public boolean login(String emailNameOrRealName,String userPwd){


       return userDao.login(emailNameOrRealName, userPwd);

    }

}

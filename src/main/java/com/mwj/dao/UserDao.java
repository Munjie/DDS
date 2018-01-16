package com.mwj.dao;


import com.mwj.bean.User;
import com.mwj.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class UserDao {

    @Resource
    private  UserMapper userMapper;

//用户注册
    public  boolean  insert(User user){

        int insert = userMapper.insert(user);

        return  insert > 0;
    }
//用户登录
   /* public  boolean login(String emailName, String realName, String userPwd){

        int login = userMapper.login(emailName, realName, userPwd);
        return  login > 0;
    }*/

    public boolean login(String emailNameOrRealName,String userPwd){


        int login = userMapper.login(emailNameOrRealName, userPwd);
        return login > 0;

    }

}

package com.mwj.mapper;

import com.mwj.bean.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    int insert(User user);

  //  int login(@Param("emailName") String emailName,@Param("realName") String realName,@Param("userPwd")String userPwd);
    int login(@Param("emailNameOrRealName") String emailNameOrRealName,@Param("userPwd")String userPwd);


}
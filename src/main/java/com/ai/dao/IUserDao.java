package com.ai.dao;

import com.ai.po.User;
import org.springframework.stereotype.Repository;


public interface IUserDao {

    /**
     * 注册页通过AJAX查数据库重复名字
     */
    User registerByName(String username);

//    注册页添加用户

    void addUserDao(User user);

    /*登录页面验证用户名密码*/
    User findUserByNameAndPass(User user);

    /*个人信息页面修改*/
    void updateUser(User user);

}
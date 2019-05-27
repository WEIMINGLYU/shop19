package com.ai.service;

import com.ai.po.User;

public interface IUserService {
    /**
     * 注册页通过AJAX查数据库重复名字
     */
     User registerByName(String username);

    /*添加用户*/
      void addUser(User user);
   /*登录页验证用户名*/
    User findUserByNameAndPass(User user);

    /*个人信息中修改方法*/
    void updateUser(User user);
}
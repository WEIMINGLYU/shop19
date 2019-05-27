package com.ai.service.impl;

import com.ai.dao.IUserDao;
import com.ai.po.User;
import com.ai.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {

    @Resource
    private IUserDao userDao;
    /**
     * 注册页通过AJAX查数据库重复名字
     */
    @Override
    public User registerByName(String username) {

        return userDao.registerByName(username);
    }
//    注册页添加用户
    @Override
    public void addUser(User user) {
        userDao.addUserDao(user);
    }
//   登录页面查询用户名和密码
    @Override
    public User findUserByNameAndPass(User user) {
        return userDao.findUserByNameAndPass(user);
    }
//    个人信息页面修改
    public  void updateUser(User user){
        userDao.updateUser(user);
    }
}

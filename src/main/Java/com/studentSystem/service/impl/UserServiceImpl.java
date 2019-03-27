package com.studentSystem.service.impl;

import com.alibaba.fastjson.JSON;
import com.studentSystem.dao.UserDao;
import com.studentSystem.listener.ProducerService;
import com.studentSystem.model.User;
import com.studentSystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;
import java.util.HashMap;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;
    @Autowired
    private ProducerService producerService;

    public User selectUser(long userId){
        return this.userDao.selectUser(userId);
    }

    @Override
    public void insertUser(User user,String url,String email,String username) {
//        final String code = user.getId()+"";
//        final String email = user.getEmail();
//        final String username = user.getUsername();
        producerService.produce(url,email,username);
        userDao.insertUser(user);


    }

    @Override
    public User searchUserByName(String username) {
        return userDao.searchUser(username);
    }

    @Override
    public void updateUserByEmail(String email, String password) {
        userDao.updateUser(email,password);
    }

    @Override
    public void updateUserMessageByEmail(String email, String img_url, boolean sex, String age, String phone_number, String address, String sign,String student_number) {
        userDao.updateUserMessage(email,img_url,sex,age,phone_number,address,sign,student_number);
    }

    @Override
    public boolean checkAdmin(String username, String password) {
        String dbpassword = userDao.findAdmin(username);
        if(password.equals(dbpassword)){
            return true;
        }
        return false;
    }

    @Override
    public void updateUserById(long id) {
        userDao.updateUserById(id);
    }
}

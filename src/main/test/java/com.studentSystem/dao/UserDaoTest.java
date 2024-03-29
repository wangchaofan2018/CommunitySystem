package com.studentSystem.dao;

import com.studentSystem.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring-mybatis.xml"})
public class UserDaoTest {
    @Autowired
    private UserDao userDao;
    @Test
    public void testSelectUser() throws Exception{
        long id = 1;
        User user = this.userDao.selectUser(id);
        System.out.println(user);
    }

}

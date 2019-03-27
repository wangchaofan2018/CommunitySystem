package com.studentSystem.service;

import com.studentSystem.model.User;

public interface UserService {
    public User selectUser(long userId);
    public void insertUser(User user,String url,String email,String username);
    public User searchUserByName(String username);

    public void updateUserByEmail(String email, String password);

    public void updateUserMessageByEmail(String email, String img_url, boolean sex, String age, String phone_number, String address, String sign,String student_number);

	boolean checkAdmin(String username, String password);

    void updateUserById(long id);
}

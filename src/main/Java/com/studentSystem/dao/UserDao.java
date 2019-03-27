package com.studentSystem.dao;

import com.studentSystem.model.User;

public interface UserDao {
    public User selectUser(long userId);

    public void insertUser(User user);

    public User searchUser(String username);

	public void updateUser(String email, String password);

	public void updateUserMessage(String email, String img_url, boolean sex, String age, String phone_number, String address, String sign,String student_number);

	String findAdmin(String username);

	void updateUserById(long id);
}

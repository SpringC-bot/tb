package cn.hfp.tb.service.impl;

import cn.hfp.tb.mapper.UserMapper;
import cn.hfp.tb.pojo.User;
import cn.hfp.tb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> selectAllUser() {
        return userMapper.selectAllUser();
    }

    @Override
    public User selectByEmail(String email) {
        return userMapper.selectByEmail(email);
    }

    @Override
    public void insertUser(User user) {
        userMapper.insertUser(user);
    }
}

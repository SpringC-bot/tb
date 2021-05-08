package cn.hfp.tb.mapper;

import cn.hfp.tb.pojo.User;

import java.util.List;

public interface UserMapper {

    /**
     * 查询所有用户
     * @return
     */
    List<User> selectAllUser();

    /**
     **根据用户邮箱查询用户
     * @param email
     * @return
     */
    User selectByEmail(String email);

    /**
     * 添加用户
     */
    void insertUser(User user);

}

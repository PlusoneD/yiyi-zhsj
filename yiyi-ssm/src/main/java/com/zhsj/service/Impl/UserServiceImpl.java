package com.zhsj.service.Impl;

import com.zhsj.bean.user.User;
import com.zhsj.dao.TriageDao;
import com.zhsj.dao.UserDao;
import com.zhsj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    // 注入Service依赖
    @Autowired
    UserDao dao;

    @Override
    public List queryAllPatient() {
        return dao.selectAllPatient();
    }

    @Override
    public List queryAllStaff() {
        return dao.selectAllStaff();
    }

    @Override
    public void updateUserPwd(String id, String pwd) {
        dao.updateUserPwd(id, pwd);
    }

    @Override
    public void deleteUser(String id) {
        dao.delUser(id);
    }

}

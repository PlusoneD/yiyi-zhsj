package com.zhsj.service;

import java.util.List;
import java.util.Map;

public interface UserService {
    List queryAllPatient();

    List queryAllStaff();

    void updateUserPwd(String id, String pwd);

    void deleteUser(String id);
}

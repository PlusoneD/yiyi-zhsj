package com.zhsj.dao;

import com.zhsj.bean.user.Patient;
import com.zhsj.bean.user.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {
    List selectAllPatient();

    List selectAllStaff();

    /**
     * @param id
     * @param pwd
     */
    void updateUserPwd(@Param("id") String id, @Param("pwd") String pwd);

    void delUser(String id);
}

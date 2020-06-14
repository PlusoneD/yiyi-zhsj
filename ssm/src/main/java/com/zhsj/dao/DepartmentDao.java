package com.zhsj.dao;

import com.zhsj.bean.user.Department;

import java.util.List;

public interface DepartmentDao {
    List<Department> selectAll();

    Department selectByName(String name);

    Department selectByDepartmentid(String id);
}

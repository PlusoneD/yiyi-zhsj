package com.zhsj.service;

import com.zhsj.bean.user.Department;

import java.util.List;

public interface DepService {
    List<Department> queryAll();

    Department queryByDepid(String id);

    Department queryByName(String name);
}

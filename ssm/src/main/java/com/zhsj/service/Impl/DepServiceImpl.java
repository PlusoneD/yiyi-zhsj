package com.zhsj.service.Impl;

import com.zhsj.bean.user.Department;
import com.zhsj.dao.DepartmentDao;
import com.zhsj.dao.SymptomDao;
import com.zhsj.service.DepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepServiceImpl implements DepService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private DepartmentDao depDao;

    @Override
    public List<Department> queryAll() {
        return depDao.selectAll();
    }

    @Override
    public Department queryByDepid(String id) {
        return depDao.selectByDepartmentid(id);
    }

    @Override
    public Department queryByName(String name) {
        return depDao.selectByName(name);
    }
}

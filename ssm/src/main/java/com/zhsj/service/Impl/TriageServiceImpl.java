package com.zhsj.service.Impl;

import com.zhsj.bean.triage.Triage;
import com.zhsj.bean.user.Department;
import com.zhsj.dao.DepartmentDao;
import com.zhsj.dao.TriageDao;
import com.zhsj.service.TriageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.List;

@Service
public class TriageServiceImpl implements TriageService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    TriageDao TriDao;

    @Autowired
    DepartmentDao DepDao;

    @Override
    public List queryByState(String state) {
        return TriDao.selectByState(state);
    }

    @Override
    public List<Triage> queryByStateAndUserid(String state, String user_id) {
        return TriDao.selectByStateAndUserid(state, user_id);
    }

    @Override
    public void updateTriageState(String triageid, String depname, Timestamp time, String state) {
        TriDao.updateTriageState(triageid, depname,time, state);
    }

    @Override
    public void addTriage(String user_id, String state, String info, Timestamp time, String depid, String rate) {
        String Tid = TriDao.selectMaxTriageid().substring(1);
        Integer number = Integer.parseInt(Tid) + 1;
        String id = "T" + String.format("%010d", number);
        Department d = DepDao.selectByDepartmentid(depid);
        TriDao.insertTriage(id, user_id, state, info, time, d.getName(), rate);
    }
}

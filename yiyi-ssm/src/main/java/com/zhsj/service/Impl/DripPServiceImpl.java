package com.zhsj.service.Impl;

import com.zhsj.bean.medical.*;
import com.zhsj.dao.DripPDao;
import com.zhsj.service.DripPService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DripPServiceImpl implements DripPService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private DripPDao DPDao;

    @Override
    public List<Drip> queryDripP(String Patient_id) {
        return DPDao.selectPdrip(Patient_id);
    }

}

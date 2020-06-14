package com.zhsj.service.Impl;

import com.zhsj.bean.appointment.Registration;
import com.zhsj.dao.RegistrationDao;
import com.zhsj.service.RegService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

@Service
public class RegServiceImpl implements RegService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private RegistrationDao regDao;


    @Override
    public HashMap queryByRegid(String id) {
        return regDao.selectByRegid(id);
    }

    @Override
    public List<Registration> queryByPatientid(String id) {
        return regDao.selectByPatientid(id);
    }

    @Override
    public List<Registration> queryByAppid(String id) {
        return regDao.selectByAppid(id);
    }

    @Override
    public List queryByDepartmentid(String id, String date, String time, String state) {
        return regDao.selectByDepartmentid(id, date, time, state);
    }

    @Override
    public void add(String Patient_id, String Appointment_id, Timestamp time, String state) {

        String Aid = regDao.selectMaxRegid().substring(1);
        Integer num = Integer.parseInt(Aid) + 1;
        String id = "R" + String.format("%010d", num);
        System.out.println(id);
        regDao.insert(id, Patient_id, Appointment_id, time, state);
    }

    @Override
    public void deleteReg(String id) {
        regDao.delete(id);
    }

    @Override
    public void updateRegState(String regid, String state) {
        regDao.updateRegState(regid, state);
    }

    @Override
    public void updateRegStateAndD(String regid, String state, String doctor_id) {
        regDao.updateRegStateAndD(regid, state, doctor_id);
    }

    @Override
    public void updateStateByDAndState(String doctor_id, String state) {
        regDao.updateRegStateByDAndState(doctor_id, state);
    }

}

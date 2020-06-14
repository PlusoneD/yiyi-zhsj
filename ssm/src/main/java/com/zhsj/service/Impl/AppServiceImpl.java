package com.zhsj.service.Impl;

import com.zhsj.bean.appointment.Appointment;
import com.zhsj.dao.AppointmentDao;
import com.zhsj.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.sql.Time;
import java.util.List;
@Service
public class AppServiceImpl implements AppService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private AppointmentDao appDao;

    @Override
    public List queryAll() {
        return appDao.selectAll();
    }

    @Override
    public List queryByTime(Time time) {
        return appDao.selectByTime(time);
    }

    @Override
    public List queryByDate(Date date) {
        return appDao.selectByDate(date);
    }

    @Override
    public List queryByDepName(String name) {
        return appDao.selectByDepName(name);
    }

    @Override
    public Appointment queryAppByid(String id) {
        Appointment a = appDao.selectAppByid(id);
        System.out.println(a);
        return a;
    }

    @Override
    public void updateCurNumber(String Appointment_id, int number) {
        appDao.updateCurNumber(Appointment_id, number);
    }

    @Override
    public void addAppointment(String depid, String date, String time, String number) {

        String Aid = appDao.selectMaxAppointmentid().substring(1);
        Integer num = Integer.parseInt(Aid) + 1;
        String id = "A" + String.format("%010d", num);

        appDao.insertAppointment(id, depid, date, time, number);
    }

    @Override
    public void deleteAppointment(String id) {
        appDao.delAppointment(id);
    }

    @Override
    public void updateAppUpNum(String id, Integer upNum) {
        appDao.updateAppUpNum(id, upNum);
    }
}

package com.zhsj.service;

import com.zhsj.bean.appointment.Appointment;

import java.sql.Date;
import java.sql.Time;
import java.util.HashMap;
import java.util.List;

public interface AppService {
    List queryAll();
    List queryByTime(Time time);
    List queryByDate(Date date);
    List queryByDepName(String name);

    Appointment queryAppByid(String id);

    void updateCurNumber(String Appointment_id, int number);

    void addAppointment(String depid, String date, String time, String number);

    void deleteAppointment(String id);

    void updateAppUpNum(String id, Integer upNum);
}

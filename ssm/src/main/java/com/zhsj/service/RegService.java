package com.zhsj.service;

import com.zhsj.bean.appointment.Registration;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

public interface RegService {
    HashMap queryByRegid(String id);
    List<Registration> queryByPatientid(String id);
    List<Registration> queryByAppid(String id);

    List queryByDepartmentid(String id, String date, String time, String state);

    void add(String Patient_id, String Appointment_id, Timestamp time, String state);

    void deleteReg(String id);

    void updateRegState(String regid, String state);

    void updateRegStateAndD(String regid, String state, String doctor_id);

    void updateStateByDAndState(String doctor_id, String state);
}

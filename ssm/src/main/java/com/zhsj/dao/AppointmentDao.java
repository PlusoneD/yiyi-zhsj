package com.zhsj.dao;

import com.zhsj.bean.appointment.Appointment;
import org.apache.ibatis.annotations.Param;

import java.sql.Time;
import java.sql.Date;
import java.util.List;

public interface AppointmentDao {
    List selectAll();

    List selectByTime(Time time);

    List selectByDate(Date date);

    List selectByDepName(String name);

    void updateCurNumber(@Param("Appointment_id")String Appointment_id, @Param("number")int number);

    void insertAppointment(@Param("id")String id, @Param("depid")String depid,@Param("date") String date,@Param("time") String time,@Param("number") String number);

    String selectMaxAppointmentid();

    void delAppointment(String id);

    void updateAppUpNum(@Param("id")String id,@Param("upNum") Integer upNum);

    Appointment selectAppByid(@Param("id")String id);
}

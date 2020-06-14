package com.zhsj.dao;

import com.zhsj.bean.appointment.Registration;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

public interface RegistrationDao {
    HashMap selectByRegid(String id);
    List<Registration> selectByPatientid(String id);
    List<Registration> selectByAppid(String id);

    List selectByDepartmentid(@Param("id") String id,@Param("date") String date,@Param("time") String time, @Param("state") String state);

    String selectMaxRegid();

    void insert(@Param("id") String id,@Param("Patient_id") String Patient_id, @Param("App_id") String Appointment_id,@Param("time") Timestamp time,@Param("state") String state);

    void delete(String id);

    void updateRegState(@Param("regid")String regid,@Param("state") String state);

    void updateRegStateAndD(@Param("regid")String regid, @Param("state") String state, @Param("Doctor_id") String doctor_id);

    void updateRegStateByDAndState(@Param("Doctor_id") String doctor_id,@Param("state") String state);


}

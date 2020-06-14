package com.zhsj.bean.appointment;

import java.sql.Date;
import java.sql.Time;
import java.lang.String;
import java.lang.Integer;

public class Appointment {
    private String App_id;
    private String Department_id;
    private Date A_Date;
    private Time A_Time;
    private int A_UpNum;
    private int A_Num;


    public Appointment(String app_id, String department_id, Date a_date, Time a_time, Integer a_upNum, Integer a_num) {
        App_id = app_id;
        Department_id = department_id;
        A_Date = a_date;
        A_Time = a_time;
        A_UpNum = a_upNum;
        A_Num = a_num;
    }


    public String getAppointment_id() {
        return App_id;
    }

    public void setAppointment_id(String appointment_id) {
        App_id = appointment_id;
    }

    public String getDepartment_id() {
        return Department_id;
    }

    public void setDepartment_id(String department_id) {
        Department_id = department_id;
    }

    public Date getA_Date() {
        return A_Date;
    }

    public void setA_Date(Date a_Date) {
        A_Date = a_Date;
    }

    public Time getA_Time() {
        return A_Time;
    }

    public void setA_Time(Time a_Time) {
        A_Time = a_Time;
    }

    public int getA_UpNum() {
        return A_UpNum;
    }

    public void setA_UpNum(int a_UpNum) {
        A_UpNum = a_UpNum;
    }

    public int getA_Num() {
        return A_Num;
    }

    public void setA_Num(int a_Num) {
        A_Num = a_Num;
    }
}

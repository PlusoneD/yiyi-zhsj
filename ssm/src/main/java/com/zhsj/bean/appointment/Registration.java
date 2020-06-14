package com.zhsj.bean.appointment;

import java.sql.Timestamp;

public class Registration {
    private String Registration_id;
    private String Patient_id;
    private String Appointment_id;
    private Timestamp R_TimeRegistration;
    private String R_State;

    public Registration(String registration_id, String patient_id, String appointment_id, Timestamp r_timeRegistration, String r_state) {
        Registration_id = registration_id;
        Patient_id = patient_id;
        Appointment_id = appointment_id;
        R_TimeRegistration = r_timeRegistration;
        R_State = r_state;
    }

    public String getRegistration_id() {
        return Registration_id;
    }

    public void setRegistration_id(String registration_id) {
        Registration_id = registration_id;
    }

    public String getPatient_id() {
        return Patient_id;
    }

    public void setPatient_id(String patient_id) {
        Patient_id = patient_id;
    }

    public String getAppointment_id() {
        return Appointment_id;
    }

    public void setAppointment_id(String appointment_id) {
        Appointment_id = appointment_id;
    }

    public Timestamp getR_TimeRegistration() {
        return R_TimeRegistration;
    }

    public void setR_TimeRegistration(Timestamp r_TimeRegistration) {
        R_TimeRegistration = r_TimeRegistration;
    }

    public String getR_State() {
        return R_State;
    }

    public void setR_State(String r_State) {
        R_State = r_State;
    }
}

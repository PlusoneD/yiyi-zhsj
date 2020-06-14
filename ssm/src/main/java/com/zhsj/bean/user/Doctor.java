package com.zhsj.bean.user;

public class Doctor {
    private String Doctor_id;
    private String Department_id;
    private String D_Background;
    private String D_Specialization;
    private String D_Description;


    public Doctor(String doctor_id, String department_id, String d_background, String d_specialization, String d_description) {
        Doctor_id = doctor_id;
        Department_id = department_id;
        D_Background = d_background;
        D_Specialization = d_specialization;
        D_Description = d_description;
    }

    public String getDoctor_id() {
        return Doctor_id;
    }

    public void setDoctor_id(String doctor_id) {
        Doctor_id = doctor_id;
    }

    public String getDepartment_id() {
        return Department_id;
    }

    public void setDepartment_id(String department_id) {
        Department_id = department_id;
    }

    public String getD_Background() {
        return D_Background;
    }

    public void setD_Background(String d_Background) {
        D_Background = d_Background;
    }

    public String getD_Specialization() {
        return D_Specialization;
    }

    public void setD_Specialization(String d_Specialization) {
        D_Specialization = d_Specialization;
    }

    public String getD_Description() {
        return D_Description;
    }

    public void setD_Description(String d_Description) {
        D_Description = d_Description;
    }
}

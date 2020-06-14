package com.zhsj.bean.user;

public class Nurse {
    private String Nurse_id;
    private String Department_id;

    public Nurse(String nurse_id, String department_id) {
        Nurse_id = nurse_id;
        Department_id = department_id;
    }

    public String getNurse_id() {
        return Nurse_id;
    }

    public void setNurse_id(String nurse_id) {
        Nurse_id = nurse_id;
    }

    public String getDepartment_id() {
        return Department_id;
    }

    public void setDepartment_id(String department_id) {
        Department_id = department_id;
    }
}

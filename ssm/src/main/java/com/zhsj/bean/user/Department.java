package com.zhsj.bean.user;

public class Department {
    private String Department_id;
    private String Name;
    private String Address;

    public Department(String department_id, String d_name, String d_address) {
        Department_id = department_id;
        Name = d_name;
        Address = d_address;
    }

    public String getDepartment_id() {
        return Department_id;
    }

    public void setDepartment_id(String department_id) {
        Department_id = department_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        Name = Name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        Address = Address;
    }
}

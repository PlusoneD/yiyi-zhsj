package com.zhsj.bean.user;

public class Staff {
    private String User_id;
    private String U_Identity;
    private String U_Name;
    private String U_Gender;
    private String U_PhoneNumber;

    public Staff(String user_id, String u_identity, String u_name, String u_gender, String u_phoneNumber) {
        User_id = user_id;
        U_Identity = u_identity;
        U_Name = u_name;
        U_Gender = u_gender;
        U_PhoneNumber = u_phoneNumber;
    }

    public String getUser_id() {
        return User_id;
    }

    public void setUser_id(String user_id) {
        User_id = user_id;
    }

    public String getU_Identity() {
        return U_Identity;
    }

    public void setU_Identity(String u_Identity) {
        U_Identity = u_Identity;
    }

    public String getU_Name() {
        return U_Name;
    }

    public void setU_Name(String u_Name) {
        U_Name = u_Name;
    }

    public String getU_Gender() {
        return U_Gender;
    }

    public void setU_Gender(String u_Gender) {
        U_Gender = u_Gender;
    }

    public String getU_PhoneNumber() {
        return U_PhoneNumber;
    }

    public void setU_PhoneNumber(String u_PhoneNumber) {
        U_PhoneNumber = u_PhoneNumber;
    }
}

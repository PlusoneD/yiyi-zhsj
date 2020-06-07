package com.zhsj.bean.user;

public class User {
    private String U_Identity;
    private String U_Name;
    private String U_Gender;
    private String U_Password;
    private String U_PhoneNumber;

    public User(String user_id, String u_identity, String u_name, String u_gender, String u_password, String u_phoneNumber) {
        U_Identity = u_identity;
        U_Name = u_name;
        U_Gender = u_gender;
        U_Password = u_password;
        U_PhoneNumber = u_phoneNumber;
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

    public String getU_Password() {
        return U_Password;
    }

    public void setU_Password(String u_Password) {
        U_Password = u_Password;
    }

    public String getU_PhoneNumber() {
        return U_PhoneNumber;
    }

    public void setU_PhoneNumber(String u_PhoneNumber) {
        U_PhoneNumber = u_PhoneNumber;
    }
}

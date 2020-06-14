package com.zhsj.bean.user;

public class Staff {
    private String Staff_id;
    private String S_EmpNum;
    private String S_Identity;
    private String S_Title;

    public Staff() {
        super();
        // TODO Auto-generated constructor stub
    }



    public Staff(String staff_id, String s_EmpNum, String s_Identity, String s_Title) {
        super();
        Staff_id = staff_id;
        S_EmpNum = s_EmpNum;
        S_Identity = s_Identity;
        S_Title = s_Title;
    }



    public String getStaff_id() {
        return Staff_id;
    }

    public void setStaff_id(String staff_id) {
        Staff_id = staff_id;
    }

    public String getS_EmpNum() {
        return S_EmpNum;
    }

    public void setS_EmpNum(String s_EmpNum) {
        S_EmpNum = s_EmpNum;
    }

    public String getS_Identity() {
        return S_Identity;
    }

    public void setS_Identity(String s_Identity) {
        S_Identity = s_Identity;
    }

    public String getS_Title() {
        return S_Title;
    }

    public void setS_Title(String s_Title) {
        S_Title = s_Title;
    }

}

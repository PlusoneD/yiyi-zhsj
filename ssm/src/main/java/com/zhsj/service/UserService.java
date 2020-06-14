package com.zhsj.service;

import java.util.List;
import java.util.HashMap;

import org.apache.ibatis.annotations.Param;

import com.zhsj.bean.user.*;

public interface UserService {
    List queryAllPatient();

    List queryAllStaff();

    void updateUserPwd(String id, String pwd);

    void deleteUser(String id);
    
    List queryPwd(String User_id);

       
    void updateP(String User_id,String PhoneNumber,String Birthday, String MedicalInsuranceCardNumber, String MailAddress, String Gender);

    void updateN(String User_id, String PhoneNumber,String Gender);

    void updateD( String User_id, String PhoneNumber, String Gender, String Background,  String Specialization, String Description);

    String addUser(String sysiden, String name, String gender, String password);
        
    String addUserP(String name,String password);
    
    void addPatient(String id, String nickname);
    
    List selectNN(String nickname);
    
    List selectEN(String nickname);

    void addStaff(String id, String empnum, String identity);

    void addDoctor(String id, String depid);

    void addNurse(String id, String depid);

    HashMap QueryStaffInfo(String id);

    User QueryUser(String id);

    void updateDoctorInfo(String id, String depid, String title, String background, String specialization, String description);

    void updateNurseInfo(String id, String depid, String title);
    
    HashMap queryPatientByNickname(String number);

    HashMap queryStaffByEmpNum(String number);
    
    List queryPInfo(String user_id);
    
    String QueryUserByName(String name);
    
}

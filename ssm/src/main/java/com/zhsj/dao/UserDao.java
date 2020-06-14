package com.zhsj.dao;

import com.zhsj.bean.user.Doctor;
import com.zhsj.bean.user.Nurse;
import com.zhsj.bean.user.User;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface UserDao {
    List selectAllPatient();

    List selectAllStaff();

    void updateUserPwd(@Param("id") String id, @Param("pwd") String pwd);

    void delUser(String id);

    List selectPwd(String User_id);

    List selectPInfo(String User_id);

    void updatePInfo(@Param("User_id") String User_id, @Param("PhoneNumber") String PhoneNumber, @Param("Birthday") String Birthday,@Param("MedicalInsuranceCardNumber") String MedicalInsuranceCardNumber, @Param("MailAddress") String MailAddress,@Param("Gender") String Gender);

    void updateNInfo(@Param("User_id") String User_id, @Param("PhoneNumber") String PhoneNumber, @Param("Gender") String Gender);

    void updateDInfo(@Param("User_id") String User_id, @Param("PhoneNumber") String PhoneNumber, @Param("Gender") String Gender, @Param("Background") String Background, @Param("Specialization") String Specialization, @Param("Description") String Description);

    void insertUser(@Param("id") String id, @Param("sysiden") String sysiden, @Param("name")  String name, @Param("gender")  String gender, @Param("password")  String password);

    void insertUserP(@Param("id") String id,  @Param("name")  String name, @Param("password")  String password);

    void insertPatient(@Param("id") String id, @Param("nickname") String nickname);

    List selectNN(String nickname);

    List selectEN(String nickname);

    void insertStaff(@Param("id") String id, @Param("empnum") String empnum, @Param("identity") String identity);

    String selectMaxPatientid();

    String selectMaxDoctorid();

    String selectMaxNurseid();

    String selectMaxTriagePersonid();

    String selectMaxManagerid();

    void insertDoctor(@Param("id")String id, @Param("depid")String depid);

    void insertNurse(@Param("id")String id, @Param("depid")String depid);

    HashMap selectStaffInfo(String id);

    Doctor selectDoctorInfo(String id);

    Nurse selectNurseInfo(String id);

    User selectUser(String id);

    void updateTitle(@Param("id")String id, @Param("title")String title);

    void updateDoctorInfo(@Param("id")String id, @Param("depid")String depid,@Param("background") String background,@Param("specialization") String specialization,@Param("description") String description);

    void updateNurseInfo(@Param("id")String id,@Param("depid") String depid);

    HashMap selectPatientByNickname(String number);

    HashMap selectStaffByEmpNum(String number);

    String selectUserByName(String name);

}

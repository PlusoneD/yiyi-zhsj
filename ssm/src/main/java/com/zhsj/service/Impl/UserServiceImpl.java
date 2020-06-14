package com.zhsj.service.Impl;

import com.zhsj.bean.user.*;
import com.zhsj.dao.DepartmentDao;
import com.zhsj.dao.TriageDao;
import com.zhsj.dao.UserDao;
import com.zhsj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    // 注入Service依赖
    @Autowired
    UserDao dao;
    DepartmentDao depDao;

    @Override
    public List queryAllPatient() {
        return dao.selectAllPatient();
    }

    @Override
    public List queryAllStaff() {
        return dao.selectAllStaff();
    }

    @Override
    public void updateUserPwd(String id, String pwd) {
        dao.updateUserPwd(id, pwd);
    }

    @Override
    public void deleteUser(String id) {
        dao.delUser(id);
    }
    
    @Override
    public List queryPwd(String User_id) {
        return dao.selectPwd(User_id);
    }

    
    public void updateP(String User_id,String PhoneNumber,String Birthday, String MedicalInsuranceCardNumber, String MailAddress, String Gender) {
    	dao.updatePInfo(User_id, PhoneNumber, Birthday, MedicalInsuranceCardNumber, MailAddress, Gender);
    }
    
    public void updateN(String User_id, String PhoneNumber,String Gender) {
    	dao.updateNInfo(User_id, PhoneNumber, Gender);
    }

    public void updateD( String User_id, String PhoneNumber, String Gender, String Background,  String Specialization, String Description) {
    	dao.updateDInfo(User_id, PhoneNumber, Gender,Background,Specialization,Description);
    }

    @Override
    public String addUser(String identity, String name, String gender, String password) {
        if(identity.equals("Patient")){
            String Pid = dao.selectMaxPatientid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            String id = "P" + String.format("%07d", number);
            dao.insertUser(id, identity, name, gender, password);
            return id;
        } else if(identity.equals("Doctor")){
            System.out.println(1);
            String Pid = dao.selectMaxDoctorid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            System.out.println(number);
            String id = "D" + String.format("%04d", number);
            System.out.println(id);
            dao.insertUser(id, identity, name, gender, password);
            return id;
        } else if(identity.equals("Nurse")){
            String Pid = dao.selectMaxNurseid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            String id = "N" + String.format("%04d", number);
            dao.insertUser(id, identity, name, gender, password);
            return id;
        } else if(identity.equals("TriagePerson")){
            String Pid = dao.selectMaxTriagePersonid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            String id = "T" + String.format("%04d", number);
            dao.insertUser(id, identity, name, gender, password);
            return id;
        } else {
            String Pid = dao.selectMaxManagerid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            String id = "M" + String.format("%04d", number);
            dao.insertUser(id, identity, name, gender, password);
            return id;
        }
    }
    
    @Override
    public String addUserP(String name,String password) {
            String Pid = dao.selectMaxPatientid().substring(1);
            Integer number = Integer.parseInt(Pid) + 1;
            String id = "P" + String.format("%07d", number);
            dao.insertUserP(id, name, password);
            return id;
    }   
    
    @Override
    public void addPatient(String id, String nickname) {
        dao.insertPatient(id, nickname);
    }

    @Override
    public void addStaff(String id, String empnum, String identity) {
        dao.insertStaff(id, empnum, identity);
    }

    @Override
    public void addDoctor(String id, String depid) {
        dao.insertDoctor(id, depid);
    }

    @Override
    public void addNurse(String id, String depid) {
        dao.insertNurse(id, depid);
    }

    @Override
    public HashMap QueryStaffInfo(String id) {
        HashMap staff = dao.selectStaffInfo(id);

        if(staff.get("Identity").equals("Doctor")){
            Doctor doc = dao.selectDoctorInfo(id);
            staff.put("Doctor", doc);
            return staff;
        } else if(staff.get("Identity").equals("Nurse")){
            Nurse n = dao.selectNurseInfo(id);
            staff.put("Nurse", n);
            return staff;
        }
        return staff;
    }

    @Override
    public User QueryUser(String id) {
        return dao.selectUser(id);
    }

    @Override
    public void updateDoctorInfo(String id, String depid, String title, String background, String specialization, String description) {
        dao.updateTitle(id, title);
        
        dao.updateDoctorInfo(id, depid, background, specialization, description);
    }

    @Override
    public void updateNurseInfo(String id, String depid, String title) {
        dao.updateTitle(id, title);
        
        dao.updateNurseInfo(id, depid);
    }
    
    public List selectNN(String nickname){
    	return dao.selectNN(nickname);
    }
    
    public List selectEN(String nickname){
    	return dao.selectEN(nickname);
    }
    
    @Override
    public HashMap queryPatientByNickname(String number) {
        return dao.selectPatientByNickname(number);
    }

    @Override
    public HashMap queryStaffByEmpNum(String number) {
        return dao.selectStaffByEmpNum(number);
    }
    
    @Override
    public List queryPInfo(String User_id){
        return dao.selectPInfo(User_id);
    }
    
	@Override
	public String QueryUserByName(String name) {
		// TODO Auto-generated method stub
		return dao.selectUserByName(name);
	}
}

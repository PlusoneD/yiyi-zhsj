package com.zhsj.controller;

import com.zhsj.bean.user.Department;
import com.zhsj.bean.user.Doctor;
import com.zhsj.bean.user.Nurse;
import com.zhsj.bean.user.User;
import com.zhsj.service.DepService;
import com.zhsj.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
public class UserCon {
    @Autowired
    UserService UserSer;

    @RequestMapping("/Manager_Data_Patient")
    public String Manager_Data_Patient() {
        return "manager/Manager_Data_Patient";
    }

    @RequestMapping("/Manager_Data_Staff")
    public String Manager_Data_Staff() {
        return "manager/Manager_Data_Staff";
    }
    @RequestMapping("/Staff_Changepwd")
    public String Staff_Changepwd() {
        return "staff/Staff_Changepwd";
    }
    
    @RequestMapping("/Patient_Changepwd")
    public String Patient_Changepwd() {
        return "patient/Patient_Changepwd";
    }
    
    @RequestMapping("/Manager_Changepwd")
    public String Manager_Changepwd() {
        return "manager/Manager_Changepwd";
    }
    
    @RequestMapping("/Staff_PersonInfo")
    public String Staff_PersonInfo() {
        return "staff/Staff_PersonInfo";
    }
    
    @RequestMapping("/Patient_PersonInfo")
    public String Patient_PersonInfo() {
        return "patient/Patient_PersonInfo";
    }
    @RequestMapping("/")
    public String index() {
        return "index";
    }
    @RequestMapping("/introduce")
    public String introduce() {
        return "/introduce";
    }
    
    @RequestMapping("/about")
    public String about() {
        return "/about";
    }
    
    @RequestMapping("/gallery")
    public String gallery() {
        return "/gallery";
    }
    
    @RequestMapping("/services")
    public String services() {
        return "/services";
    }
    
    @RequestMapping("/typo")
    public String typo() {
        return "/typo";
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String number = request.getParameter("number");
        String pwd = request.getParameter("password");

        HashMap user = UserSer.queryPatientByNickname(number);
        HashMap staff = UserSer.queryStaffByEmpNum(number);

        HttpSession session = request.getSession(true);
        if(user != null && user.get("pwd").equals(pwd)){
            session.setAttribute("user_id", user.get("Patient_id"));
            session.setAttribute("identity", user.get("Indentity"));
            return "Patient";
        } else if(staff != null && staff.get("pwd").equals(pwd)){
            session.setAttribute("user_id", staff.get("Staff_id"));
            session.setAttribute("indentity", staff.get("Indentity"));
            return (String) staff.get("Identity");
        } else {
            return "error";
        }
    }
    @RequestMapping(value = "/getPatientIdByName", method = RequestMethod.POST)
    @ResponseBody
    public String getPatientIdByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String patient  = UserSer.QueryUserByName(name);
        System.out.println(name);
        System.out.println(patient);
        return patient;
    }
    
    @RequestMapping(value = "/getAllPatient", method = RequestMethod.POST)
    @ResponseBody
    public List getAllPatient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //HttpSession session = request.getSession();
        //Integer User_id = (Integer) session.getAttribute("id");

        List Patient = UserSer.queryAllPatient();

        System.out.println(Patient);
        return Patient;
    }

    @RequestMapping(value = "/getAllStaff", method = RequestMethod.POST)
    @ResponseBody
    public List getAllStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //HttpSession session = request.getSession();
        //Integer User_id = (Integer) session.getAttribute("id");

        List Staff = UserSer.queryAllStaff();

        System.out.println(Staff);
        return Staff;
    }

    @RequestMapping(value = "/setUserPwdByAdmin", method = RequestMethod.POST)
    @ResponseBody
    public void setUserPwdByAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");

        UserSer.updateUserPwd(id, pwd);
    }

    @RequestMapping(value = "/cutStaff", method = RequestMethod.POST)
    @ResponseBody
    public void cutStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");

        UserSer.deleteUser(id);
    }
    @RequestMapping(value = "/getPwd", method = RequestMethod.POST)
    @ResponseBody
    public List getPwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        //String User_id = request.getParameter("User_id");
        List User = UserSer.queryPwd(User_id);

        System.out.println(User);
        return User;
    }
    @RequestMapping(value = "/addStaff", method = RequestMethod.POST)
    @ResponseBody
    public void addStaff(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String empnum = request.getParameter("empnum");
        String identity = request.getParameter("identity");
        String depid = request.getParameter("depid");
        String gender = request.getParameter("gender");
        String sysiden = "staff";
        String password = "123456";

        String id = UserSer.addUser(identity, name, gender, password);

        UserSer.addStaff(id, empnum, identity);

        if(identity.equals("Doctor")){
            UserSer.addDoctor(id, depid);
        } else if(identity.equals("Nurse")) {
            UserSer.addNurse(id, depid);
        }
    }
    @RequestMapping(value = "/getPInfo", method = RequestMethod.POST)
    @ResponseBody
    public List getPInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        //String User_id = request.getParameter("User_id");
        List User = UserSer.queryPInfo(User_id);

        System.out.println(User);
        return User;
    }
    
    @RequestMapping(value = "/updateP", method = RequestMethod.POST)
    @ResponseBody
    public void updateP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        //String User_id = request.getParameter("User_id");
        String PhoneNumber = request.getParameter("PhoneNumber");
        String Birthday = request.getParameter("Birthday");
        String MedicalInsuranceCardNumber = request.getParameter("MedicalInsuranceCardNumber");
        String MailAddress = request.getParameter("MailAddress");
        String Gender = request.getParameter("Gender");
        
        UserSer.updateP(User_id,PhoneNumber,Birthday,MedicalInsuranceCardNumber,MailAddress,Gender);
    }
    
    @RequestMapping(value = "/updateN", method = RequestMethod.POST)
    @ResponseBody
    public void updateN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        //String User_id = request.getParameter("User_id");
        String PhoneNumber = request.getParameter("PhoneNumber");
        String Gender = request.getParameter("Gender");
        
        UserSer.updateN(User_id,PhoneNumber,Gender);
    }
    
    @RequestMapping(value = "/updateD", method = RequestMethod.POST)
    @ResponseBody
    public void updateD(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        //String User_id = request.getParameter("User_id");
        String PhoneNumber = request.getParameter("PhoneNumber");
        String Gender = request.getParameter("Gender");
        String Background = request.getParameter("Background");
        String Specialization = request.getParameter("Specialization");
        String Description = request.getParameter("Description");

        UserSer.updateD(User_id,PhoneNumber,Gender,Background,Specialization,Description);
    }
    
    @RequestMapping(value = "/addPatient", method = RequestMethod.POST)
    @ResponseBody
    public void addPatient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String nickname = request.getParameter("nickname");
        String password = request.getParameter("password");

        String id = UserSer.addUserP(name, password);
        System.out.println(id);
        UserSer.addPatient(id, nickname);
    }




    @RequestMapping(value = "/getStaffInfo", method = RequestMethod.POST)
    @ResponseBody
    public HashMap getStaffInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        HashMap staff = UserSer.QueryStaffInfo(id);
        return staff;
    }

    @RequestMapping(value = "/getSInfo", method = RequestMethod.POST)
    @ResponseBody
    public HashMap getSInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
       // String id = request.getParameter("id");
        
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("user_id");
        
        HashMap staff = UserSer.QueryStaffInfo(id);

        return staff;
    }
    @RequestMapping(value = "/verifyPwd", method = RequestMethod.POST)
    @ResponseBody
    public String verifyPwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        String pwd = request.getParameter("pwd");

        User user = UserSer.QueryUser(user_id);

        if(user.getU_Password().equals(pwd)){
            return "success";
        }
        else {
            return "error";
        }
    }


    @RequestMapping(value = "/setDoctorInfo", method = RequestMethod.POST)
    @ResponseBody
    public void setDoctorInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("Staff_id");
        String depid = request.getParameter("depid");
        String title = request.getParameter("title");
        String background = request.getParameter("background");
        String specialization = request.getParameter("specialization");
        String description = request.getParameter("description");

        UserSer.updateDoctorInfo(id, depid, title, background,specialization, description);
    }


    @RequestMapping(value = "/setNurseInfo", method = RequestMethod.POST)
    @ResponseBody
    public void setNurseInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("Staff_id");
        String depid = request.getParameter("depid");
        String title = request.getParameter("title");

        UserSer.updateNurseInfo(id, depid, title);
    }
    @RequestMapping(value = "/selectNN", method = RequestMethod.POST)
    @ResponseBody
    public List selectNN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String nickname = request.getParameter("nickname");
        
        List Patient = UserSer.selectNN(nickname);

        System.out.println(Patient);
        return Patient;
        
    }
    
    @RequestMapping(value = "/selectEN", method = RequestMethod.POST)
    @ResponseBody
    public List selectEN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String nickname = request.getParameter("nickname");
        
        List staff = UserSer.selectEN(nickname);

        System.out.println(staff);
        return staff;

    }
}
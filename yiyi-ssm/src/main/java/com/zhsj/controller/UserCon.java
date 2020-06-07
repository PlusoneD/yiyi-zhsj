package com.zhsj.controller;

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
}
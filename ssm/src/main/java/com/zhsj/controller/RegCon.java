package com.zhsj.controller;

import com.zhsj.bean.appointment.Appointment;
import com.zhsj.bean.appointment.Registration;
import com.zhsj.bean.user.Doctor;
import com.zhsj.service.AppService;
import com.zhsj.service.RegService;
import com.zhsj.service.UserService;
import jdk.nashorn.internal.ir.RuntimeNode;
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
import java.sql.Time;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
public class RegCon {
    @Autowired
    RegService RegSer;

    @Autowired
    AppService AppSer;

    @Autowired
    UserService UserSer;

    @RequestMapping("/Patient_Registration_AddRegInfo")
    public String Patient_Registration_AddRegInfo() {
        return "patient/Patient_Registration_AddRegInfo";
    }

    @RequestMapping("/Patient_Registration_RegInfo")
    public String Patient_Registration_RegInfo() {
        return "patient/Patient_Registration_RegInfo";
    }

    @RequestMapping("/Doctor_Call")
    public String Doctor_Call() {
        return "staff/Doctor_Call";
    }

    @RequestMapping(value = "/getRegByPatientid", method = RequestMethod.POST)
    @ResponseBody
    public List<Registration> getRegByPatientid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("user_id");
        System.out.println(id);
        List<Registration> Reg = RegSer.queryByPatientid(id);

        System.out.println(Reg);
        return Reg;
    }

    @RequestMapping(value = "/updateRegStateAndD", method = RequestMethod.POST)
    @ResponseBody
    public HashMap updateRegStateAndD(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        //结束正在就诊
        RegSer.updateStateByDAndState(user_id, "正在就诊");

        HashMap staffInfo = UserSer.QueryStaffInfo("user_id");
        //选排在第一的人
        String depid = (String) staffInfo.get("department_id");

        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        System.out.println(formatter.format(date));
        String dataString =  formatter.format(date);
        Integer hour = Integer.parseInt(dataString.substring(11,13));
        String time;
        if(hour < 10){
            time = "08:00:00";
        } else if(hour < 12){
            time = "10:00:00";
        } else if(hour < 14){
            time = "12:00:00";
        } else if(hour < 16){
            time = "14:00:00";
        } else {
            time = "16:00:00";
        }
        //dataString.substring(0,10), time
        List<HashMap> Regplan = RegSer.queryByDepartmentid(depid, "2020-06-08" , "12:00:00","预约就诊");

        //改变状态
        String regid = (String) Regplan.get(0).get("Registration_id");

        RegSer.updateRegStateAndD(regid, "正在叫号", user_id);

        return Regplan.get(0);
    }

    @RequestMapping(value = "/updateRegState", method = RequestMethod.POST)
    @ResponseBody
    public void updateRegState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String regid = request.getParameter("regid");
        String state = request.getParameter("state");

        RegSer.updateRegState(regid, state);
    }

    @RequestMapping(value = "/getRegByDepartmentid", method = RequestMethod.POST)
    @ResponseBody
    public List<Registration> getRegByDepartmentid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");

        HashMap staffInfo = UserSer.QueryStaffInfo("user_id");
        String depid = (String) staffInfo.get("department_id");

        SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        System.out.println(formatter.format(date));
        String dataString =  formatter.format(date);
        Integer hour = Integer.parseInt(dataString.substring(11,13));
        String time;
        if(hour < 10){
            time = "08:00:00";
        } else if(hour < 12){
            time = "10:00:00";
        } else if(hour < 14){
            time = "12:00:00";
        } else if(hour < 16){
            time = "14:00:00";
        } else {
            time = "16:00:00";
        }
        //dataString.substring(0,10), time
        List Reg = RegSer.queryByDepartmentid(depid, "2020-06-08" , "12:00:00","预约就诊");

        System.out.println(Reg);
        return Reg;
    }


    @RequestMapping(value = "/AddRegInfo", method = RequestMethod.POST)
    @ResponseBody
    public String AddRegInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        String name = request.getParameter("name");
        String birthday = request.getParameter("birthday");
        String phone = request.getParameter("phone");
        String number = request.getParameter("number");
        String gender = request.getParameter("gender");
        String id = request.getParameter("id");
        Timestamp time = new Timestamp(System.currentTimeMillis());

        //判断是否还有预约位
        Appointment App = AppSer.queryAppByid(id);
        int rest = App.getA_UpNum() - App.getA_Num();
        System.out.println(rest);
        if(rest > 0) {
            //add registration
            RegSer.add(user_id, id, time, "预约就诊");

            //update appointment
            AppSer.updateCurNumber(id, App.getA_Num()+1);

            return "success";
        } else {
            return "error";
        }
    }


    @RequestMapping(value = "/delReg", method = RequestMethod.POST)
    @ResponseBody
    public String delReg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String id = request.getParameter("regid");
        Date cur = new Date();
        System.out.println(id);

        //判断是否到达日期
        HashMap Reg = RegSer.queryByRegid(id);
        Appointment App = AppSer.queryAppByid((String) Reg.get("App_id"));

        System.out.println(Reg);
        Date ADate = (Date) Reg.get("A_Date");

        if(ADate == cur) {
            return "error";
        } else {
            //add registration
            RegSer.deleteReg(id);

            //update appointment
            AppSer.updateCurNumber(id, App.getA_Num()-1);

            return "success";
        }
    }
}


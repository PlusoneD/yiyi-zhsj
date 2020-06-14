package com.zhsj.controller;

import com.zhsj.bean.appointment.Appointment;
import com.zhsj.service.AppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class AppCon {
    @Autowired
    AppService AppSer;

    @RequestMapping("/Manager_Appointment")
    public String Manager_Appointment() {
        return "manager/Manager_Appointment";
    }



    @RequestMapping(value = "/getAllApp", method = RequestMethod.POST)
    @ResponseBody
    public List getAllApp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        List App = AppSer.queryAll();

        System.out.println(App);
        return App;
    }

    @RequestMapping(value = "/addAppointment", method = RequestMethod.POST)
    @ResponseBody
    public void addAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String depid = request.getParameter("depid");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        String number = request.getParameter("number");

        AppSer.addAppointment(depid, date, time, number);
    }

    @RequestMapping(value = "/cutAppointment", method = RequestMethod.POST)
    @ResponseBody
    public void cutAppointment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");

        AppSer.deleteAppointment(id);
    }

    @RequestMapping(value = "/setAppUpNum", method = RequestMethod.POST)
    @ResponseBody
    public void setAppUpNum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        Integer UpNum = Integer.valueOf(request.getParameter("UpNum"));

        AppSer.updateAppUpNum(id, UpNum);
    }

}


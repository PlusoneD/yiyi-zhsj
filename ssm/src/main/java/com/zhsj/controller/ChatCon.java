package com.zhsj.controller;

import com.zhsj.bean.message.*;
import com.zhsj.bean.user.*;
import com.zhsj.service.ChatPService;
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
public class ChatCon {
    @Autowired
    ChatPService CPSer;

    @RequestMapping("/Staff_Chat")
    public String Staff_Chat() {
        return "staff/Staff_Chat";
    }
    
    @RequestMapping("/Patient_Chat")
    public String Patient_Chat() {
        return "patient/Patient_Chat";
    }

    @RequestMapping(value = "/getByCLStaff_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Chat> getByCLStaff_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Staff_id = (String) session.getAttribute("user_id");
    	
    	//String Staff_id = request.getParameter("Staff_id");
        List<Chat> list = CPSer.queryChatSL(Staff_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getByCAPatient_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Chat> getByCAPatient_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Patient_id = (String) session.getAttribute("user_id");
    	
    	//String Patient_id = request.getParameter("Patient_id");
        List<Chat> list = CPSer.queryChatPA(Patient_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getByCLPatient_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Chat> getByCLPatient_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Patient_id = (String) session.getAttribute("user_id");
    	
    	//String Patient_id = request.getParameter("Patient_id");
        List<Chat> list = CPSer.queryChatPL(Patient_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getByInfoP_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Information> getByInfoP_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Patient_id = (String) session.getAttribute("user_id");
    	
    	//String Patient_id = request.getParameter("Patient_id");
        String Staff_id = request.getParameter("Staff_id");
        List<Information> list = CPSer.queryInfoP(Patient_id,Staff_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getByInfoS_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Information> getByInfoS_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Staff_id = (String) session.getAttribute("user_id");
    	
    	String Patient_id = request.getParameter("Patient_id");
        //String Staff_id = request.getParameter("Staff_id");
        List<Information> list = CPSer.queryInfoP(Patient_id,Staff_id);

        System.out.println(list);
        return list;
    }
    
    
    @RequestMapping(value = "/addinfo", method = RequestMethod.POST)
    @ResponseBody
    public void addinfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("user_id");
        
        String I_Text = request.getParameter("I_Text");
        String I_SendTime = request.getParameter("I_SendTime");
        String Chat_id = request.getParameter("Chat_id");
        //String User_id = request.getParameter("User_id");
        CPSer.addinfo(I_Text,I_SendTime,Chat_id,User_id);
    }
    
    @RequestMapping(value = "/addlist", method = RequestMethod.POST)
    @ResponseBody
    public void addlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Staff_id = (String) session.getAttribute("user_id");
    	
    	String Patient_id = request.getParameter("Patient_id");
        //String Staff_id = request.getParameter("Staff_id");
        CPSer.addlist(Patient_id,Staff_id);
    }
    
    
}

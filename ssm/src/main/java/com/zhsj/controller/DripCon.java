package com.zhsj.controller;

import com.zhsj.bean.medical.*;
import com.zhsj.bean.user.User;
import com.zhsj.service.DripPService;
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
public class DripCon {
    @Autowired
    DripPService DPSer;

    @RequestMapping("/Patient_Drip")
    public String Patient_Drip() {
        return "patient/Patient_Drip";
    }
    
    @RequestMapping("/Nurse_Drip")
    public String Nurse_Drip() {
        return "staff/Nurse_Drip";
    }
    
    @RequestMapping("/Nurse_Drip_Add")
    public String Nurse_Drip_Add() {
        return "staff/Nurse_Drip_Add";
    }
    
    @RequestMapping("/Patient_Medicine")
    public String Patient_Medicine() {
        return "patient/Patient_Medicine";
    }

    @RequestMapping(value = "/getByPatient_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Drip> getByPatient_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Patient_id = (String) session.getAttribute("user_id");
    	
    	//String Patient_id = request.getParameter("Patient_id");
        List<Drip> list = DPSer.queryDripP(Patient_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getByDNurse_id", method = RequestMethod.POST)
    @ResponseBody
    public List<DripList> getByDNurse_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Nurse_id = (String) session.getAttribute("user_id");
    	
    	//String Nurse_id = request.getParameter("Nurse_id");
        List<DripList> list = DPSer.queryDripN(Nurse_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getAllP", method = RequestMethod.POST)
    @ResponseBody
    public List<User> getAllP(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = DPSer.queryAllP();

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getDrug", method = RequestMethod.POST)
    @ResponseBody
    public List<Drug> getDrug(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Drug> list = DPSer.queryDrug();

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/getMByPatient_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Drug> getByMPatient_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Patient_id = (String) session.getAttribute("user_id");
    	
    	//String Patient_id = request.getParameter("Patient_id");
        List<Drug> list = DPSer.queryMention(Patient_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/updateFinish", method = RequestMethod.POST)
    @ResponseBody
    public void updateFinish(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Nurse_id = (String) session.getAttribute("user_id");
    	
        String Patient_id = request.getParameter("Patient_id");
        //String Nurse_id = request.getParameter("Nurse_id");
        String D_Sequence = request.getParameter("D_Sequence");
        DPSer.updateFinish(Patient_id,Nurse_id,D_Sequence);
    }
    
    @RequestMapping(value = "/updateNext", method = RequestMethod.POST)
    @ResponseBody
    public void updateNext(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Nurse_id = (String) session.getAttribute("user_id");
    	
        String Patient_id = request.getParameter("Patient_id");
        //String Nurse_id = request.getParameter("Nurse_id");
        String D_Sequence = request.getParameter("D_Sequence");
        String D_Time = request.getParameter("D_Time");
        DPSer.updateNext(Patient_id,Nurse_id,D_Sequence,D_Time);
    }
    
    @RequestMapping(value = "/insertDL", method = RequestMethod.POST)
    @ResponseBody
    public void insertDL(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Nurse_id = (String) session.getAttribute("user_id");
    	
        String Patient_id = request.getParameter("Patient_id");
        //String Nurse_id = request.getParameter("Nurse_id");
        String D_Time = request.getParameter("D_Time");
        DPSer.addDL(Patient_id,Nurse_id,D_Time);
    }
    
    @RequestMapping(value = "/selectDLid", method = RequestMethod.POST)
    @ResponseBody
    public List<DripList> selectDLid (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String Nurse_id = (String) session.getAttribute("user_id");
    	
        String Patient_id = request.getParameter("Patient_id");
        //String Nurse_id = request.getParameter("Nurse_id");
        List<DripList> list = DPSer.selectDLid(Patient_id,Nurse_id);

        System.out.println(list);
        return list;
    }
    
    @RequestMapping(value = "/insertD", method = RequestMethod.POST)
    @ResponseBody
    public void insertD(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String DripList_id = request.getParameter("DripList_id");
        String Drug_id = request.getParameter("Drug_id");
        int D_Sequence = Integer.parseInt(request.getParameter("D_Sequence"));
        String D_Dose = request.getParameter("D_Dose");
        String D_State = request.getParameter("D_State");
        String D_Time = request.getParameter("D_Time");
        
        DPSer.addD(DripList_id,Drug_id,D_Sequence, D_Dose,D_State, D_Time);
    }
    
    @RequestMapping(value = "/insertD2", method = RequestMethod.POST)
    @ResponseBody
    public void insertD2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String DripList_id = request.getParameter("DripList_id");
        String Drug_id = request.getParameter("Drug_id");
        int D_Sequence = Integer.parseInt(request.getParameter("D_Sequence"));
        String D_Dose = request.getParameter("D_Dose");
        String D_State = request.getParameter("D_State");
        
        DPSer.addD2(DripList_id,Drug_id,D_Sequence, D_Dose,D_State);
    }
}

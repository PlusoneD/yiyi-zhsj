package com.zhsj.controller;

import com.zhsj.bean.record.MedRecord;
import com.zhsj.service.MedRecordService;
import com.zhsj.service.ReMrDrugService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.lang.reflect.Array;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

@Controller
public class MedRecordCon {
    @Autowired
    MedRecordService Med_Record;
    @Autowired
    ReMrDrugService ReMrDrug;
  
    @RequestMapping("/Doctor_MedicalRecord_Add")
    public String index() {
        return "staff/Doctor_MedicalRecord_Add";
    }
    @RequestMapping("/Patient_MedicalRecord")
    public String index2() {
        return "patient/Patient_MedicalRecord";
    }
    @RequestMapping("/Doctor_MedicalRecord_Page")
    public String index3() {
        return "staff/Doctor_MedicalRecord_Page";
    }
    @RequestMapping("/Doctor_MedicalRecord_Search")
    public String index4() {
        return "staff/Doctor_MedicalRecord_Search";
    }
    @RequestMapping("/Nurse_MedicalRecord_Page")
    public String index5() {
        return "staff/Nurse_MedicalRecord_Page";
    }
    @RequestMapping("/Nurse_MedicalRecord_Search")
    public String index6() {
        return "staff/Nurse_MedicalRecord_Search";
    }
    @RequestMapping("/Doctor_MedicalRecord_History")
    public String index7() {
        return "staff/Doctor_MedicalRecord_History";
    }
    

    @RequestMapping(value = "/mrgetByPatientId", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> getByPatientId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        List<MedRecord> list = Med_Record.queryByPatientId(id);
        System.out.println("id="+id);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrgetByPatientId2", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> getByPatientId2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
     //   String id = request.getParameter("id");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
        List<MedRecord> list = Med_Record.queryByPatientId(id);
        System.out.println("id="+id);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrgetByMrId", method = RequestMethod.POST)
    @ResponseBody
    public MedRecord getByMrId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        MedRecord mr = Med_Record.queryByMrId(id);
        System.out.println("id="+id);
        System.out.println(mr);
        return mr;
    }
    @RequestMapping(value = "/searchforPatientMr", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> searchByPatientId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        List<MedRecord> list = Med_Record.queryByPatientId(id);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("mrList",list);
        modelAndView.setViewName("/redirect:medrecordSearch");
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrgetByDoctorId", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> getByDoctorId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String User_id = (String) session.getAttribute("id");
       // String id = request.getParameter("id");
        List<MedRecord> list = Med_Record.queryByDoctorId(User_id);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrgetByDoctor1", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> getByDoctor(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
       // String id = request.getParameter("id");
        String time_start = request.getParameter("time_start");
        String time_end = request.getParameter("time_end");
        List<MedRecord> list = Med_Record.queryByDoctor(id,time_start,time_end);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrgetByDoctor2", method = RequestMethod.POST)
    @ResponseBody
    public List<MedRecord> getByDoctor2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String id = (String) session.getAttribute("id");
      //  String id = request.getParameter("id");
        String time_start = request.getParameter("time_start");
        String time_end = request.getParameter("time_end");
        List<MedRecord> list = Med_Record.queryByDoctor2(id,time_start,time_end);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/mrinsert", method = RequestMethod.POST)
    @ResponseBody
    public String saveMedRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String doctor_id = (String) session.getAttribute("id");
        String medRecord_id = "0000";
	//	String doctor_id = request.getParameter("Did");
		String patient_id = request.getParameter("Pid");
		String m_Time =request.getParameter("time");
		String m_State="";
		String state = request.getParameter("state");
		if( state.equals("on")) {
			m_State="确认";
		}else {
			m_State="保存";
		}
		String m_Complaint = request.getParameter("complaint");
		String m_InspectResult = request.getParameter("inspect");
		String m_Diagnosis = request.getParameter("diagnosis");
		String m_Advice = request.getParameter("advice");
		String m_PrescriptionInstructions = request.getParameter("prescriptioninstructions");
		String drugInMr = request.getParameter("drugInMr");
		System.out.println(request.getParameter("drugInMr"));
		String newId = Med_Record.saveMedRecord(medRecord_id, doctor_id, patient_id, m_Time, m_State, m_Complaint, m_InspectResult, m_Diagnosis, m_Advice, m_PrescriptionInstructions);
        String[] as = drugInMr.split(",");
        for (int i = 0; i < as.length; i++) {
            String r_id = "00000";
            ReMrDrug.saveRelation(r_id,newId,as[i]);
            System.out.println("//2//"+newId+"//3//"+as[i]);
        }
		
		//ReMrDrug.saveRelation(r_id,newId,drugInMr);
		//System.out.println("newId"+newId);
		System.out.println("drugInMr"+drugInMr);
		return drugInMr;
    }
    @RequestMapping(value = "/mrupdate", method = RequestMethod.POST)
    @ResponseBody
    public String updateMedRecord(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String medRecord_id = request.getParameter("mrid");
		String m_Time =request.getParameter("time");
		String m_State="确认";
//		String state = request.getParameter("state");
//		if( "on".equals(state)) {
//			m_State="确认";
//		}else {
//			m_State="保存";
//		}
		String m_Complaint = request.getParameter("complaint");
		String m_InspectResult = request.getParameter("inspect");
		String m_Diagnosis = request.getParameter("diagnosis");
		String m_Advice = request.getParameter("advice");
		String m_PrescriptionInstructions = request.getParameter("prescriptioninstructions");
		
		System.out.println("mrupdate//id="+medRecord_id);
		System.out.println("mrupdate//complaint="+m_Complaint);
		System.out.println(request.getParameter("drugInMr"));
		String id = Med_Record.update(medRecord_id, m_Time, m_State, m_Complaint, m_InspectResult, m_Diagnosis, m_Advice, m_PrescriptionInstructions);
		String drugInMr = request.getParameter("drugInMr");
		String[] as = drugInMr.split(",");
        ReMrDrug.deleteByPrimaryKey(medRecord_id);
        for (int i = 0; i < as.length; i++) {
            String r_id = "00000";
            ReMrDrug.saveRelation(r_id,id,as[i]);
            System.out.println("//2//"+id+"//3//"+as[i]);
        }
		
		//ReMrDrug.saveRelation(r_id,newId,drugInMr);
		//System.out.println("newId"+newId);
		System.out.println("drugInMr"+drugInMr);
		return id;
    }

    
}



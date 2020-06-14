package com.zhsj.controller;

import com.zhsj.bean.triage.Symptom;
import com.zhsj.service.SymptomService;
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
public class SymptomCon {
    @Autowired
    SymptomService SymSer;

    @RequestMapping("/Manager_Symptom")
    public String index() {
        return "manager/Manager_Symptom";
    }

    @RequestMapping("/Manager_Symptom_UpdateForm")
    public String index2() {
        return "manager/Manager_Symptom_UpdateForm";
    }
    @RequestMapping("/Patient_Triage_AddTriageInfo")
    public String index3() {
        return "patient/Patient_Triage_AddTriageInfo";
    }
    
    @RequestMapping(value = "/getByBodypart", method = RequestMethod.POST)
    @ResponseBody
    public List<Symptom> getByBodypart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String bodypart = request.getParameter("bodypart");
        List<Symptom> list = SymSer.queryByBodypart(bodypart);
        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/getSymById", method = RequestMethod.POST)
    @ResponseBody
    public Symptom getById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        Symptom sym = SymSer.queryById(id);
        System.out.println(id);
        System.out.println(sym);
        return sym;
    }
    @ResponseBody
	@RequestMapping("/allsym")
	public List<Symptom> queryAllSym(){
    	List<Symptom> list = SymSer.queryAll();
    	System.out.println(list);
        return list;	
	}
    @RequestMapping(value="/delSym",method=RequestMethod.POST)
    @ResponseBody
	public String deleteSym(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
		SymSer.delSym(id);		
		System.out.println("接收到的id"+id);
		return "manager/Manager_Symptom";
	}

    @RequestMapping(value = "/getAllSym", method = RequestMethod.POST)
    @ResponseBody
    public List<Symptom> getAllSym(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        List<Symptom> list = SymSer.queryAll();

        System.out.println(list);
        return list;
    }
    @RequestMapping(value = "/insertSym", method = RequestMethod.POST)
    @ResponseBody
    public String saveSymptom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String id = "00000";
        String bodypart = request.getParameter("bodypart");
        String description = request.getParameter("description");
        System.out.println("接收到的"+id+bodypart+description);
        SymSer.saveSym(id,bodypart,description);
        System.out.println("接收到的"+id+bodypart+description);
        return "manager/Manager_Symptom";
    }
    @RequestMapping(value = "/updateSym", method = RequestMethod.POST)
    @ResponseBody
    public String updateSymptom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String bodypart = request.getParameter("bodypart");
        String description = request.getParameter("description");
        System.out.println("接收到的"+id+bodypart+description);
        SymSer.updateSym(id,bodypart,description);
        System.out.println("接收到的"+id+bodypart+description);
        return "manager/Manager_Symptom";
    }
}

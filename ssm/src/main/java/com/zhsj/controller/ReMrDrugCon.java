package com.zhsj.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zhsj.bean.record.Re_Mr_Drug;
import com.zhsj.service.ReMrDrugService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class ReMrDrugCon {
    @Autowired
    ReMrDrugService ReMrDrug;

    @RequestMapping("/search")
    public String index() {
        return "";
    }
  
    @RequestMapping(value = "/searchForDrugFromRe", method = RequestMethod.POST)
    @ResponseBody
    public List<Re_Mr_Drug> getById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        List<Re_Mr_Drug> list = ReMrDrug.queryByMrId(id);
        System.out.println(list);
        return list;
    }

    @RequestMapping(value = "/insertDruginMr", method = RequestMethod.POST)
    @ResponseBody
    public String saveSymptom(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String r_id = "00000";
        String medRecord_id = request.getParameter("bodypart");
        String drug_id = request.getParameter("description");
        ReMrDrug.saveRelation(r_id,medRecord_id,drug_id);
        System.out.println("接收到的"+r_id+medRecord_id+drug_id);
        return "manager/Manager_Symptom";
    }
   
   
}

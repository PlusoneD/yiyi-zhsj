package com.zhsj.controller;

import com.zhsj.bean.medical.*;
import com.zhsj.service.DripPService;
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
public class DripPCon {
    @Autowired
    DripPService DPSer;
    
    
    @RequestMapping("/Patient_Drip")
    public String index() {
        return "patient/Patient_Drip";
    }

    @RequestMapping(value = "/getByPatient_id", method = RequestMethod.POST)
    @ResponseBody
    public List<Drip> getByPatient_id(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String Patient_id = request.getParameter("Patient_id");
        List<Drip> list = DPSer.queryDripP(Patient_id);

        System.out.println(list);
        return list;
    }
}

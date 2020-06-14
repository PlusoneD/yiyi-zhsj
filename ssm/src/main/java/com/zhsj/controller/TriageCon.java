package com.zhsj.controller;

import com.zhsj.bean.triage.Triage;
import com.zhsj.service.TriageService;
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
import java.sql.Timestamp;
import java.util.List;
import com.wxapi.WxApiCall.WxApiCall;
import com.wxapi.model.RequestModel;
import java.util.HashMap;
import java.util.Map;

@Controller
public class TriageCon {
    @Autowired
    TriageService TriSer;


    @RequestMapping("/Patient_Triage_TriageInfo")
    public String PatientTriageInfo() {
        return "patient/Patient_Triage_TriageInfo";
    }

    @RequestMapping("/Staff_Triage_UpdateTriageInfo")
    public String StaffTriageInfo() {
        return "staff/Staff_Triage_UpdateTriageInfo";
    }

    @RequestMapping(value = "/getByStateandUserid", method = RequestMethod.POST)
    @ResponseBody
    public List<Triage> getByStateandUserid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        String state = request.getParameter("state");
        List<Triage> list = TriSer.queryByStateAndUserid(state,user_id);

        System.out.println(list);
        return list;
    }

    @RequestMapping(value = "/getByState", method = RequestMethod.POST)
    @ResponseBody
    public List<Triage> getByState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String state = request.getParameter("state");
        List<Triage> list = TriSer.queryByState(state);

        System.out.println(list);
        return list;
    }

    @RequestMapping(value = "/updateTriageState", method = RequestMethod.POST)
    @ResponseBody
    public void updateTriageState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String triageid = request.getParameter("triageid");
        String depname = request.getParameter("depname");
        //改变状态
        String state = "已人工分诊";
        Timestamp time = new Timestamp(System.currentTimeMillis());
        TriSer.updateTriageState(triageid, depname, time, state);
    }

    @RequestMapping(value = "/inteltriage", method = RequestMethod.POST)
    @ResponseBody
    public String inteltriage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String user_id = (String) session.getAttribute("user_id");

        request.setCharacterEncoding("UTF-8");
        String info = request.getParameter("info");
        String str = "{\"description\":\"" + info + "\",\"patientInformation\":{\"name\":\"张三\",\"age\":\"18\",\"sex\":\"男\"}}";
        //智能分诊
        System.out.println(str);
        RequestModel model = new RequestModel();
        model.setGwUrl("https://way.jd.com/JDAI/intelligent_triage");
        model.setAppkey("25c0dbb8e61f85d2fbcb4dec6d27313f");
        model.setBodyStr(str);	//body参数
        Map queryMap = new HashMap();
        model.setQueryParams(queryMap);
        WxApiCall call = new WxApiCall();
        call.setModel(model);
        String r = call.request();
        if(r.contains("10000")){
             String res1 = r.substring(r.indexOf("id"));
             String depid = res1.substring(5,12);
             String res2 = r.substring(r.indexOf("probability"));
             String rate = res2.substring(13,20);

            String state = "未人工分诊";
            Timestamp time = new Timestamp(System.currentTimeMillis());
             TriSer.addTriage(user_id, state,info, time, depid, rate);

             return "success";
        }
        else {
            String state = "未人工分诊";
            Timestamp time = new Timestamp(System.currentTimeMillis());
            TriSer.addTriage(user_id, state,info, time, "", "");
            return "error";
        }

    }
}
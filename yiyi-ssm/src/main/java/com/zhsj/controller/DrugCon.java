package com.zhsj.controller;

import com.zhsj.bean.medical.Drug;
import com.zhsj.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class DrugCon {
    @Autowired
    DrugService drug;

    @RequestMapping("/drug")
    public String index() {
        return "manager/Manager_Drug";
    }
    @RequestMapping("/manageDrug")
    public String index2() {
        return "manager/Manager_Drug_UpdateForm";
    }

    @ResponseBody
	@RequestMapping("/alldrug")
	public List<Drug> queryAllDrug(){
    	List<Drug> list = drug.queryAll();
    	System.out.println(list);
        return list;	
	}
    @RequestMapping(value = "/updateDrug", method = RequestMethod.POST)
    @ResponseBody
    public String updateDrug(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String drug_id = request.getParameter("id");
        String d_InnComponentName = request.getParameter("inncomponentname");
        String d_CName = request.getParameter("cname");
        String d_CommonName = request.getParameter("commonname");
        String d_EngName = request.getParameter("engname");
        String d_ShowName = request.getParameter("showname");
        String d_Component = request.getParameter("component");
        String d_Indication = request.getParameter("indication");
        String d_Dosage = request.getParameter("dosage");
        String d_Contraindications = request.getParameter("contraindications");
        String d_Precautions = request.getParameter("precaution");
        String d_AdverseReactions = request.getParameter("adversereaction");
        String d_DrugInteractions = request.getParameter("druginteraction");
        String d_Type = request.getParameter("type");
        String d_Pack = request.getParameter("pack");
        String state = request.getParameter("confirm");
        drug.updateDrug(drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName);
        System.out.println(state);
        return "drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName";
    }
    @RequestMapping(value="/delDrug",method=RequestMethod.POST)
    @ResponseBody
	public String deleteDrug(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
    	request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
		drug.delDrug(id);		
		System.out.println("接收到的id:"+id);
		return "redirect:/drug";
	}
    @RequestMapping(value = "/insertDrug", method = RequestMethod.POST)
    @ResponseBody
    public String saveDrug(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
        String drug_id = "0";
        String d_InnComponentName = request.getParameter("inncomponentname");
        String d_CName = request.getParameter("cname");
        String d_CommonName = request.getParameter("commonname");
        String d_EngName = request.getParameter("engname");
        String d_ShowName = request.getParameter("showname");
        String d_Component = request.getParameter("component");
        String d_Indication = request.getParameter("indication");
        String d_Dosage = request.getParameter("dosage");
        String d_Contraindications = request.getParameter("contraindications");
        String d_Precautions = request.getParameter("precaution");
        String d_AdverseReactions = request.getParameter("adversereaction");
        String d_DrugInteractions = request.getParameter("druginteractions");
        String d_Type = request.getParameter("type");
        String d_Pack = request.getParameter("pack");
        String state = request.getParameter("confirm");
        if( state.equals("on")) {
        	drug.saveDrug(drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName);
        	System.out.println(state);
		}
        System.out.println(state);
        return "drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName";
    }

    
}



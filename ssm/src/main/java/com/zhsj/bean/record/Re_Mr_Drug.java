package com.zhsj.bean.record;


public class Re_Mr_Drug {
    private String MedRecord_id;
    private String R_id;
    private String Drug_id;
    
    public Re_Mr_Drug(String r_id,String medRecord_id,String drug_id) {
    	MedRecord_id = medRecord_id;
    	R_id = r_id;
    	Drug_id = drug_id;
    	
    	
    }
 
    public String getId() {
        return R_id;
    }
 
    public void setId(String id) {
        this.R_id = id;
    }
    public String getMedRecord_id() {
        return MedRecord_id;
    }
 
    public void setMedRecord_id(String id) {
        this.MedRecord_id = id;
    }
    public String getDrug_id() {
        return Drug_id;
    }
 
    public void setDrug_id(String id) {
        this.Drug_id = id;
    }
    
}
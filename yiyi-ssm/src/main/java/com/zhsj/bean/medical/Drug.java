package com.zhsj.bean.medical;

public class Drug {
    private String Drug_id;
    private String D_CName;
    private String D_CommonName;
    private String D_EngName;
    private String D_ShowName;
    private String D_Component;
    private String D_Indication;
    private String D_Dosage;
    private String D_Precautions;
    private String D_Contraindications;
    private String D_AdverseReactions;
    private String D_DrugInteractions;
    private String D_Type;
    private String D_Pack;
    private String D_InnComponentName;
 
    public Drug(String drug_id,String d_CName,String d_CommonName,String d_EngName,String d_ShowName,String d_Component,String d_Indication,String d_Dosage,String d_Contraindications,String d_Precautions,String d_AdverseReactions,String d_DrugInteractions,String d_Type,String d_Pack,String d_InnComponentName){
    	Drug_id = drug_id;
    	D_CName = d_CName;
    	D_CommonName = d_CommonName;
    	D_EngName = d_EngName;
    	D_ShowName = d_ShowName;
    	D_Component = d_Component;
    	D_Indication = d_Indication;
    	D_Contraindications = d_Contraindications;
    	D_Dosage = d_Dosage;
    	D_Precautions = d_Precautions;
    	D_AdverseReactions = d_AdverseReactions;
    	D_DrugInteractions = d_DrugInteractions;
    	D_Type = d_Type;
    	D_Pack = d_Pack;
    	D_InnComponentName = d_InnComponentName;
    }
    
    public String getId() {
        return Drug_id;
    }
 
    public void setId(String id) {
        this.Drug_id = id;
    }
    public String getCName() {
        return D_CName;
    }
 
    public void setCName(String CName) {
        this.D_CName = CName;
    }
    public String getCommonName() {
        return D_CommonName;
    }
 
    public void setCommonName(String CommonName) {
        this.D_CommonName = CommonName;
    }
    public String getEngName() {
        return D_EngName;
    }
 
    public void setEngName(String EngName) {
        this.D_EngName = EngName;
    }
    public String getShowName() {
        return D_ShowName;
    }
 
    public void setShowName(String ShowName) {
        this.D_ShowName = ShowName;
    }
 
    public String getIndication() {
        return D_Indication;
    }
 
    public void setIndication(String Indication) {
        this.D_Indication = Indication == null ? null : Indication.trim();
    }
    
    public String getComponent() {
        return D_Component;
    }
 
    public void setComponent(String Component) {
        this.D_Component = Component == null ? null : Component.trim();
    }
    
    public String getDosage() {
        return D_Dosage;
    }
 
    public void setDosage(String Dosage) {
        this.D_Dosage = Dosage == null ? null : Dosage.trim();
    }
    
    public String getContraindications() {
        return D_Contraindications;
    }
 
    public void setContraindications(String Contraindications) {
        this.D_Contraindications = Contraindications == null ? null : Contraindications.trim();
    }
    
    public String getPrecautions() {
        return D_Precautions;
    }
 
    public void setPrecautions(String Precautions) {
        this.D_Precautions = Precautions == null ? null : Precautions.trim();
    }
    public String getAdverseReactions() {
        return D_AdverseReactions;
    }
 
    public void setAdverseReactions(String AdverseReactions) {
        this.D_AdverseReactions = AdverseReactions;
    }
 
    public String getType() {
        return D_Type;
    }
 
    public void setType(String Type) {
        this.D_Type = Type == null ? null : Type.trim();
    }
    
    public String getDrugInteractions() {
        return D_DrugInteractions;
    }
 
    public void setDrugInteractions(String DrugInteractions) {
        this.D_DrugInteractions = DrugInteractions == null ? null : DrugInteractions.trim();
    }
    
    public String getPack() {
        return D_Pack;
    }
 
    public void setPack(String Pack) {
        this.D_Pack = Pack == null ? null : Pack.trim();
    }
    
    public String getInnComponentName() {
        return D_InnComponentName;
    }
 
    public void setInnComponentName(String InnComponentName) {
        this.D_InnComponentName = InnComponentName == null ? null : InnComponentName.trim();
    }
}
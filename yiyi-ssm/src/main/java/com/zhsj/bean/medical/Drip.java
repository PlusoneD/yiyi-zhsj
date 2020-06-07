package com.zhsj.bean.medical;

public class Drip {
    private String DripList_id;
    private String Drug_id;
    private int D_Sequence;
    private String D_Dose;
    private String D_State;
    private String D_Time;

    public Drip(){
    	super();
    }
    
    public Drip(String dripList_id, String drug_id, int d_Sequence, String d_Dose, String d_State, String d_Time) {
        DripList_id = dripList_id;
        Drug_id = drug_id;
        D_Sequence = d_Sequence;
        D_Dose = d_Dose;
        D_State = d_State;
        D_Time = d_Time;
    }

    public String getDripList_id() {
        return DripList_id;
    }

    public void setDripList_id(String dripList_id) {
        DripList_id = dripList_id;
    }

    public String getDrug_id() {
        return Drug_id;
    }

    public void setDrug_id(String drug_id) {
        Drug_id = drug_id;
    }

    public int getD_Sequence() {
        return D_Sequence;
    }

    public void setD_Sequence(int d_Sequence) {
        D_Sequence = d_Sequence;
    }

    public String getD_Dose() {
        return D_Dose;
    }

    public void setD_Dose(String d_Dose) {
        D_Dose = d_Dose;
    }

    public String getD_State() {
        return D_State;
    }

    public void setD_State(String d_State) {
        D_State = d_State;
    }

    public String getD_Time() {
        return D_Time;
    }

    public void setD_Time(String d_Time) {
        D_Time = d_Time;
    }
}

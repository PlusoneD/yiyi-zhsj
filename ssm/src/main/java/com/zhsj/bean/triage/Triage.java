package com.zhsj.bean.triage;

import java.sql.Timestamp;

public class Triage {
    private String Triage_id;
    private String Patient_id;
    private String remark;
    private String state;
    private Timestamp submitTime;
    private Timestamp triageTime;
    private String result;
    private String autoResult;
    private Double rate;


    public Triage(String triage_id, String patient_id, String remark, String state, Timestamp submitTime, Timestamp triageTime, String result, String autoResult, Double rate) {
        Triage_id = triage_id;
        Patient_id = patient_id;
        this.remark = remark;
        this.state = state;
        this.submitTime = submitTime;
        this.triageTime = triageTime;
        this.result = result;
        this.autoResult = autoResult;
        this.rate = rate;
    }

    public String getTriage_id() {
        return Triage_id;
    }

    public void setTriage_id(String triage_id) {
        Triage_id = triage_id;
    }

    public String getPatient_id() {
        return Patient_id;
    }

    public void setPatient_id(String patient_id) {
        Patient_id = patient_id;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Timestamp getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Timestamp submitTime) {
        this.submitTime = submitTime;
    }

    public Timestamp getTriageTime() {
        return triageTime;
    }

    public void setTriageTime(Timestamp triageTime) {
        this.triageTime = triageTime;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getAutoResult() {
        return autoResult;
    }

    public void setAutoResult(String autoResult) {
        this.autoResult = autoResult;
    }

    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }
}

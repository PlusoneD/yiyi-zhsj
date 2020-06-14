package com.zhsj.bean.triage;

public class Symptom {
    private String Symptom_id;
    private String S_BodyPart;
    private String S_Description;


    public Symptom(String symptom_id, String s_bodyPart, String s_description) {
        Symptom_id = symptom_id;
        S_BodyPart = s_bodyPart;
        S_Description = s_description;
    }

    public String getSymptom_id() {
        return Symptom_id;
    }

    public void setSymptom_id(String symptom_id) {
        Symptom_id = symptom_id;
    }

    public String getS_BodyPart() {
        return S_BodyPart;
    }

    public void setS_BodyPart(String s_BodyPart) {
        S_BodyPart = s_BodyPart;
    }

    public String getS_Description() {
        return S_Description;
    }

    public void setS_Description(String s_Description) {
        S_Description = s_Description;
    }
}

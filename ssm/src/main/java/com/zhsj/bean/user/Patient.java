package com.zhsj.bean.user;

public class Patient {
    private String Patient_id;
    private String P_NickName;
    private String P_Birthday;
    private String P_MailAdress;
    private String P_MedicalInsuranceCardNumber;

    public Patient(String patient_id, String p_nickName, String p_birthday, String p_mailAdress, String p_medicalInsuranceCardNumber) {
        Patient_id = patient_id;
        P_NickName = p_nickName;
        P_Birthday = p_birthday;
        P_MailAdress = p_mailAdress;
        P_MedicalInsuranceCardNumber = p_medicalInsuranceCardNumber;
    }

    public String getPatient_id() {
        return Patient_id;
    }

    public void setPatient_id(String patient_id) {
        Patient_id = patient_id;
    }

    public String getP_NickName() {
        return P_NickName;
    }

    public void setP_NickName(String p_NickName) {
        P_NickName = p_NickName;
    }

    public String getP_Birthday() {
        return P_Birthday;
    }

    public void setP_Birthday(String p_Birthday) {
        P_Birthday = p_Birthday;
    }

    public String getP_MailAdress() {
        return P_MailAdress;
    }

    public void setP_MailAdress(String p_MailAdress) {
        P_MailAdress = p_MailAdress;
    }

    public String getP_MedicalInsuranceCardNumber() {
        return P_MedicalInsuranceCardNumber;
    }

    public void setP_MedicalInsuranceCardNumber(String p_MedicalInsuranceCardNumber) {
        P_MedicalInsuranceCardNumber = p_MedicalInsuranceCardNumber;
    }
}

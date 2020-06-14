package com.zhsj.service;

import com.zhsj.bean.triage.Triage;

import java.sql.Timestamp;
import java.util.List;

public interface TriageService {
    List queryByState(String state);

    List<Triage> queryByStateAndUserid(String state, String user_id);

    void updateTriageState(String triageid, String depname, Timestamp time, String state);

    void addTriage(String user_id, String state, String info, Timestamp time, String depid, String rate);
}

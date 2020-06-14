package com.zhsj.dao;

import com.zhsj.bean.triage.Triage;
import org.apache.ibatis.annotations.Param;

import java.sql.Timestamp;
import java.util.List;

public interface TriageDao {
    List selectByState(String state);

    List<Triage> selectByStateAndUserid(@Param("state") String state, @Param("user_id")String user_id);

    void updateTriageState(@Param("triageid") String triageid, @Param("depname") String depname,@Param("time") Timestamp time, @Param("state") String state);

    String selectMaxTriageid();

    void insertTriage(@Param("id")String id,@Param("user_id") String user_id,@Param("state") String state,@Param("info") String info,@Param("time") Timestamp time,@Param("name") String name,@Param("rate") String rate);
}

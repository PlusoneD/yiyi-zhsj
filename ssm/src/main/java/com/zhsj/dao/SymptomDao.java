package com.zhsj.dao;

import com.zhsj.bean.triage.Symptom;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SymptomDao {
    List<Symptom> selectAll();

    List<Symptom> selectByBodypart(String bodypart);

    Symptom selectById(String id);

    void insert(@Param("id")String id, @Param("bodypart")String bodypart, @Param("description")String description);

    void deleteByPrimaryKey(String id);

    void updateByPrimaryKey(@Param("id")String id,@Param("bodypart")String bodypart,@Param("description")String description);
}

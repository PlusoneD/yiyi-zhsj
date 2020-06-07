package com.zhsj.dao;

import com.zhsj.bean.triage.Symptom;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SymptomDao {
    List<Symptom> selectAll();

    List<Symptom> selectByBodypart(String bodypart);

	void insert(@Param("id")String id,@Param("bodypart")String bodypart,@Param("description")String description);

	void deleteByPrimaryKey(String id);

	void updateByPrimaryKey(@Param("id")String id,@Param("bodypart")String bodypart,@Param("description")String description);
}

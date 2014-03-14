package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.SkillCategory;

public interface SkillCategoryDAO extends AbstractDAO<SkillCategory, String> {
    List<SkillCategory> getSkillCategory();
}

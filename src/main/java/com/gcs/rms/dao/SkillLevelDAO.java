package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.SkillLevel;

public interface SkillLevelDAO extends AbstractDAO<SkillLevel, String> {
    List<SkillLevel> getSkillLevel();
}

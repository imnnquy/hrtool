package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.Skill;

public interface SkillDAO extends AbstractDAO<Skill, String> {
    List<Skill> getAllSkill();
}

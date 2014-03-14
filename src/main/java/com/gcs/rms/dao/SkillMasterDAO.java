package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.SkillMaster;

public interface SkillMasterDAO extends AbstractDAO<SkillMaster, String> {
    List<SkillMaster> getSkillMaster();

}

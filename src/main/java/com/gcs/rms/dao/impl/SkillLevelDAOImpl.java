package com.gcs.rms.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.SkillLevelDAO;
import com.gcs.rms.pojo.SkillLevel;

@Repository
public class SkillLevelDAOImpl extends AbstractDAOImpl<SkillLevel, String> implements SkillLevelDAO {

    protected SkillLevelDAOImpl() {
        super(SkillLevel.class);
        // TODO Auto-generated constructor stub
    }

    public List<SkillLevel> getSkillLevel() {
        // TODO Auto-generated method stub
        return super.getAll();
    }

}

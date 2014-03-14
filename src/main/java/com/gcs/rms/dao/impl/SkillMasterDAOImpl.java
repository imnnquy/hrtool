package com.gcs.rms.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.SkillMasterDAO;
import com.gcs.rms.pojo.SkillMaster;

@Repository
public class SkillMasterDAOImpl extends AbstractDAOImpl<SkillMaster, String> implements SkillMasterDAO {

    protected SkillMasterDAOImpl() {
        super(SkillMaster.class);
        // TODO Auto-generated constructor stub
    }

    public List<SkillMaster> getSkillMaster() {
        // TODO Auto-generated method stub
        return super.getAll();
    }

}

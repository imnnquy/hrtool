package com.gcs.rms.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.SkillDAO;
import com.gcs.rms.pojo.Skill;

@Repository
public class SkillDAOImpl extends AbstractDAOImpl<Skill, String> implements SkillDAO {

    protected SkillDAOImpl() {
        super(Skill.class);
        // TODO Auto-generated constructor stub
    }

    public List<Skill> getAllSkill() {
        // TODO Auto-generated method stub
        return super.getAll();
    }

}

package com.gcs.rms.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.SkillCategoryDAO;
import com.gcs.rms.pojo.SkillCategory;

@Repository
public class SkillCategoryDAOImpl extends AbstractDAOImpl<SkillCategory, String> implements SkillCategoryDAO {

    protected SkillCategoryDAOImpl() {
        super(SkillCategory.class);
        // TODO Auto-generated constructor stub
    }

    public List<SkillCategory> getSkillCategory() {
        // TODO Auto-generated method stub
        return super.getAll();
    }

}
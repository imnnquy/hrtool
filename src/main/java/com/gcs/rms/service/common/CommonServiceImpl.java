package com.gcs.rms.service.common;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gcs.rms.dao.SkillCategoryDAO;
import com.gcs.rms.dao.SkillLevelDAO;
import com.gcs.rms.dao.SkillMasterDAO;
import com.gcs.rms.dto.SkillDTO;
import com.gcs.rms.pojo.SkillCategory;
import com.gcs.rms.pojo.SkillLevel;
import com.gcs.rms.pojo.SkillMaster;

@Service
@Transactional
public class CommonServiceImpl implements CommonService {

    @Autowired
    private SkillLevelDAO skillLevelDAO;

    @Autowired
    private SkillMasterDAO skillMasterDAO;

    @Autowired
    private SkillCategoryDAO skillCategoryDAO;

    public List<SkillDTO> getSkillMaster() {

        List<SkillMaster> skillMasters = skillMasterDAO.getAll();
        List<SkillDTO> skillDTOs = new ArrayList<SkillDTO>();
        for (SkillMaster skillMaster : skillMasters) {
            SkillDTO skillDTO = new SkillDTO();
            skillDTO.setId(skillMaster.getSkillMasterId());
            skillDTO.setskillMasterOrLevelName(skillMaster.getSkillMasterName());
            skillDTOs.add(skillDTO);
        }
        return skillDTOs;
    }

    public List<SkillCategory> getSkillCategory() {

        return skillCategoryDAO.getSkillCategory();
    }

    public List<SkillDTO> getSkillLevel() {

        List<SkillLevel> skillLevels = skillLevelDAO.getAll();
        List<SkillDTO> skillDTOs = new ArrayList<SkillDTO>();
        for (SkillLevel skillLevel : skillLevels) {
            SkillDTO skillDTO = new SkillDTO();
            skillDTO.setId(skillLevel.getSkillLevelId());
            skillDTO.setskillMasterOrLevelName(skillLevel.getSkillLevelName());
            skillDTOs.add(skillDTO);
        }
        return skillDTOs;
    }
}
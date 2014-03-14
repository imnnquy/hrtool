package com.gcs.rms.service.common;

import java.util.List;

import com.gcs.rms.dto.SkillDTO;
import com.gcs.rms.pojo.SkillCategory;

public interface CommonService {
    List<SkillDTO> getSkillMaster();

    List<SkillCategory> getSkillCategory();

    List<SkillDTO> getSkillLevel();

}

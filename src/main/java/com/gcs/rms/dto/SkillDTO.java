/**
 * 
 */
package com.gcs.rms.dto;

/**
 * @author longhp
 * 
 */
public class SkillDTO {

    private Integer id;

    private String skillMasterOrLevelName;

    private String skillCategory;

    /**
     * @return the _id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param _id
     *            the _id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the skillCategory
     */
    public String getSkillCategory() {
        return skillCategory;
    }

    /**
     * @return the skillMasterOrLevelName
     */
    public String getskillMasterOrLevelName() {
        return skillMasterOrLevelName;
    }

    /**
     * @param skillMasterOrLevelName
     *            the skillMasterOrLevelName to set
     */
    public void setskillMasterOrLevelName(String skillMasterOrLevelName) {
        this.skillMasterOrLevelName = skillMasterOrLevelName;
    }

    /**
     * @param skillCategory
     *            the skillCategory to set
     */
    public void setSkillCategory(String skillCategory) {
        this.skillCategory = skillCategory;
    }

}

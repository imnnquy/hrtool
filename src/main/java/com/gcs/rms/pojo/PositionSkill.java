package com.gcs.rms.pojo;

// Generated Mar 7, 2014 3:40:16 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * PositionSkill generated by hbm2java
 */
@Entity
@Table(name = "position_skill", catalog = "rmsdb")
public class PositionSkill implements java.io.Serializable {

    private Integer positionSkillId;

    private Skill skill;

    private Position position;

    public PositionSkill() {
    }

    public PositionSkill(Skill skill, Position position) {
        this.skill = skill;
        this.position = position;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Position_Skill_ID", unique = true, nullable = false)
    public Integer getPositionSkillId() {
        return this.positionSkillId;
    }

    public void setPositionSkillId(Integer positionSkillId) {
        this.positionSkillId = positionSkillId;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Skill_ID")
    public Skill getSkill() {
        return this.skill;
    }

    public void setSkill(Skill skill) {
        this.skill = skill;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Position_ID")
    public Position getPosition() {
        return this.position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }

}
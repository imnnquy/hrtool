package com.gcs.rms.pojo;

// Generated Mar 7, 2014 3:40:16 PM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Status generated by hbm2java
 */
@Entity
@Table(name = "status", catalog = "rmsdb")
public class Status implements java.io.Serializable {

    private Integer statusId;

    private String statusName;

    private String type;

    private Integer code;

    private String description;

    private Set<Candidate> candidates = new HashSet<Candidate>(0);

    private Set<ApplicationPhaseStatus> applicationPhaseStatuses = new HashSet<ApplicationPhaseStatus>(0);

    private Set<Vacancy> vacancies = new HashSet<Vacancy>(0);

    private Set<Position> positions = new HashSet<Position>(0);

    public Status() {
    }

    public Status(String statusName, String type, Integer code, String description, Set<Candidate> candidates,
            Set<ApplicationPhaseStatus> applicationPhaseStatuses, Set<Vacancy> vacancies, Set<Position> positions) {
        this.statusName = statusName;
        this.type = type;
        this.code = code;
        this.description = description;
        this.candidates = candidates;
        this.applicationPhaseStatuses = applicationPhaseStatuses;
        this.vacancies = vacancies;
        this.positions = positions;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Status_ID", unique = true, nullable = false)
    public Integer getStatusId() {
        return this.statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    @Column(name = "Status_Name", length = 50)
    public String getStatusName() {
        return this.statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    @Column(name = "Type", length = 50)
    public String getType() {
        return this.type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Column(name = "Code")
    public Integer getCode() {
        return this.code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    @Column(name = "Description", length = 50)
    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "status")
    public Set<Candidate> getCandidates() {
        return this.candidates;
    }

    public void setCandidates(Set<Candidate> candidates) {
        this.candidates = candidates;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "status")
    public Set<ApplicationPhaseStatus> getApplicationPhaseStatuses() {
        return this.applicationPhaseStatuses;
    }

    public void setApplicationPhaseStatuses(Set<ApplicationPhaseStatus> applicationPhaseStatuses) {
        this.applicationPhaseStatuses = applicationPhaseStatuses;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "status")
    public Set<Vacancy> getVacancies() {
        return this.vacancies;
    }

    public void setVacancies(Set<Vacancy> vacancies) {
        this.vacancies = vacancies;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "status")
    public Set<Position> getPositions() {
        return this.positions;
    }

    public void setPositions(Set<Position> positions) {
        this.positions = positions;
    }

}
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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * ApplicationPhaseStatus generated by hbm2java
 */
@Entity
@Table(name = "application_phase_status", catalog = "rmsdb")
public class ApplicationPhaseStatus implements java.io.Serializable {

    private Integer applicationPhaseStatusId;

    private Status status;

    private Phase phase;

    private Set<CandidateApplication> candidateApplications = new HashSet<CandidateApplication>(0);

    public ApplicationPhaseStatus() {
    }

    public ApplicationPhaseStatus(Status status, Phase phase, Set<CandidateApplication> candidateApplications) {
        this.status = status;
        this.phase = phase;
        this.candidateApplications = candidateApplications;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "Application_Phase_Status_ID", unique = true, nullable = false)
    public Integer getApplicationPhaseStatusId() {
        return this.applicationPhaseStatusId;
    }

    public void setApplicationPhaseStatusId(Integer applicationPhaseStatusId) {
        this.applicationPhaseStatusId = applicationPhaseStatusId;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Application_Status_ID")
    public Status getStatus() {
        return this.status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Phase_ID")
    public Phase getPhase() {
        return this.phase;
    }

    public void setPhase(Phase phase) {
        this.phase = phase;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "applicationPhaseStatus")
    public Set<CandidateApplication> getCandidateApplications() {
        return this.candidateApplications;
    }

    public void setCandidateApplications(Set<CandidateApplication> candidateApplications) {
        this.candidateApplications = candidateApplications;
    }

}
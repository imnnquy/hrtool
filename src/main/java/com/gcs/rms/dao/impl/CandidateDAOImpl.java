package com.gcs.rms.dao.impl;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.gcs.rms.dao.CandidateDAO;
import com.gcs.rms.pojo.Candidate;
import com.gcs.rms.pojo.Vacancy;

public class CandidateDAOImpl extends AbstractDAOImpl<Candidate, Integer> implements CandidateDAO {

    protected CandidateDAOImpl(Class<Candidate> entityClass) {
        super(entityClass);
    }

    public void createCandidate(Candidate candidate) {
        super.saveOrUpdate(candidate);
    }

    public void updateCandidate(Candidate candidate) {
        super.saveOrUpdate(candidate);
    }

    public void updateCandidateStatus(Candidate candidate) {
        super.saveOrUpdate(candidate);
    }

    public void deleteCandidate(Candidate candidate) {
        super.delete(candidate);
    }

    public List<Candidate> searchCandidate() {
        List<Candidate> listCandidate = super.getAll();
        return listCandidate;
    }

    public List<Candidate> searchCandidateFromVacancy(Vacancy vacancy) {
        // TODO Auto-generated method stub
        return null;
    }

    public List<Candidate> searchCandidate(Criterion criterion) {
        List<Candidate> listCandidate = super.findByCriteria(criterion);
        return listCandidate;
    }

    public Candidate viewCandidateDetail(Integer candidateId) {
        Candidate candidate = super.findById(candidateId);
        return candidate;
    }

}

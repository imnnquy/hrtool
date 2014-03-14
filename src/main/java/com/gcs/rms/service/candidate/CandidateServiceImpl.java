package com.gcs.rms.service.candidate;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.gcs.rms.dao.impl.CandidateDAOImpl;
import com.gcs.rms.pojo.Candidate;
import com.gcs.rms.pojo.Vacancy;

public class CandidateServiceImpl implements CandidateService {
    // @Autowired
    private CandidateDAOImpl candidateDAO;

    public void createCandidate(Candidate candidate) {
        candidateDAO.saveOrUpdate(candidate);
    }

    public void updateCandidate(Candidate candidate) {
        candidateDAO.saveOrUpdate(candidate);
    }

    public void updateCandidateStatus(Candidate candidate) {
        candidateDAO.saveOrUpdate(candidate);
    }

    public void deleteCandidate(Candidate candidate) {
        candidateDAO.delete(candidate);
    }

    public List<Candidate> searchCandidate() {
        List<Candidate> listCandidate = candidateDAO.getAll();
        return listCandidate;
    }

    public List<Candidate> searchCandidateFromVacancy(Vacancy vacancy) {
        // TODO Auto-generated method stub
        return null;
    }

    public List<Candidate> searchCandidate(Criterion criterion) {
        List<Candidate> listCandidate = candidateDAO.findByCriteria(criterion);
        return listCandidate;
    }

    public Candidate viewCandidateDetail(Integer candidateId) {
        Candidate candidate = candidateDAO.findById(candidateId);
        return candidate;
    }

}

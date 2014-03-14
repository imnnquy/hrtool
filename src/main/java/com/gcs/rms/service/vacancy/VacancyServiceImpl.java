/**
 * 
 */
package com.gcs.rms.service.vacancy;

import java.util.List;
import java.util.Locale;

import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gcs.rms.dao.DivisionDAO;
import com.gcs.rms.dao.ManagerDAO;
import com.gcs.rms.dao.VacancyDAO;
import com.gcs.rms.pojo.Division;
import com.gcs.rms.pojo.Manager;
import com.gcs.rms.pojo.Status;
import com.gcs.rms.pojo.Vacancy;

/**
 * @author longhp
 * 
 */
@Service
public class VacancyServiceImpl implements VacancyService {

    @Autowired
    private VacancyDAO vacancyDAO;

    @Autowired
    private DivisionDAO divisionDAO;

    @Autowired
    private ManagerDAO managerDAO;

    @Autowired
    private MessageSource messageSource;

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.vacancy.VacancyService#getVacancyById(int)
     */
    @Transactional(readOnly = true)
    public Vacancy getVacancyById(int id) {

        return vacancyDAO.getVacancyById(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.vacancy.VacancyService#createVacancy(com.gcs.rms.pojo.Vacancy)
     */
    @Transactional
    public int createVacancy(Vacancy vacancy) throws Exception {
        List<Vacancy> result = this.vacancyDAO
                .findByCriteria(Restrictions.like("vacancyName", vacancy.getVacancyName()));
        if (result != null && result.size() > 0) {
            throw new Exception(messageSource.getMessage("MSG_VAN_001_001", null, Locale.US));
        }
        vacancyDAO.createVacancy(vacancy);
        result = this.vacancyDAO.findByCriteria(Restrictions.like("vacancyName", vacancy.getVacancyName()));
        if (result != null && result.size() > 0) {
            return ((Vacancy) result.get(0)).getVacancyId().intValue();
        }
        throw new Exception("Occur error during create a new vacancy");
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.vacancy.VacancyService#getAllDivisions()
     */
    @Transactional(readOnly = true)
    public List<Division> getAllDivisions() {
        return divisionDAO.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.vacancy.VacancyService#getAllManagers()
     */
    @Transactional(readOnly = true)
    public List<Manager> getAllManagers() {

        return managerDAO.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.vacancy.VacancyService#getAllStatus()
     */
    public List<Status> getAllStatus() {
        // TODO Auto-generated method stub
        return null;
    }

}

/**
 * 
 */
package com.gcs.rms.dao.impl;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.VacancyDAO;
import com.gcs.rms.pojo.Vacancy;

/**
 * @author longhp
 * 
 */
@Repository
public class VacancyDAOImpl extends AbstractDAOImpl<Vacancy, String> implements VacancyDAO {

    /**
     * @param entityClass
     */
    protected VacancyDAOImpl() {
        super(Vacancy.class);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#findById(java.io.Serializable)
     */
    public Vacancy findById(String id) {
        return super.findById(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#saveOrUpdate(java.lang.Object)
     */
    public void saveOrUpdate(Vacancy e) {
        super.saveOrUpdate(e);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#delete(java.lang.Object)
     */
    public void delete(Vacancy e) {
        // TODO Auto-generated method stub
        super.delete(e);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#findByCriteria(org.hibernate.criterion.Criterion)
     */
    public List<Vacancy> findByCriteria(Criterion criterion) {
        return super.findByCriteria(criterion);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#getAllUser()
     */
    public List<Vacancy> getAll() {
        return super.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.VacancyDAO#getVacancyById(int)
     */
    public Vacancy getVacancyById(int id) {
        return findById(String.valueOf(id));
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.VacancyDAO#createVacancy(com.gcs.rms.pojo.Vacancy)
     */
    public synchronized void createVacancy(Vacancy vacancy) {
        super.saveOrUpdate(vacancy);
    }

}

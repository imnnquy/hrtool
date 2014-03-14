/**
 * 
 */
package com.gcs.rms.dao.impl;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.DivisionDAO;
import com.gcs.rms.pojo.Division;

/**
 * @author longhp
 * 
 */
@Repository
public class DivisionDAOImpl extends AbstractDAOImpl<Division, String> implements DivisionDAO {

    /**
     * @param entityClass
     */
    protected DivisionDAOImpl() {
        super(Division.class);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#findById(java.io.Serializable)
     */
    public Division findById(String id) {
        return super.findById(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#saveOrUpdate(java.lang.Object)
     */
    public void saveOrUpdate(Division e) {
        super.saveOrUpdate(e);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#delete(java.lang.Object)
     */
    public void delete(Division e) {
        super.delete(e);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#findByCriteria(org.hibernate.criterion.Criterion)
     */
    public List<Division> findByCriteria(Criterion criterion) {
        return super.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDAO#getAll()
     */
    public List<Division> getAll() {
        // TODO Auto-generated method stub
        return super.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.DivisionDAO#getAllDivision()
     */
    public List<Division> getAllDivision() {
        return super.getAll();
    }

}

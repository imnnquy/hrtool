package com.gcs.rms.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.ReportDAO;
import com.gcs.rms.pojo.User;

@Repository
public class ReportDAOImpl extends AbstractDAOImpl<User, String> implements ReportDAO {

    /**
     * @param entityClass
     */
    protected ReportDAOImpl() {
        super(User.class);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDao#findById(java.io.Serializable)
     */
    public User findById(String id) {
        return super.findById(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.ReportDAO#getAllUser()
     */
    public List<User> getAllUser() {
        return super.getAll();
    }
}

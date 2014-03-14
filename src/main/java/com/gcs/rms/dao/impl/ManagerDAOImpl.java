/**
 * 
 */
package com.gcs.rms.dao.impl;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.ManagerDAO;
import com.gcs.rms.pojo.Manager;

/**
 * @author longhp
 * 
 */
@Repository
public class ManagerDAOImpl extends AbstractDAOImpl<Manager, String> implements ManagerDAO {

    /**
     * @param entityClass
     */
    protected ManagerDAOImpl() {
        super(Manager.class);
    }

}

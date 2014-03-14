/**
 * 
 */
package com.gcs.rms.dao.impl;

import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.StatusDAO;
import com.gcs.rms.pojo.Status;

/**
 * @author hoatn
 * 
 */
@Repository
public class StatusDAOImpl extends AbstractDAOImpl<Status, String> implements
        StatusDAO {

    /**
     * @param entityClass
     */
    protected StatusDAOImpl() {
        super(Status.class);
    }

}

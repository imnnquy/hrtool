/**
 * 
 */
package com.gcs.rms.dao.impl;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.springframework.stereotype.Repository;

import com.gcs.rms.dao.PositionDAO;
import com.gcs.rms.pojo.Position;

/**
 * @author hoatn
 * 
 */
@Repository
public class PositionDAOImpl extends AbstractDAOImpl<Position, String>
        implements PositionDAO {

    /**
     * @param entityClass
     */
    protected PositionDAOImpl() {
        super(Position.class);
        // TODO Auto-generated constructor stub
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.dao.PositionDAO#createPosition(com.gcs.rms.pojo.Position)
     */
    public void createPosition(Position position) {
        super.saveOrUpdate(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.PositionDAO#clonePosition(com.gcs.rms.pojo.Position)
     */
    public void clonePosition(Position position) {
        super.saveOrUpdate(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.dao.PositionDAO#searchPosition(org.hibernate.criterion.Criterion
     * )
     */
    public List<Position> searchPosition(Criterion criterion) {
        return super.findByCriteria(criterion);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.dao.PositionDAO#updatePosition(com.gcs.rms.pojo.Position)
     */
    public void updatePosition(Position position) {
        super.saveOrUpdate(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.PositionDAO#deletePosition(int)
     */
    public void deletePosition(Position position) {
        super.delete(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.PositionDAO#viewPositionDetail(int)
     */
    public Position viewPositionDetail(String id) {
        return super.findById(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.dao.PositionDAO#updatePositionStatus(com.gcs.rms.pojo.Position
     * , java.lang.String)
     */
    public void updatePositionStatus(Position position) {
        super.saveOrUpdate(position);
    }

}

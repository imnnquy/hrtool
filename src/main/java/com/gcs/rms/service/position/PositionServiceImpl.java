/**
 * 
 */
package com.gcs.rms.service.position;

import java.util.List;

import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gcs.rms.dao.PositionDAO;
import com.gcs.rms.dao.StatusDAO;
import com.gcs.rms.pojo.Position;
import com.gcs.rms.pojo.Status;

/**
 * @author hoatn
 * 
 */
@Service
public class PositionServiceImpl implements PositionService {

    @Autowired
    private PositionDAO positionDAO;

    @Autowired
    private StatusDAO statusDAO;

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#createPosition(com.gcs.rms
     * .pojo.Position)
     */
    @Transactional
    public void createPosition(Position position) {
        positionDAO.createPosition(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#clonePosition(com.gcs.rms
     * .pojo.Position)
     */
    @Transactional(readOnly = true)
    public void clonePosition(Position position) {
        positionDAO.clonePosition(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * 
     * com.gcs.rms.service.position.PositionService#searchPosition(org.hibernate
     * .criterion.Criterion)
     */
    @Transactional(readOnly = true)
    public List<Position> searchPosition(Criterion criterion) {
        return positionDAO.searchPosition(criterion);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#updatePosition(com.gcs.rms
     * .pojo.Position)
     */
    @Transactional(readOnly = true)
    public void updatePosition(Position position) {
        positionDAO.updatePosition(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#deletePosition(com.gcs.rms
     * .pojo.Position)
     */
    @Transactional(readOnly = true)
    public void deletePosition(Position position) {
        positionDAO.deletePosition(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#viewPositionDetail(java.
     * lang.String)
     */
    @Transactional(readOnly = true)
    public Position viewPositionDetail(String id) {
        return positionDAO.viewPositionDetail(id);
    }

    /*
     * (non-Javadoc)
     * 
     * @see
     * com.gcs.rms.service.position.PositionService#updatePositionStatus(com
     * .gcs.rms.pojo.Position)
     */
    @Transactional(readOnly = true)
    public void updatePositionStatus(Position position) {
        positionDAO.updatePositionStatus(position);
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.position.PositionService#getAllStatus()
     */
    @Transactional(readOnly = true)
    public List<Status> getAllStatus() {
        return statusDAO.findByCriteria(Restrictions.like("type", "Position"));
    }
}

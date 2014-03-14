/**
 * 
 */
package com.gcs.rms.dao;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.gcs.rms.pojo.Position;

/**
 * @author hoatn
 * 
 */
public interface PositionDAO extends AbstractDAO<Position, String> {

    void createPosition(Position position);

    void clonePosition(Position position);

    List<Position> searchPosition(Criterion criterion);

    void updatePosition(Position position);

    void deletePosition(Position position);

    Position viewPositionDetail(String id);

    void updatePositionStatus(Position position);
}

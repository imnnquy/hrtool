/**
 * 
 */
package com.gcs.rms.service.position;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.gcs.rms.pojo.Position;
import com.gcs.rms.pojo.Status;

/**
 * @author hoatn
 * 
 */
public interface PositionService {

    void createPosition(Position position);

    void clonePosition(Position position);

    List<Position> searchPosition(Criterion criterion);

    void updatePosition(Position position);

    void deletePosition(Position position);

    Position viewPositionDetail(String id);

    void updatePositionStatus(Position position);

    List<Status> getAllStatus();
}

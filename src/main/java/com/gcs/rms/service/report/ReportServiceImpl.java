package com.gcs.rms.service.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gcs.rms.dao.DivisionDAO;
import com.gcs.rms.dao.PositionDAO;
import com.gcs.rms.pojo.Division;
import com.gcs.rms.pojo.Position;

@Service("reportService")
public class ReportServiceImpl implements ReportService {

    @Autowired
    private DivisionDAO divisionDAO;

    @Autowired
    private PositionDAO positionDAO;

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.report.ReportService#getDivisions()
     */
    @Transactional(readOnly = true)
    public List<Division> getDivisions() {
        return divisionDAO.getAll();
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.service.report.ReportService#getPositions()
     */
    @Transactional(readOnly = true)
    public List<Position> getPositions() {
        return positionDAO.getAll();
    }

}

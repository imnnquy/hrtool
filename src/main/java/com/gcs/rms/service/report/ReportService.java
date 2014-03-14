package com.gcs.rms.service.report;

import java.util.List;

import com.gcs.rms.pojo.Division;
import com.gcs.rms.pojo.Position;

public interface ReportService {
    List<Position> getPositions();

    List<Division> getDivisions();
}

/**
 * 
 */
package com.gcs.rms.service.vacancy;

import java.util.List;

import org.springframework.stereotype.Service;

import com.gcs.rms.pojo.Division;
import com.gcs.rms.pojo.Manager;
import com.gcs.rms.pojo.Status;
import com.gcs.rms.pojo.Vacancy;

/**
 * @author longhp
 * 
 */
@Service
public interface VacancyService {

    Vacancy getVacancyById(int id);

    int createVacancy(Vacancy vacancy) throws Exception;

    List<Division> getAllDivisions();

    List<Manager> getAllManagers();

    List<Status> getAllStatus();
}

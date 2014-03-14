/**
 * 
 */
package com.gcs.rms.dao;

import com.gcs.rms.pojo.Vacancy;

/**
 * @author longhp
 * 
 */
public interface VacancyDAO extends AbstractDAO<Vacancy, String> {

    Vacancy getVacancyById(int id);

    void createVacancy(Vacancy vacancy);
}
/**
 * 
 */
package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.Division;

/**
 * @author longhp
 * 
 */
public interface DivisionDAO extends AbstractDAO<Division, String> {

    List<Division> getAllDivision();
}

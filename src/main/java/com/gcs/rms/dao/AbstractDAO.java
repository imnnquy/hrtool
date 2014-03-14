package com.gcs.rms.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.criterion.Criterion;

/**
 * @author quynn
 * 
 */
public interface AbstractDAO<E, I extends Serializable> {

    E findById(I id);

    void saveOrUpdate(E e);

    void delete(E e);

    List<E> findByCriteria(Criterion criterion);

    List<E> getAll();
}

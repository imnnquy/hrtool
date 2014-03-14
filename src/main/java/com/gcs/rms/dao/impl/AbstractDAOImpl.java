package com.gcs.rms.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.beans.factory.annotation.Autowired;

import com.gcs.rms.dao.AbstractDAO;

/**
 * @author quynn
 * 
 */
public abstract class AbstractDAOImpl<E, I extends Serializable> implements AbstractDAO<E, I> {

    private Class<E> entityClass;

    protected AbstractDAOImpl(Class<E> entityClass) {
        this.entityClass = entityClass;
    }

    @Autowired
    private SessionFactory sessionFactory;

    public Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    public E findById(I id) {
        int tmpID = Integer.parseInt((String) id);
        @SuppressWarnings("unchecked") E objectReturn = (E) getCurrentSession().get(entityClass, tmpID);
        return objectReturn;
    }

    public void saveOrUpdate(E e) {
        getCurrentSession().saveOrUpdate(e);
    }

    public void delete(E e) {
        getCurrentSession().delete(e);
    }

    public List<E> findByCriteria(Criterion criterion) {
        Session ss = getCurrentSession();
        Criteria criteria = ss.createCriteria(entityClass);
        criteria.add(criterion);

        @SuppressWarnings("unchecked") List<E> listReturn = criteria.list();
        return listReturn;
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.gcs.rms.dao.AbstractDao#getAllUser()
     */
    public List<E> getAll() {
        Session ss = getCurrentSession();
        Criteria criteria = ss.createCriteria(entityClass);
        @SuppressWarnings("unchecked") List<E> listReturn = criteria.list();
        return listReturn;
    }
}

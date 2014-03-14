package com.gcs.rms.dao;

import java.util.List;

import com.gcs.rms.pojo.User;

public interface ReportDAO extends AbstractDAO<User, String> {
    List<User> getAllUser();

}

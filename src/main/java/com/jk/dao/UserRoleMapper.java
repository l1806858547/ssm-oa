package com.jk.dao;

import com.jk.model.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(String usid);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(String usid);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);
}
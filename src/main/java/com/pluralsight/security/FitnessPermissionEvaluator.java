package com.pluralsight.security;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;

import javax.sql.DataSource;
import java.io.Serializable;

/**
 * @author Nazar Lelyak.
 */
public class FitnessPermissionEvaluator implements PermissionEvaluator {

    private DataSource dataSource;

    public boolean hasPermission(Authentication authentication, Object targetDomainObject, Object permission) {

        JdbcTemplate template = new JdbcTemplate(dataSource);

        Object [] args = {((User)authentication.getPrincipal()).getUsername(),
                targetDomainObject.getClass().getName(),
                permission.toString()};

        int count = template.queryForObject("SELECT COUNT(*) FROM permissions p " +
                "WHERE p.username = ? and p.target = ? and p.permission = ?", args, Integer.class);

        return count == 1;
    }

    public boolean hasPermission(Authentication authentication, Serializable targetId, String targetType, Object permission) {
        return false;
    }

    public DataSource getDataSource() {
        return dataSource;
    }

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }
}

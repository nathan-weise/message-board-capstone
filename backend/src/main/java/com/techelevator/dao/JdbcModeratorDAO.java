package com.techelevator.dao;

import com.techelevator.model.Post;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component
public class JdbcModeratorDAO implements ModeratorDAO {

    private JdbcTemplate jdbcTemplate;

    public JdbcModeratorDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void addModerator(long userId, long forumId) {
        String sql = "INSERT INTO forum_mods " +
                "(user_id, forum_id) " +
                "VALUES (?,?);";
        jdbcTemplate.update(sql, userId, forumId);
    }
}

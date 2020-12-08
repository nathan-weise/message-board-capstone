package com.techelevator.dao;

import com.techelevator.model.Forum;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Service
@Component
public class JdbcForumDAO implements ForumDAO {

    private JdbcTemplate jdbcTemplate;

    public JdbcForumDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Forum getForumById(long forumId) {
        String sql = "SELECT * FROM forums " +
                     "WHERE forum_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, forumId);
        rowSet.next();
        return mapRowToForum(rowSet);
    }

    //TODO
    // search method, check out ORDER BY DIFFERENCE
//    SELECT * FROM forums
//    WHERE forum_name ILIKE '%brea%';

    private Forum mapRowToForum(SqlRowSet rs) {
        Forum forum = new Forum();
        forum.setId(rs.getLong("forum_id"));
        forum.setName(rs.getString("forum_name"));
        forum.setUserId(rs.getLong("user_id"));
        forum.setCreatedTime(rs.getDate("created_time"));

        return forum;
    }

}

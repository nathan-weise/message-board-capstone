package com.techelevator.dao;

import com.techelevator.model.Forum;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

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

    @Override
    public List<Forum> getFavoriteForums(Long userId) {
        List<Forum> results = new ArrayList<>();
        String sql = "SELECT * FROM forums " +
                     "JOIN forum_favorites ON forums.forum_id = forum_favorites.forum_id " +
                     "WHERE forum_favorite = 1 AND forum_favorites.user_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, userId);
        while (rowSet.next()) {
            results.add(mapRowToForum(rowSet));
        }
        return results;
    }

    //TODO
    // search method, check out ORDER BY DIFFERENCE
    public List<Forum> searchForumByTitle(String searchTerm) {
        List<Forum> results = new ArrayList<>();
        String sql = "SELECT * FROM forums " +
                     "WHERE forum_name ILIKE '%" + searchTerm +  "%';";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);
        while (rowSet.next()) {
            results.add(mapRowToForum(rowSet));
        }
        return results;
    }

    //This exists to help locate a username by their ID
    public long findIdByUsername(String username) {
        String sql = "SELECT user_id FROM users WHERE username ILIKE ?;";
        Long id = jdbcTemplate.queryForObject(sql, Long.class, username);
        if (id != null) {
            return id;
        } else {
            return -1;
        }
    }

    //This is the functionality to insert a new forum into the forum table in the database
    public Forum createNewForum(String forumName, String forumDescription, long userId, LocalDateTime createdDate) {
        Forum newForum = new Forum();
        String sql = "INSERT INTO forums " +
                     "(forum_name, forum_description, user_id, created_time) " +
                     "VALUES (?,?,?,?) RETURNING forum_id;";
        newForum.setName(forumName);
        newForum.setDescription(forumDescription);
        newForum.setUserId(userId);
        newForum.setCreatedTime(createdDate);
        try {
            Long newId = jdbcTemplate.queryForObject(sql, Long.class, forumName, forumDescription, userId, createdDate);
            newForum.setId(newId);
            return newForum;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    @Override
    public void addToFavorites(Long userId, Long forumId) {
        String sql = "INSERT INTO forum_favorites (user_id, forum_id, forum_favorite, created_time) VALUES (?,?,?,?);";
        jdbcTemplate.update(sql, userId, forumId, 1, LocalDateTime.now());
    }

    private Forum mapRowToForum(SqlRowSet rs) {
        Forum forum = new Forum();
        forum.setId(rs.getLong("forum_id"));
        forum.setName(rs.getString("forum_name"));
        forum.setUserId(rs.getLong("user_id"));
        forum.setCreatedTime(rs.getTimestamp("created_time").toLocalDateTime());

        return forum;
    }

}

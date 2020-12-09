package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Component
public class JdbcPostDAO implements PostDAO {

    private JdbcTemplate jdbcTemplate;

    public JdbcPostDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<PostDTO> listAllPosts() {
        List<PostDTO> results = new ArrayList<>();
        String sql = "SELECT * FROM posts " +
                     "JOIN forums ON posts.forum_id = forums.forum_id " +
                     "JOIN users ON posts.user_id = users.user_id;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

    @Override
    public List<PostDTO> listAllPostsForForum(long forumId) {
        List<PostDTO> results = new ArrayList<>();
        String sql = "SELECT * FROM posts " +
                     "JOIN forums ON posts.forum_id = forums.forum_id " +
                     "JOIN users ON posts.user_id = users.user_id " +
                     "WHERE forums.forum_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, forumId);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

    @Override
    public List<PostDTO> listAllPostsByDate() {
        List<PostDTO> results = new ArrayList<>();
        String sql = "SELECT * FROM posts " +
                     "JOIN forums ON posts.forum_id = forums.forum_id " +
                     "JOIN users ON posts.user_id = users.user_id " +
                     "ORDER BY posts.created_time DESC;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

//    @Override
//    public List<PostDTO> listAllPostsByPopularity() {
//
//    }

    private Post mapRowToPost(SqlRowSet rs) {
        Post post = new Post();
        post.setId(rs.getLong("post_id"));
        post.setTitle(rs.getString("post_title"));
        post.setText(rs.getString("post_text"));
        post.setForumId(rs.getLong("forum_id"));
        post.setUserId(rs.getLong("user_id"));
        post.setCreatedDate(rs.getDate("created_time"));

        return post;
    }

    private int calculatePopularity(long postId) {
        String sql = "SELECT (COUNT(CASE WHEN up_vote IS TRUE THEN 1 END) - COUNT(CASE WHEN down_vote IS TRUE THEN 1 END)) AS popularity " +
                "FROM post_votes " +
                "WHERE post_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, postId);
        rowSet.next();
        return rowSet.getInt("popularity");
    }

    private PostDTO mapRowToPostDTO(SqlRowSet rs) {
        PostDTO post = new PostDTO();
        post.setId(rs.getLong("post_id"));
        post.setTitle(rs.getString("post_title"));
        post.setText(rs.getString("post_text"));
        post.setUsername(rs.getString("username"));
        post.setForumName(rs.getString("forum_name"));
        post.setCreatedDate(rs.getDate("created_time"));
        post.setPopularity(calculatePopularity(post.getId()));

        return post;
    }

}

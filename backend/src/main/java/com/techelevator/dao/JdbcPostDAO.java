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
    public List<PostDTO> listPostsForForum(long forumId) {
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

    private PostDTO mapRowToPostDTO(SqlRowSet rs) {
        PostDTO post = new PostDTO();
        post.setId(rs.getLong("post_id"));
        post.setTitle(rs.getString("post_title"));
        post.setText(rs.getString("post_text"));
        post.setUsername(rs.getString("username"));
        post.setForumName(rs.getString("forum_name"));
        post.setCreatedDate(rs.getDate("created_time"));

        return post;
    }

}

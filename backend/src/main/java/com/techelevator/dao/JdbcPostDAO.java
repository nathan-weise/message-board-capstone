package com.techelevator.dao;

import com.techelevator.model.Forum;
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
    private UserDAO userDAO;
    private ForumDAO forumDAO;

    public JdbcPostDAO(JdbcTemplate jdbcTemplate, UserDAO userDAO, ForumDAO forumDAO) {
        this.jdbcTemplate = jdbcTemplate;
        this.userDAO = userDAO;
        this.forumDAO = forumDAO;
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


    @Override
    public List<PostDTO> listAllPostsByRecentPopularity() {
        List<PostDTO> results = new ArrayList<>();
        String sql = "SELECT posts.post_id, posts.post_title, posts.post_text, posts.created_time, users.username, forums.forum_name, SUM(vote) AS popularity " +
                     "FROM posts " +
                     "JOIN post_votes ON posts.post_id = post_votes.post_id " +
                     "JOIN users ON posts.user_id = users.user_id " +
                     "JOIN forums ON posts.forum_id = forums.forum_id " +
                     "WHERE posts.created_time >= NOW() - '24 hours'::INTERVAL " +
                     "GROUP BY posts.post_id, users.username, forums.forum_id " +
                     "ORDER BY popularity DESC, posts.created_time DESC " +
                     "LIMIT 10;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql);
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
        post.setPopularity(calculatePopularity(post.getId()));

        return post;
    }

    private int calculatePopularity(long postId) {
        String sql = "SELECT SUM(vote) AS popularity " +
                "FROM post_votes " +
                "WHERE post_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, postId);
        rowSet.next();
        return rowSet.getInt("popularity");
    }
}

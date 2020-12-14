package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@Component
public class JdbcPostDAO implements PostDAO {

    private static final String QUERY_RECENT_POPULAR =
            "SELECT pv.spicy, pv.vote, posts.post_id, posts.post_title, posts.post_text, posts.user_id, posts.forum_id, posts.created_time, users.username, forums.forum_name, COALESCE(SUM(post_votes.vote), 0) AS popularity " +
            "FROM posts " +
            "LEFT JOIN post_votes ON posts.post_id = post_votes.post_id " +
            "JOIN users ON posts.user_id = users.user_id " +
            "JOIN forums ON posts.forum_id = forums.forum_id " +
            "LEFT JOIN  post_votes pv on (pv.post_id = posts.post_id AND pv.user_id = ?) " +
            "WHERE posts.created_time >= NOW() - '24 hours'::INTERVAL " +
            "GROUP BY posts.post_id, users.username, forums.forum_id, pv.vote, pv.spicy " +
            "ORDER BY popularity DESC, posts.created_time DESC " +
            "LIMIT 10;";

    private static final String QUERY_FORUM_POSTS =
            "SELECT pv.spicy, pv.vote, posts.post_id, posts.post_title, posts.post_text, posts.user_id, posts.forum_id, posts.created_time, users.username, forums.forum_name, COALESCE(SUM(post_votes.vote), 0) AS popularity " +
            "FROM posts " +
            "LEFT JOIN post_votes ON posts.post_id = post_votes.post_id " +
            "JOIN users ON posts.user_id = users.user_id " +
            "JOIN forums ON posts.forum_id = forums.forum_id " +
            "LEFT JOIN  post_votes pv on (pv.post_id = posts.post_id AND pv.user_id = ?) " +
            "WHERE forums.forum_id = ? " +
            "GROUP BY posts.post_id, users.username, forums.forum_id, pv.vote, pv.spicy " +
            "ORDER BY popularity DESC, posts.created_time DESC;";

    private static final String QUERY_POST_DETAILS =
            "SELECT pv.spicy, pv.vote, posts.post_id, posts.post_title, posts.post_text, posts.user_id, posts.forum_id, posts.created_time, users.username, forums.forum_name, COALESCE(SUM(post_votes.vote), 0) AS popularity " +
            "FROM posts " +
            "LEFT JOIN post_votes ON posts.post_id = post_votes.post_id " +
            "JOIN users ON posts.user_id = users.user_id " +
            "JOIN forums ON posts.forum_id = forums.forum_id " +
            "LEFT JOIN  post_votes pv on (pv.post_id = posts.post_id AND pv.user_id = ?) " +
            "WHERE posts.post_id = ? " +
            "GROUP BY posts.post_id, users.username, forums.forum_id, pv.vote, pv.spicy " +
            "ORDER BY popularity DESC, posts.created_time DESC " +
            "LIMIT 10;";

    private static final String QUERY_ALL_POSTS =
            "SELECT pv.spicy, pv.vote, posts.post_id, posts.post_title, posts.post_text, posts.user_id, posts.forum_id, posts.created_time, users.username, forums.forum_name, COALESCE(SUM(post_votes.vote), 0) AS popularity " +
            "FROM posts " +
            "LEFT JOIN post_votes ON posts.post_id = post_votes.post_id " +
            "JOIN users ON posts.user_id = users.user_id " +
            "JOIN forums ON posts.forum_id = forums.forum_id " +
            "LEFT JOIN  post_votes pv on (pv.post_id = posts.post_id AND pv.user_id = ?) " +
            "GROUP BY posts.post_id, users.username, forums.forum_id, pv.vote, pv.spicy " +
            "ORDER BY popularity DESC, posts.created_time DESC;";

    private static final String QUERY_RECENT_POSTS =
            "SELECT pv.spicy, pv.vote, posts.post_id, posts.post_title, posts.post_text, posts.user_id, posts.forum_id, posts.created_time, users.username, forums.forum_name, COALESCE(SUM(post_votes.vote), 0) AS popularity " +
            "FROM posts " +
            "LEFT JOIN post_votes ON posts.post_id = post_votes.post_id " +
            "JOIN users ON posts.user_id = users.user_id " +
            "JOIN forums ON posts.forum_id = forums.forum_id " +
            "LEFT JOIN  post_votes pv on (pv.post_id = posts.post_id AND pv.user_id = ?) " +
            "GROUP BY posts.post_id, users.username, forums.forum_id, pv.vote, pv.spicy " +
            "ORDER BY posts.created_time DESC;";

    private JdbcTemplate jdbcTemplate;
    private UserDAO userDAO;
    private ForumDAO forumDAO;

    public JdbcPostDAO(JdbcTemplate jdbcTemplate, UserDAO userDAO, ForumDAO forumDAO) {
        this.jdbcTemplate = jdbcTemplate;
        this.userDAO = userDAO;
        this.forumDAO = forumDAO;
    }

    @Override
    public List<PostDTO> listAllPosts(long userId) {
        List<PostDTO> results = new ArrayList<>();
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(QUERY_ALL_POSTS, userId);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

    @Override
    public List<PostDTO> listAllPostsForForum(long userId, long forumId) {
        List<PostDTO> results = new ArrayList<>();
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(QUERY_FORUM_POSTS, userId, forumId);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

    @Override
    public List<PostDTO> listAllPostsByDate(long userId) {
        List<PostDTO> results = new ArrayList<>();
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(QUERY_RECENT_POSTS, userId);
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
    public List<PostDTO> listAllPostsByRecentPopularity(long userId) {
        List<PostDTO> results = new ArrayList<>();
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(QUERY_RECENT_POPULAR, userId);
        while (rowSet.next()) {
            results.add(mapRowToPostDTO(rowSet));
        }
        return results;
    }

    @Override
    public PostDTO alterVote(long userId, long postId, Boolean vote) {

        return null;
    }

    @Override
    public Post createNewPost(String postTitle, String postText, long forumId, long userId, LocalDateTime createdDate) {
        Post newPost = new Post();
        String sql = "INSERT INTO posts " +
                     "(post_title, post_text, forum_id, user_id, created_time) " +
                     "VALUES (?,?,?,?,?) RETURNING post_id;";
        newPost.setTitle(postTitle);
        newPost.setText(postText);
        newPost.setForumId(forumId);
        newPost.setUserId(userId);
        newPost.setCreatedDate(createdDate);
        try {
            Long newId = jdbcTemplate.queryForObject(sql, Long.class, postTitle, postText, forumId, userId, createdDate);
            newPost.setId(newId);
            return newPost;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }

    public PostDTO getPost(long userId, long postId) {
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(QUERY_POST_DETAILS, userId, postId);
        rowSet.next();
        return mapRowToPostDTO(rowSet);
    }

    private Post mapRowToPost(SqlRowSet rs) {
        Post post = new Post();
        post.setId(rs.getLong("post_id"));
        post.setTitle(rs.getString("post_title"));
        post.setText(rs.getString("post_text"));
        post.setForumId(rs.getLong("forum_id"));
        post.setUserId(rs.getLong("user_id"));
        post.setCreatedDate(rs.getTimestamp("created_time").toLocalDateTime());

        return post;
    }

    private PostDTO mapRowToPostDTO(SqlRowSet rs) {
        PostDTO post = new PostDTO();
        post.setId(rs.getLong("post_id"));
        post.setForumId(rs.getLong("forum_id"));
        post.setTitle(rs.getString("post_title"));
        post.setText(rs.getString("post_text"));
        post.setUsername(rs.getString("username"));
        post.setForumName(rs.getString("forum_name"));
        post.setCreatedDate(rs.getDate("created_time"));
        post.setPopularity(calculatePopularity(post.getId()));
        post.setVote(rs.getInt("vote"));

        return post;
    }

    private int calculatePopularity(long postId) {
        String sql = "SELECT COALESCE(SUM(post_votes.vote), 0) AS popularity " +
                "FROM post_votes " +
                "WHERE post_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, postId);
        rowSet.next();
        return rowSet.getInt("popularity");
    }
}

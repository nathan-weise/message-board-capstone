package com.techelevator.dao;

import com.techelevator.model.Comment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
@Component
public class JdbcCommentDAO implements CommentDAO {

    private JdbcTemplate jdbcTemplate;

    public JdbcCommentDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Comment> listCommentsByPost(long postId) {
        List<Comment> results = new ArrayList<>();
        String sql = "SELECT * " +
                "FROM comments " +
                "WHERE post_id = ?;";
        SqlRowSet rowSet = jdbcTemplate.queryForRowSet(sql, postId);
        while (rowSet.next()) {
            results.add(mapToComment(rowSet));
        }

        return results;
    }

    @Override
    public Comment addCommentToPost(long postId, long userId, Comment newComment) {
        Comment comment = new Comment();
        String sql = "INSERT INTO comments " +
                "(comment_text, post_id, user_id, created_time) " +
                "VALUES (?, ?, ?, ?) RETURNING comment_id;";
        comment.setText(newComment.getText());
        comment.setUserId(userId);
        comment.setPostId(postId);
        comment.setCreatedTime(LocalDateTime.now());
        Long commentId = jdbcTemplate.queryForObject(sql, Long.class, newComment.getText(), postId, userId, comment.getCreatedTime());
        comment.setId(commentId);
        return comment;
    }

    private Comment mapToComment(SqlRowSet rs) {
        Comment comment = new Comment();
        comment.setId(rs.getLong("comment_id"));
        comment.setText(rs.getString("comment_text"));
        comment.setPostId(rs.getLong("post_id"));
        comment.setUserId(rs.getLong("user_id"));
        comment.setCreatedTime(rs.getTimestamp("created_time").toLocalDateTime());
        return comment;
    }
}

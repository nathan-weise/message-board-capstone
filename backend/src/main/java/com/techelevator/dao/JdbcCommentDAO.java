package com.techelevator.dao;

import com.techelevator.model.Comment;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

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

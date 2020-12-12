package com.techelevator.dao;

import com.techelevator.model.Comment;

import java.util.List;

public interface CommentDAO {

    List<Comment> listCommentsByPost(long postId);
    Comment addCommentToPost(long postId, long userId, Comment newComment);

}

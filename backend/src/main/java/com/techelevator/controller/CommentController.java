package com.techelevator.controller;

import com.techelevator.dao.CommentDAO;
import com.techelevator.model.Comment;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin
public class CommentController {

    private CommentDAO commentDAO;

    public CommentController(CommentDAO commentDAO) {
        this.commentDAO = commentDAO;
    }


    @GetMapping(value = "{postId}/comments")
    public List<Comment> listAllCommentsForPost(@PathVariable long postId) {
        return commentDAO.listCommentsByPost(postId);
    }
}

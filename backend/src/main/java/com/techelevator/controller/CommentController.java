package com.techelevator.controller;

import com.techelevator.dao.CommentDAO;
import com.techelevator.dao.ForumDAO;
import com.techelevator.model.Comment;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.util.List;

@RestController
@CrossOrigin
public class CommentController {

    private CommentDAO commentDAO;
    private ForumDAO forumDAO;

    public CommentController(CommentDAO commentDAO, ForumDAO forumDAO) {
        this.commentDAO = commentDAO;
        this.forumDAO = forumDAO;
    }


    @GetMapping(value = "{postId}/comments")
    public List<Comment> listAllCommentsForPost(@PathVariable long postId) {
        return commentDAO.listCommentsByPost(postId);
    }

    @PostMapping(value = "{postId}/comments")
    @PreAuthorize("isAuthenticated()")
    @ResponseStatus(HttpStatus.CREATED)
    public Comment addComment(Principal principal, @PathVariable long postId, @RequestBody Comment newComment) {
        String username = principal.getName();
        long userId = forumDAO.findIdByUsername(username);
        return commentDAO.addCommentToPost(postId, userId, newComment, username);
    }
}

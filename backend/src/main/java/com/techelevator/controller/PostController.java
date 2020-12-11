package com.techelevator.controller;

import com.techelevator.dao.PostDAO;
import com.techelevator.dao.UserDAO;
import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
@CrossOrigin
public class PostController {

    private PostDAO postDAO;
    private UserDAO userDAO;

    public PostController(PostDAO postDAO, UserDAO userDAO) {
        this.postDAO = postDAO;
        this.userDAO = userDAO;
    }

    //We will need to add some functionality here to find posts by popularity, this is temporary
    @GetMapping(value = "/posts")
    public List<PostDTO> listPosts() {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listAllPosts();
    }

    //Get posts sorted by creation date
    @GetMapping(value = "/posts/new")
    public List<PostDTO> listPostsByDate() {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listAllPostsByDate();
    }

    //Get posts sorted by popularity (upvotes - downvotes)
    @GetMapping(value = "/posts/popular")
    public List<PostDTO> listPostsByPopularity() {
        List<PostDTO> results = postDAO.listAllPosts();
        Collections.sort(results);
        return results;
    }

    //Get top ten most popular posts from the last 24 hours
    //for displaying on the homepage
    @GetMapping(value = "/posts/recent-popular")
    public List<PostDTO> listPostsByRecentPopularity() {
        List<PostDTO> results = postDAO.listAllPostsByRecentPopularity();
        Collections.sort(results);
        return results;
    }

    //get posts for a specific forum
    // /forums/{id}/posts
    @GetMapping(value = "/forums/{forumId}/posts")
    public List<PostDTO> listPostsForForum(@PathVariable long forumId) {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listAllPostsForForum(forumId);
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping(value = "posts")
    @ResponseStatus(HttpStatus.CREATED)
    public Post createPost(Principal principal, @RequestBody Post newPost) {
        String username = principal.getName();
        long userId = userDAO.findIdByUsername(username);
        LocalDateTime date = LocalDateTime.now();
        return postDAO.createNewPost(newPost.getTitle(), newPost.getText(), newPost.getForumId(), userId, date);
    }

    //get specific post on specific forum
    // /forums/{id}/posts/{id}

    //blank query string returns popular posts

}

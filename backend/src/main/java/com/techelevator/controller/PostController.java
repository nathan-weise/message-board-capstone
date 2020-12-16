package com.techelevator.controller;

import com.techelevator.dao.PostDAO;
import com.techelevator.dao.UserDAO;
import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import com.techelevator.model.Vote;
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
    public List<PostDTO> listPosts(Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPosts(userId);
    }

    //Get posts sorted by creation date
    @GetMapping(value = "/posts/new")
    public List<PostDTO> listPostsByDate(Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPostsByDate(userId);
    }

    //Get posts sorted by popularity (upvotes - downvotes)
    @GetMapping(value = "/posts/popular")
    public List<PostDTO> listPostsByPopularity(Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        List<PostDTO> results = postDAO.listAllPosts(userId);
        Collections.sort(results);
        return results;
    }

    //Get posts sorted by popularity (per forum)
    @GetMapping(value = "/forums/{forumId}/posts/popular")
    public List<PostDTO> listPostsByForumByPopularity(@PathVariable long forumId, Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPostsByForumByPopularity(userId, forumId);
    }

    //Get posts sorted by popularity (per forum)
    @GetMapping(value = "/forums/{forumId}/posts/spicy")
    public List<PostDTO> listPostsByForumBySpicy(@PathVariable long forumId, Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPostsByForumBySpicy(userId, forumId);
    }

    //Get posts sorted by recentness (per forum)
    @GetMapping(value = "/forums/{forumId}/posts/new")
    public List<PostDTO> listPostsByForumByRecent(@PathVariable long forumId, Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPostsByForumByRecent(userId, forumId);
    }

    //Get top ten most popular posts from the last 24 hours
    //for displaying on the homepage
    @GetMapping(value = "/posts/recent-popular")
    public List<PostDTO> listPostsByRecentPopularity(Principal principal) {
        Long userId = getUserIdFromPrincipal(principal);
        List<PostDTO> results = postDAO.listAllPostsByRecentPopularity(userId);
        Collections.sort(results);
        return results;
    }

    //get posts for a specific forum
    // /forums/{id}/posts
    @GetMapping(value = "/forums/{forumId}/posts")
    public List<PostDTO> listPostsForForum(Principal principal, @PathVariable long forumId) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.listAllPostsForForum(userId, forumId);
    }

    @PreAuthorize("isAuthenticated()")
    @PostMapping(value = "posts")
    @ResponseStatus(HttpStatus.CREATED)
    public Post createPost(Principal principal, @RequestBody PostDTO newPost) {
        Long userId = getUserIdFromPrincipal(principal);
        LocalDateTime date = LocalDateTime.now();
        return postDAO.createNewPost(newPost.getTitle(), newPost.getText(), newPost.getForumId(), newPost.getImageURL(), userId, date);
    }

    @GetMapping(value = "posts/{postId}")
    public PostDTO getPost(Principal principal, @PathVariable long postId) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.getPost(userId, postId);
    }

    @PreAuthorize("isAuthenticated()")
    @PutMapping(value = "posts/{postId}")
    public PostDTO voteOnPost(Principal principal, @PathVariable long postId, @RequestBody Vote vote) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.alterVote(userId, postId, vote);
    }

    @PreAuthorize("isAuthenticated()")
    @PutMapping(value = "posts/spicy/{postId}")
    public PostDTO spicyOnPost(Principal principal, @PathVariable long postId, @RequestBody Vote vote) {
        Long userId = getUserIdFromPrincipal(principal);
        return postDAO.alterSpicy(userId, postId, vote);
    }

    private Long getUserIdFromPrincipal(Principal principal) {
        if (principal == null) {
            return null;
        } else {
            String username = principal.getName();
            return userDAO.findIdByUsername(username);
        }
    }

    //get specific post on specific forum
    // /forums/{id}/posts/{id}

    //blank query string returns popular posts

}

package com.techelevator.controller;

import com.techelevator.dao.PostDAO;
import com.techelevator.model.Forum;
import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin
public class PostController {

    private PostDAO postDAO;

    public PostController(PostDAO postDAO) {
        this.postDAO = postDAO;
    }

    //We will need to add some functionality here to find posts by popularity, this is temporary
    @GetMapping(value = "/posts")
    public List<PostDTO> listPosts() {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listAllPosts();
    }

    //get posts for a specific forum
    // /forums/{id}/posts
    @GetMapping(value = "/forums/{forumId}/posts")
    public List<PostDTO> listPostsForForum(@PathVariable long forumId) {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listPostsForForum(forumId);
    }

    //get specific post on specific forum
    // /forums/{id}/posts/{id}



}

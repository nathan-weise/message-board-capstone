package com.techelevator.controller;

import com.techelevator.dao.PostDAO;
import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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

    @GetMapping(value = "/posts")
    public List<PostDTO> listPosts() {
        List<PostDTO> results = new ArrayList<>();
        return postDAO.listAllPosts();
    }

}

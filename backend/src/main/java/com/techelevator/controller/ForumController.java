package com.techelevator.controller;

import com.techelevator.dao.ForumDAO;
import com.techelevator.model.Forum;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ForumController {

    private ForumDAO forumDAO;

    public ForumController(ForumDAO forumDAO) { this.forumDAO = forumDAO; }

    //get mapping to return all forums
    // for something in the future

    //get mapping to return a list forums based on a search
    // /forums?name=<something>
    @GetMapping(value = "forums")
    public List<Forum> searchForForums(
            @RequestParam(defaultValue = "", name = "title_like") String searchTerm) {

        return forumDAO.searchForumByTitle(searchTerm);
    }


    //Get forum by ID
    // /forums/{id}
    @GetMapping(value = "/forums/{forumId}")
    public Forum getForum(@PathVariable long forumId) {
        return forumDAO.getForumById(forumId);
    }
}

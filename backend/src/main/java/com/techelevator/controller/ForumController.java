package com.techelevator.controller;

import com.techelevator.dao.ForumDAO;
import com.techelevator.dao.ModeratorDAO;
import com.techelevator.model.Forum;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@RestController
@CrossOrigin
public class ForumController {

    private ForumDAO forumDAO;
    private ModeratorDAO moderatorDAO;

    public ForumController(ForumDAO forumDAO, ModeratorDAO moderatorDAO) { this.forumDAO = forumDAO; this.moderatorDAO = moderatorDAO; }

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

    @PreAuthorize("isAuthenticated()")
    @GetMapping(value = "favorites/forums")
    public List<Forum> listFavoriteForums(Principal principal) {
        String username = principal.getName();
        Long userId = forumDAO.findIdByUsername(username);
        return forumDAO.getFavoriteForums(userId);
    }

    @PreAuthorize("isAuthenticated()")
    @PutMapping(value = "favorites/forums")
    public void addToFavoriteForums(Principal principal, @RequestBody Long forumId) {
        String username = principal.getName();
        Long userId = forumDAO.findIdByUsername(username);
        forumDAO.addToFavorites(userId, forumId);
    }

    //Method needed to create Forums in the database based upon the logged in user
    @PreAuthorize("isAuthenticated()")
    @PostMapping(value = "forums")
    @ResponseStatus(HttpStatus.CREATED)
    public Forum createForum(Principal principal, @RequestBody Forum newForum) {
        String username = principal.getName();
        long userId = forumDAO.findIdByUsername(username);
        LocalDateTime date = LocalDateTime.now();
        Forum forum = forumDAO.createNewForum(newForum.getName(), newForum.getDescription(), userId, date);

        moderatorDAO.addModerator(userId, forum.getId());

        return forum;
    }


}

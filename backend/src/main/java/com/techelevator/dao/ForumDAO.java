package com.techelevator.dao;

import com.techelevator.model.Forum;

import java.util.List;

public interface ForumDAO {
    Forum getForumById(long forumId);
    List<Forum> searchForumByTitle(String searchTerm);
}

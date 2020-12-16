package com.techelevator.dao;

import com.techelevator.model.Forum;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

public interface ForumDAO {

    Forum getForumById(long forumId);

    List<Forum> searchForumByTitle(String searchTerm);

    List<Forum> getFavoriteForums(Long userId);

    long findIdByUsername(String username);

    Forum createNewForum(String forumName, String forumDescription, long userId, LocalDateTime createdDate);

    void addToFavorites(Long userId, Long forumId);

}

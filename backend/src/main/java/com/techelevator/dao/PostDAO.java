package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import com.techelevator.model.Vote;

import java.time.LocalDateTime;
import java.util.List;

public interface PostDAO {

    List<PostDTO> listAllPosts(long userId);
    List<PostDTO> listAllPostsForForum(long userId, long forumId);
    List<PostDTO> listAllPostsByDate(long userId);
//    List<PostDTO> listAllPostsByPopularity();
    List<PostDTO> listAllPostsByRecentPopularity(long userId);
    List<PostDTO> listAllPostsByForumByPopularity(long userId, long forumId);
    List<PostDTO> listAllPostsByForumByRecent(long userId, long forumId);
    PostDTO getPost(long userId, long postId);
    PostDTO alterVote(long userId, long postId, Vote vote);


    Post createNewPost(String postTitle, String postText, long forumId, long userId, LocalDateTime createdDate);

}

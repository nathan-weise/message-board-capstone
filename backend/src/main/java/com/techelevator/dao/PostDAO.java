package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;
import com.techelevator.model.Vote;

import java.time.LocalDateTime;
import java.util.List;

public interface PostDAO {

    List<PostDTO> listAllPosts(Long userId);
    List<PostDTO> listAllPostsForForum(Long userId, long forumId);
    List<PostDTO> listAllPostsByDate(Long userId);
//    List<PostDTO> listAllPostsByPopularity();
    List<PostDTO> listAllPostsByRecentPopularity(Long userId);
    List<PostDTO> listAllPostsByForumByPopularity(Long userId, long forumId);
    List<PostDTO> listAllPostsByForumByRecent(Long userId, long forumId);
    List<PostDTO> listAllPostsByForumBySpicy(Long userId, long forumId);
    List<PostDTO> listPostsBySpicy(Long userId);
    PostDTO getPost(Long userId, long postId);
    PostDTO alterVote(Long userId, long postId, Vote vote);
    PostDTO alterSpicy(Long userId, long postId, Vote vote);
    Post createNewPost(String postTitle, String postText, long forumId, String imageURL, Long userId, LocalDateTime createdDate);

}

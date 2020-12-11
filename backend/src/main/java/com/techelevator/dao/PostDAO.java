package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;

import java.time.LocalDateTime;
import java.util.List;

public interface PostDAO {

    List<PostDTO> listAllPosts();
    List<PostDTO> listAllPostsForForum(long forumId);
    List<PostDTO> listAllPostsByDate();
//    List<PostDTO> listAllPostsByPopularity();
    List<PostDTO> listAllPostsByRecentPopularity();
    PostDTO getPost(long postId);

    Post createNewPost(String postTitle, String postText, long forumId, long userId, LocalDateTime createdDate);

}

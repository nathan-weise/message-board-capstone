package com.techelevator.dao;

import com.techelevator.model.Post;
import com.techelevator.model.PostDTO;

import java.util.List;

public interface PostDAO {

    List<PostDTO> listAllPosts();

}

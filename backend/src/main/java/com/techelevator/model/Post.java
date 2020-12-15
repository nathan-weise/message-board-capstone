package com.techelevator.model;

import com.techelevator.dao.ForumDAO;
import com.techelevator.dao.PostDAO;
import com.techelevator.dao.UserDAO;

import java.time.LocalDateTime;
import java.util.Date;

public class Post {

    private long id;
    private String title;
    private String text;
    private long forumId;
    private long userId;
    private LocalDateTime createdDate;
    private String imageURL;
    private static final String DEFAULT_IMAGE = "https://i.redd.it/eyx6qo3e8vy51.jpg";

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public long getForumId() {
        return forumId;
    }

    public void setForumId(long forumId) {
        this.forumId = forumId;
    }

    public long getUserId() {
        return userId;
    }

    public void setUserId(long userId) {
        this.userId = userId;
    }

    public LocalDateTime getCreatedDate() {
        return createdDate;
    }

    public String getImageURL() {
        if (this.imageURL == null) {
            this.setImageURL(DEFAULT_IMAGE);
        }
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public void setCreatedDate(LocalDateTime createdDate) {
        this.createdDate = createdDate;
    }
}

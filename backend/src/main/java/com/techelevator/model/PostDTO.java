package com.techelevator.model;

import java.util.Date;
import java.util.Objects;

public class PostDTO implements Comparable<PostDTO> {

    private long id;
    private long forumId;
    private String title;
    private String text;
    private String forumName;
    private String username;
    private Date createdDate;
    private int popularity;
    private int vote;
    private int spicy;
    private String imageURL;
    private static final String DEFAULT_IMAGE = "https://i.redd.it/eyx6qo3e8vy51.jpg";

    public long getForumId() {
        return forumId;
    }

    public void setForumId(long forumId) {
        this.forumId = forumId;
    }

    public int getPopularity() {
        return popularity;
    }

    public void setPopularity(int popularity) {
        this.popularity = popularity;
    }

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

    public String getForumName() {
        return forumName;
    }

    public void setForumName(String forumName) {
        this.forumName = forumName;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public int getVote() {
        return vote;
    }

    public void setVote(int vote) {
        this.vote = vote;
    }

    public int getSpicy() {
        return spicy;
    }

    public void setSpicy(int spicy) {
        this.spicy = spicy;
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

    @Override
    public int compareTo(PostDTO o) {
        if(this.getPopularity() == o.getPopularity()) {
            return 0;
        }
        else if(this.getPopularity() > o.getPopularity()) {
            return -1;
        }
        else {
            return 1;
        }
    }
}

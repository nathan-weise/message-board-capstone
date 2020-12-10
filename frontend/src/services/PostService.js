// @ts-nocheck

import axios from 'axios';

export default {

  listAllPosts() {
    return axios.get('/posts');
  },

  listAllPostsForForum(forumId) {
    return axios.get(`/forums/${forumId}/posts`);
  },

  listAllNewPosts() {
    return axios.get('/posts/new');
  },

  listAllPopularPosts() {
    return axios.get('/posts/popular');
  },

  //For displaying on the homepage
  listAllRecentPopularPosts() {
    return axios.get('/posts/recent-popular');
  }
}
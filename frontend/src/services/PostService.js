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
  }
}
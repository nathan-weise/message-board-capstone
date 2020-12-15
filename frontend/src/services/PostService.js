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

  listAllPopularPostsByForum(forumId) {
    return axios.get(`/forums/${forumId}/posts/popular`);
  },

  listAllRecentPostsByForum(forumId) {
    return axios.get(`/forums/${forumId}/posts/new`);
  },

  //For displaying on the homepage
  listAllRecentPopularPosts() {
    return axios.get('/posts/recent-popular');
  },

  addPost(post) {
    return axios.post('posts', post);
  },

  getPostById(id) {
    return axios.get(`/posts/${id}`);
  },

  alterVote(vote, postId) {
    console.log('inside altervote mehtod');
    return axios.put(`posts/${postId}`, {"vote": vote});
  }
}
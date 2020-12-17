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

  listAllSpicyPosts() {
    return axios.get('/posts/spicy');
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

  listAllSpicyPostsByForum(forumId) {
    return axios.get(`/forums/${forumId}/posts/spicy`);
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
    return axios.put(`posts/${postId}`, {"vote": vote});
  },

  alterSpicy(spicy, postId) {
    console.log('inside the alterspicy method')
    console.log(spicy);
    return axios.put(`posts/spicy/${postId}`, {"spicy": spicy});
  }
}
// @ts-nocheck

import axios from 'axios';

export default {

  getForumById(forumId) {
    return axios.get(`/forums/${forumId}`);
  },

  getForumBySearchTerm(searchTerm) {
    return axios.get(`/forums?title_like=${searchTerm}`);
  },

  addForum(forum) {
    console.log('hello from forum service');
    return axios.post('forums', forum);
  }

}
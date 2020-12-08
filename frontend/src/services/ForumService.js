// @ts-nocheck

import axios from 'axios';

export default {

  getForumById(forumId) {
    return axios.get(`/forums/${forumId}`);
  }

}
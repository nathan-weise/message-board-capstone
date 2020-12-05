// @ts-nocheck

import axios from 'axios';

export default {

  listAllPosts() {
    return axios.get('/posts');
  }

}
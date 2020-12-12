// @ts-nocheck

import axios from 'axios';

export default {

    getCommentByPost(postId) {
        return axios.get(`${postId}/comments`);
    }

}
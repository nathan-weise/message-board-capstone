// @ts-nocheck

import axios from 'axios';

export default {

    getCommentByPost(postId) {
        return axios.get(`${postId}/comments`);
    },

    addComment(commentText, postId) {
        return axios.post(`${postId}/comments`, commentText);
    }

}
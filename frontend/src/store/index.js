import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

/*
 * The authorization header is set for axios when you login but what happens when you come back or
 * the page is refreshed. When that happens you need to check for the token in local storage and if it
 * exists you should set the header so that it will be attached to each request
 */
const currentToken = localStorage.getItem('token')
const currentUser = JSON.parse(localStorage.getItem('user'));

if(currentToken != null) {
  axios.defaults.headers.common['Authorization'] = `Bearer ${currentToken}`;
}

export default new Vuex.Store({
  state: {
    token: currentToken || '',
    user: currentUser || {},
    forum: {},
    searchResults: [],
    forumPosts: [],
    activePost: {},
    comments: [],
    favForums: []
  },
  mutations: {
    SET_AUTH_TOKEN(state, token) {
      state.token = token;
      localStorage.setItem('token', token);
      axios.defaults.headers.common['Authorization'] = `Bearer ${token}`
    },
    SET_USER(state, user) {
      state.user = user;
      localStorage.setItem('user',JSON.stringify(user));
    },
    LOGOUT(state) {
      localStorage.removeItem('token');
      localStorage.removeItem('user');
      state.token = '';
      state.user = {};
      axios.defaults.headers.common = {};
    },
    SET_SEARCH_RESULTS(state, results) {
      state.searchResults = results;
    },
    SET_FORUM_POSTS(state, results) {
      state.forumPosts = results;
    },
    ADD_FORUM_POST(state, post) {
      state.forumPosts.push(post);
    },
    SET_ACTIVE_POST(state, post) {
      state.activePost = post;
    },
    SET_ACTIVE_COMMENTS(state, comments) {
      state.comments = comments;
    },
    ADD_COMMENT(state, comment) {
      state.comments.push(comment);
    },
    UPDATE_POPULARITY_TOTAL(state, payload) {
      let thisPost = state.forumPosts.find((post) => post.id === payload.postId);
      if (payload.prevVote === 1 && payload.vote === 0) {
        thisPost.popularity--;
      } else if (payload.prevVote === -1 && payload.vote === 0) {
        thisPost.popularity++;
      } else if (payload.prevVote === 1 && payload.vote === -1) {
        thisPost.popularity -= 2;
      } else if (payload.prevVote === -1 && payload.vote === 1) {
        thisPost.popularity += 2;
      } else {
        thisPost.popularity = thisPost.popularity + payload.vote;
      }
    },
    UPDATE_SPICY(state, payload) {
      let thisPost = state.forumPosts.find((post) => post.id === payload.postId);
      if (payload.spicy === 1) {
        thisPost.totalSpicy++;
      } else {
        thisPost.totalSpicy--;
      }
    },
    SET_FAV_FORUMS(state, forums) {
      state.favForums = forums;
    },
    ADD_FAV_FORUM(state, forum) {
      state.favForums.push(forum);
    }
  }
})

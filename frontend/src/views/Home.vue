<template>
  <div class="home">
    <h1 >Home</h1>
    <b-button v-on:click="loadPostsSortedByNew()">Sort By New</b-button>
    <b-button v-on:click="loadPostsSortedByPopularity()">Sort By Popularity</b-button>
    <post-article v-for="topic of allTopics" :key="topic.id" 
    v-bind:title="topic.title"
    v-bind:username="topic.username"
    v-bind:date="topic.createdDate"
    v-bind:popularity="topic.popularity"
    />

  </div>
</template>

<script>
import PostArticle from '../components/PostArticle.vue';
import PostService from '@/services/PostService.js';

export default {
  components: { PostArticle },
  data() {
    return {
      allTopics: []
    }
  },
  methods: {
    loadPostsSortedByNew() {
      PostService.listAllNewPosts().then(response => {
        this.allTopics = response.data;
      });
    },
    loadPostsSortedByPopularity() {
      PostService.listAllPopularPosts().then(response => {
        this.allTopics = response.data;
      });
    }
  },
  created() {
    PostService.listAllRecentPopularPosts().then(response => {
      this.allTopics = response.data;
    });
  }
  
};
</script>

<style>

</style>

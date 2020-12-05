<template>
  <div class="home">
    <h1>Home</h1>
    <post-article v-for="topic of allTopics" :key="topic.id" 
    v-bind:title="topic.title"
    v-bind:username="topic.userId"
    v-bind:date="topic.createdDate"
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
  created() {
    PostService.listAllPosts().then(response => {
      this.allTopics = response.data;
    });
  }
  
};
</script>

<style>

</style>

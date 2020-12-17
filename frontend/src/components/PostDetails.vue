<template>
  <div>
      <h1>{{ post.title }}</h1>
      <p>{{ post.text }}</p>
      <img v-bind:src="post.imageURL">
  </div>
</template>

<script>
import PostService from "@/services/PostService.js";
export default {
  data() {
    return {
      post: {}
    };
  },
  created() {
    PostService.getPostById(this.$route.params.postId).then((response) => {
        this.post = response.data;
    });
    let posts = this.$store.state.forumPosts;
    this.$store.commit('SET_ACTIVE_POST', posts.find((element) => element.id === this.$route.params.postId))
  },
};
</script>

<style>
</style>
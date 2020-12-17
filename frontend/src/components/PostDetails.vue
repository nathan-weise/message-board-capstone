<template>
  <div class="container">
    <div class="post-text">
      <h1>{{ post.title }} in {{ post.forumName }} Forum</h1>
      <p>{{ post.text }}</p>
    </div>
    <img v-bind:src="post.imageURL" />
  </div>
</template>

<script>
import PostService from "@/services/PostService.js";
export default {
  data() {
    return {
      post: {},
    };
  },
  created() {
    PostService.getPostById(this.$route.params.postId).then((response) => {
      this.post = response.data;
    });
    let posts = this.$store.state.forumPosts;
    this.$store.commit(
      "SET_ACTIVE_POST",
      posts.find((element) => element.id === this.$route.params.postId)
    );
  },
};
</script>
<style scoped>

.container {
  display: grid;
  grid-template-columns: 1fr 3fr 1fr;
  grid-template-areas:
  ". post-text ."
    ".  img   .";
}

.post-text {
  margin-top: 10px;
  margin-bottom: 10px;

  grid-area: post-text;
}

img {
  margin-top: 10px;
  margin-bottom: 10px;
  border: black 2px solid;
  border-radius: 5px;
  max-height: 300px;
  object-fit: cover;
  grid-area: img;
  justify-self: center;
}
</style>
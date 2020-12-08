<template>
  <div>
    <forum-posts />
    <h1>{{ forum.name }}</h1>
    <post-article
      v-for="post of posts"
      :key="post.id"
      v-bind:title="post.title"
      v-bind:username="post.username"
      v-bind:date="post.createdDate"
    />
  </div>
</template>

<script>
import PostArticle from "../components/PostArticle.vue";
import PostService from "@/services/PostService.js";
import ForumService from "@/services/ForumService.js";

export default {
  components: { PostArticle },
  data() {
    return {
      posts: [],
      forum: {}
    };
  },
  created() {
    console.log(this.$route.path);
    const firstIndexOfSlash = this.$route.path.indexOf('/', 1);
    const secondIndexOfSlash = this.$route.path.indexOf('/', firstIndexOfSlash + 1);
    const forumId = this.$route.path.substring(firstIndexOfSlash + 1, secondIndexOfSlash);
    PostService.listAllPostsForForum(forumId).then((response) => {
      this.posts = response.data;
    });
    ForumService.getForumById(forumId).then((response => {
        this.forum = response.data;
    }));
  },
};
</script>

<style>
</style>
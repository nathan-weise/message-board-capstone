<template>
  <div>
    <side-bar v-if="$store.state.token !== ''"/>
    <forum-posts />
    <h1>{{ forum.name }}</h1>
    <post-article
      v-for="post of posts"
      :key="post.id"
      v-bind:title="post.title"
      v-bind:username="post.username"
      v-bind:date="post.createdDate"
      v-bind:popularity="post.popularity"
    />
  </div>
</template>

<script>
import PostArticle from "../components/PostArticle.vue";
import PostService from "@/services/PostService.js";
import ForumService from "@/services/ForumService.js";
import SideBar from '../components/SideBar.vue';

export default {
  components: { PostArticle, SideBar },
  data() {
    return {
      posts: [],
      forum: {}
    };
  },
  created() {
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
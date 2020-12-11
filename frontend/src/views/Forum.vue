<template>
  <div>
    <side-bar v-if="$store.state.token !== ''" />
    <forum-posts />
    <h1>{{ forum.name }}</h1>

    <div v-for="post of posts" :key="post.id">
      <router-link
        :to="{
          name: 'post',
          params: { forumId: post.forumId, postId: post.id }
        }"
      >
        <post-article
          v-bind:title="post.title"
          v-bind:username="post.username"
          v-bind:date="post.createdDate"
          v-bind:popularity="post.popularity"
          v-bind:post="post"
        >
        </post-article>
      </router-link>
    </div>
  </div>
</template>

<script>
import PostArticle from "../components/PostArticle.vue";
import PostService from "@/services/PostService.js";
import ForumService from "@/services/ForumService.js";
import SideBar from "../components/SideBar.vue";

export default {
  components: { PostArticle, SideBar },
  data() {
    return {
      posts: [],
      forum: {},
    };
  },
  methods: {
    test() {
      console.log("cool");
    },
  },
  created() {
    const firstIndexOfSlash = this.$route.path.indexOf("/", 1);
    const secondIndexOfSlash = this.$route.path.indexOf(
      "/",
      firstIndexOfSlash + 1
    );
    const forumId = this.$route.path.substring(
      firstIndexOfSlash + 1,
      secondIndexOfSlash
    );
    PostService.listAllPostsForForum(forumId).then((response) => {
      this.posts = response.data;
      this.$store.commit("SET_FORUM_POSTS", this.posts);
    });
    ForumService.getForumById(forumId).then((response) => {
      this.forum = response.data;
    });
  },
};
</script>

<style>
</style>
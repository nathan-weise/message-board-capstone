<template>
  <div>
    <side-bar v-if="$store.state.token !== ''" />
    <forum-posts />
    <div class="forum-title">
      <h1>{{ forum.name }}</h1>
      <b-button v-on:click="addToFavorites()">+ Favorite</b-button>
    </div>
    <b-button v-on:click="loadPostsByRecent()">Sort By New</b-button>
    <b-button v-on:click="loadPostsByPopularity()">Sort By Popularity</b-button>

    <div v-for="post of posts" :key="post.id">
      <post-article
        v-bind:title="post.title"
        v-bind:username="post.username"
        v-bind:date="post.createdDate"
        v-bind:popularity="post.popularity"
        v-bind:post="post"
      >
      </post-article>
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
    loadPostsByPopularity() {
      PostService.listAllPopularPostsByForum(this.$route.params.forumId).then(
        (response) => {
          this.posts = response.data;
          this.$store.commit("SET_FORUM_POSTS", this.posts);
        }
      );
    },
    loadPostsByRecent() {
      PostService.listAllRecentPostsByForum(this.$route.params.forumId).then(
        (response) => {
          this.posts = response.data;
          this.$store.commit("SET_FORUM_POSTS", this.posts);
        }
      );
    },
    addToFavorites() {
      ForumService.addToFavorites(this.$route.params.forumId);
    }
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
      console.log(response);
      this.$store.commit("SET_FORUM_POSTS", this.posts);
    });
    ForumService.getForumById(forumId).then((response) => {
      this.forum = response.data;
    });
  },
};
</script>

<style scoped>
  .forum-title {
    display: flex;
    flex-direction: row;
  }
</style>
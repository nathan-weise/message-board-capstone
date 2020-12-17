<template>
  <div class="home-container">
    <side-bar v-if="$store.state.token !== ''" />
    <forum-posts />
    <div class="details-container">
      <div class="forum-title">
        <h1>Home Page</h1>
      </div>
    </div>

    <div class="sort-buttons">
      <img
        height="75px"
        src="https://i.imgur.com/39CkSom.png"
        v-on:click="loadPostsSortedByNew()"
      />
      <img
        height="75px"
        src="https://i.imgur.com/igiQgWE.png"
        v-on:click="loadPostsSortedByPopularity()"
      />
      <img
        height="75px"
        src="https://i.imgur.com/GiTcDkp.png"
        v-on:click="loadPostsSortedBySpicy()"
      />
    </div>

    <div class="posts-container">
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
  </div>
</template>


<script>
import PostArticle from "../components/PostArticle.vue";
import PostService from "@/services/PostService.js";
import SideBar from "../components/SideBar.vue";

export default {
  components: { PostArticle, SideBar },
  data() {
    return {
      posts: [],
    };
  },
  methods: {
    loadPostsSortedByNew() {
      PostService.listAllNewPosts().then((response) => {
        this.posts = response.data;
        this.$store.commit("SET_FORUM_POSTS", this.posts);
      });
    },
    loadPostsSortedByPopularity() {
      PostService.listAllPopularPosts().then((response) => {
        this.posts = response.data;
        this.$store.commit("SET_FORUM_POSTS", this.posts);
      });
    },
    loadPostsSortedBySpicy() {
      PostService.listAllSpicyPosts().then((response) => {
        this.posts = response.data;
        this.$store.commit("SET_FORUM_POSTS", this.posts);
      });
    },
  },
  created() {
    PostService.listAllRecentPopularPosts().then((response) => {
      this.posts = response.data;
      this.$store.commit("SET_FORUM_POSTS", this.posts);
    });
  },
};
</script>

<style scoped>
.forum-title {
  padding: 5px 0 0 15px;
  display: flex;
  flex-direction: column;
}
.home-container {
  display: grid;
  grid-template-columns: 1fr 3fr 1fr;
  grid-template-areas:
    "details sort-buttons ."
    "details posts        .";
}

.sort-buttons img {
  cursor: pointer;

}

.posts-container {
  grid-area: posts;
}

.details-container {
  grid-area: details;
}

.sort-buttons {
  grid-area: sort-buttons;
  display: flex;
  justify-content: space-around;
  padding: 10px 0 10px 0;
}

.sort-buttons img:hover {
  filter: drop-shadow(0px 0px 5px black);
}

.sort-buttons img:last-child:hover {
  filter: drop-shadow(0px 0px 5px rgb(207, 45, 45));
  filter: saturate(500%);
}
</style>

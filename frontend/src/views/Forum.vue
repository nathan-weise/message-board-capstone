<template>
  <div class="home-container">
    <side-bar v-if="$store.state.token !== ''" />
    <forum-posts />
    <div class="details-container">
      <div class="forum-title">
        <h1>{{ forum.name }} Forum</h1>
        <img
          v-bind:class="{ 'disabled-button': inFavorites }"
          v-if="$store.state.token !== ''"
          id="favorite-button"
          width="180px"
          src="https://i.imgur.com/aTYqlM3.png"
          v-on:click="addToFavorites()"
        />
      </div>
    </div>

    <div class="sort-buttons">
      <img
        height="75px"
        src="https://i.imgur.com/39CkSom.png"
        v-on:click="loadPostsByRecent()"
      />
      <img
        height="75px"
        src="https://i.imgur.com/igiQgWE.png"
        v-on:click="loadPostsByPopularity()"
      />
      <img
        height="75px"
        src="https://i.imgur.com/GiTcDkp.png"
        v-on:click="loadPostsBySpicy()"
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
  computed: {},
  methods: {
    inFavorites() {
      console.log();
      this.$store.state.favForums.forEach((x) => {
        console.log(this.forum.name, x.name);
        if (x.name === this.forum.name) {
          console.log('inside if statement')
          return true;
        }
      });
      return false;
    },
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
    loadPostsBySpicy() {
      PostService.listAllSpicyPostsByForum(this.$route.params.forumId).then(
        (response) => {
          this.posts = response.data;
          this.$store.commit("SET_FORUM_POSTS", this.posts);
        }
      );
    },
    addToFavorites() {
      ForumService.addToFavorites(this.$route.params.forumId).then(() => {
        this.$store.commit("ADD_FAV_FORUM", { name: this.forum.name });
      });
    },
    loadForumPosts(forumId) {
      PostService.listAllPostsForForum(forumId).then((response) => {
        this.posts = response.data;
        console.log(response);
        this.$store.commit("SET_FORUM_POSTS", this.posts);
      });
      ForumService.getForumById(forumId).then((response) => {
        this.forum = response.data;
      });
    },
  },
  created() {
    this.loadForumPosts(this.$route.params.forumId);
  },
  beforeRouteUpdate(to, from, next) {
    this.loadForumPosts(to.params.forumId);
    next();
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

.sort-buttons img {
  cursor: pointer;
}

#favorite-button {
  cursor: pointer;
}

.sort-buttons img:hover {
  filter: drop-shadow(0px 0px 5px black);
}

.sort-buttons img:last-child:hover {
  filter: drop-shadow(0px 0px 5px rgb(207, 45, 45));
  filter: saturate(500%);
}

#favorite-button:hover {
  filter: drop-shadow(0px 0px 5px black);
}

.disabled-button {
  filter: grayscale(1);
  cursor: auto;
}
</style>
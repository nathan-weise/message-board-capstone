<template>
  <div class="sidebar-container">
    <h3>example</h3>
    <popup-form />
    <!-- <img id="favorites" src="../../res/site_images/favorites.png" alt="favorites" /> -->
    <post-popup-form v-if="isInForumOrPost" />
    <comment-popup-form v-if="isInPost" />

    <div v-for="forum of favoriteForums" :key="forum.id" v-on:click="navigateToForum(forum.id)">
      <router-link :to="{ name: 'forum', params: { forumId: forum.id } }">
        {{ forum.name }}
      </router-link>
    </div>
  </div>
</template>

<script>
import CommentPopupForm from "./CommentPopupForm.vue";
import PopupForm from "./PopupForm.vue";
import PostPopupForm from "./PostPopupForm.vue";
import ForumService from "@/services/ForumService.js";

export default {
  components: { PopupForm, PostPopupForm, CommentPopupForm },
  computed: {
    isInForumOrPost: function () {
      return this.$route.name === "forum" || this.$route.name === "post";
    },
    isInPost: function () {
      return this.$route.name === "post";
    },
  },
  data() {
    return {
      favoriteForums: [],
    };
  },
  created() {
    ForumService.getFavoriteForums().then((response) => {
      this.favoriteForums = response.data;
    });
  },
  methods: {
    navigateToForum(forumId) {
      this.$router.push({ name: 'forum', params: { forumId: forumId } });
    }
  }
};
</script>

<style scoped>
.sidebar-container {
  background-image: url("../../res/site_images/favorites.png");
  /* border: solid 2px; */
  height: auto;
  width: auto;
  margin-right: 10px;
  position: fixed;
  right: 5px;
  top: 150px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

#favorites {
  height: 200px;
}
</style>
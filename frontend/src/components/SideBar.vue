<template>
  <div class="sidebar-container">
    <h3>example</h3>
    <popup-form />
    <!-- <img id="favorites" src="../../res/site_images/favorites.png" alt="favorites" /> -->
    <post-popup-form v-if="isInForumOrPost" />
    <comment-popup-form v-if="isInPost" />
    <div class="favorites" >
    <b-button class="favorite-buttons" v-for="forum of favoriteForums" :key="forum.id" v-on:click="navigateToForum(forum.id)">
      <div>
      <router-link class="forum-link" :to="{ name: 'forum', params: { forumId: forum.id } }">
        {{ forum.name }}
      </router-link>
      </div>
      </b-button>
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
  border: solid 2px;
  min-height: 250px;
  width: 8rem;
  margin-right: 10px;
  position: fixed;
  right: 5px;
  top: 150px;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.favorites {
  flex-direction: column;
  background-image: url('https://i.imgur.com/zcymVM3.png');
  background-size: cover;
  min-height: 150px;
  padding: 75px 0px 0px 0px;
}

.favorite-buttons {
  background-color: rgba(150, 150, 150, 0.2);
  margin-bottom: 5px;
  display: block;
  width: 100%
}

.favorite-buttons:hover {
  background-color: rgba(255, 74, 255, 0.356);
}

.forum-link:link {
  text-decoration: none;
}

.forum-link {
  color: black;
}

#favorites {
  height: 200px;
}
</style>
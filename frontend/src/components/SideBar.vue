<template>
  <div class="sidebar-container">
    <div class="button-container">
      <popup-form class="plus-button" />
      <post-popup-form class="plus-button" v-if="isInForumOrPost" />
      <comment-popup-form class="plus-button" v-if="isInPost" />
    </div>
    <div class="favorites">
      <b-button
        class="favorite-buttons"
        v-for="forum of favoriteForums"
        :key="forum.id"
        v-on:click="navigateToForum(forum.id)"
      >
        <div>
          <router-link
            class="forum-link"
            :to="{ name: 'forum', params: { forumId: forum.id } }"
          >
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
      favoriteForums: this.$store.state.favforums,
    };
  },
  created() {
    ForumService.getFavoriteForums().then((response) => {
      this.$store.commit('SET_FAV_FORUMS', response.data);
      this.favoriteForums = response.data;
    });
  },
  methods: {
    navigateToForum(forumId) {
      this.$router.push({ name: "forum", params: { forumId: forumId } });
    },
  },
};
</script>

<style scoped>
.sidebar-container {
  border: solid 1px;
  border-radius: 5px;
  min-height: 200;
  width: 8rem;
  margin-right: 10px;
  position: fixed;
  right: 5px;
  top: 150px;
  display: flex;
  flex-direction: column;
  align-items: stretch;
  background-color: rgb(200, 196, 191);
}

.favorites {
  flex-direction: column;
  background-image: url("https://i.imgur.com/b6st8jg.png");
  background-repeat: no-repeat;
  background-size: 100%;
  min-height: 150px;
  padding: 75px 0px 0px 0px;
}

.button-container:first-child {
  padding-top: 5px;
}

.plus-button {
  padding-bottom: 5px;

}

.favorite-buttons {
  background-color: rgba(150, 150, 150, 0.6);
  margin-bottom: 5px;
  display: block;
  width: 100%;
}

.favorite-buttons:hover {
  background-color: rgba(248, 182, 78, 0.8);
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
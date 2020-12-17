<template>
  <div>
    <post-details />
    <side-bar v-if="$store.state.token !== ''"/>
    <comment-details
      v-for="comment of comments"
      :key="comment.id"
      v-bind:comment="comment"
      v-bind:post="post"
    />
  </div>
</template>

<script>
import CommentDetails from "../components/CommentDetails.vue";
import PostDetails from "../components/PostDetails.vue";
import SideBar from "../components/SideBar.vue";
import CommentService from "@/services/CommentService.js";
import PostService from "@/services/PostService.js";

export default {
  components: { PostDetails, SideBar, CommentDetails },
  data() {
    return {
      comments: [],
      post: {}
    };
  },
  created() {
    CommentService.getCommentByPost(this.$route.params.postId).then(
      (response) => {
        this.comments = response.data;
        this.$store.commit("SET_ACTIVE_COMMENTS", response.data);
      }
    );
    PostService.getPostById(this.$route.params.postId).then((response) => {
        this.post = response.data;
    });
  },
};
</script>

<style>
</style>
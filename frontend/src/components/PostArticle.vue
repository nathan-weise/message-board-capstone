<template>
  <div class="container">
    <img
      v-bind:src="post.imageURL"
      alt="duck"
    />
    <router-link
      :to="{
        name: 'post',
        params: { forumId: post.forumId, postId: post.id },
      }"
      tag="div"
    >
      <h3 aid="title">{{ title }}</h3>
    </router-link>
    <p id="username">{{ username }}</p>
    <p id="created">{{ date }}</p>

    <div id="popularity">
      <font-awesome-icon
        icon="arrow-up"
        size="2x"
        v-on:click="clickUpvote()"
        v-bind:class="{ upvote: vote === 1 }"
      />
      <p style="display: inline">{{ popularity }}</p>
      <font-awesome-icon
        icon="arrow-down"
        size="2x"
        v-on:click="clickDownvote()"
        v-bind:class="{ downvote: vote === -1 }"
      />
      <font-awesome-icon
        icon="pepper-hot"
        size="2x"
        v-on:click="clickSpicy()"
        v-bind:class="{ red: spicy === 1 }"
      />
    </div>
    <p>{{ popularity }}</p>
  </div>
</template>

<script>
import PostService from "@/services/PostService.js";

export default {
  data() {
    return {
      vote: 0,
      spicy: 0
    };
  },
  props: ["title", "username", "date", "popularity", "post"],
  created() {
    this.$store.commit("SET_ACTIVE_POST", this.post);
    console.log(this.post);
    this.vote = this.post.vote;
    this.spicy = this.post.spicy;
  },
  methods: {
    callAPI(prevVote) {
      PostService.alterVote(this.vote, this.spicy, this.post.id).then((response) => {
        console.log(response);
        if (prevVote !== this.vote) {
          this.$store.commit('UPDATE_POPULARITY_TOTAL', {"vote": this.vote,"postId": this.post.id, "prevVote": prevVote});
        }
      });
    },
    clickSpicy() {
      let prevVote = this.vote
      if (this.spicy === 1) {
        this.spicy = 0;
      } else {
        this.spicy = 1;
      }
      this.callAPI(prevVote);
    },
    clickUpvote() {
      let prevVote = this.vote;
      if (this.vote === 1) {
        this.vote = 0;
      } else {
        this.vote = 1;
      }
      this.callAPI(prevVote);
    },
    clickDownvote() {
      let prevVote = this.vote;
      if (this.vote === -1) {
        this.vote = 0;
      } else {
        this.vote = -1;
      }
      this.callAPI(prevVote);
    }
  },
};
</script>

<style scoped>
.container {
  margin-bottom: 10px;
  margin-left: 50px;
  display: grid;
  height: 8rem;
  width: 50%;
  border: solid;
  grid-template-areas:
    "img title    title"
    "img username create"
    "img votes    .";
}

img {
  border-radius: 100%;
  height: 90px;
  width: 90px;
  padding: 5px;
  grid-area: img;
}

#title {
  grid-area: title;
}

#username {
  grid-area: username;
}

#created {
  grid-area: create;
}

#popularity {
  grid-area: votes;
  display: flex;
  justify-content: center;
  align-items: stretch;
}

#popularity * {
  margin-right: 5px;
  margin-left: 5px;
}

.upvote {
  color: orange;
}

.downvote {
  color: blue;
}

.red {
  color: red;
}
</style>
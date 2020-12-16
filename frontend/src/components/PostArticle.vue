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
      <img id="up_vote" src="https://i.imgur.com/F6k06sY.png" alt="up_vote"
        icon="up_vote"
        size="2x"
        v-on:click="clickUpvote()"
        v-bind:class="{ upvote: vote === 1 }"
      />
      <p style="display: inline">{{ popularity }}</p>
      <img id="down_vote" src="https://i.imgur.com/tYYNk9Q.png" alt="down_vote"
        icon="down_vote"
        size="2x"
        v-on:click="clickDownvote()"
        v-bind:class="{ downvote: vote === -1 }"
      />
      <p style="display: inline">{{ post.totalSpicy }}</p>
      <img id="nsfw" src="https://i.imgur.com/fx4CFzI.png" alt="nsfw"
        icon="nsfw"
        size="2x"
        v-on:click="clickSpicy()"
        v-bind:class="{ red: spicy === 1 }"
      />
    </div>
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
    callAPI(prevVote, prevSpicy) {
      PostService.alterVote(this.vote, this.spicy, this.post.id).then((response) => {
        console.log(response);
        if (prevVote !== this.vote) {
          this.$store.commit('UPDATE_POPULARITY_TOTAL', {"vote": this.vote,"postId": this.post.id, "prevVote": prevVote, });
        } else if (this.spicy !== prevSpicy) {
          this.$store.commit('UPDATE_SPICY', {"spicy": this.spicy, "postId": this.post.id});
        }
      });
    },
    clickSpicy() {
      let prevVote = this.vote
      let prevSpicy = this.spicy
      if (this.spicy === 1) {
        this.spicy = 0;
      } else {
        this.spicy = 1;
      }
      this.callAPI(prevVote, prevSpicy);
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
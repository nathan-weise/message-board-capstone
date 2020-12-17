<template>
  <div class="container">
    <img class="thumbnail" v-bind:src="post.imageURL" alt="duck" />
    <router-link
      :to="{
        name: 'post',
        params: { forumId: post.forumId, postId: post.id },
      }"
      tag="div"
    >
      <div class="title">
        <h3 id="title">{{ title }}</h3>
        <p id="comments">comments</p>
      </div>
    </router-link>

    <div class="info">
      <p class="info-text">Posted by {{ username }}</p>
      <p class="info-text">on {{ date }}</p>
      <p class="info-text">in Baguette</p>
    </div>

    <div id="popularity">
      <img
        id="up_vote"
        src="https://i.imgur.com/F6k06sY.png"
        alt="up_vote"
        class="vote-button"
        icon="up_vote"
        size="2x"
        v-on:click="clickUpvote()"
        v-bind:class="{ upvote: vote === 1 }"
      />
      <p id="up-down-number" style="display: inline">{{ popularity }}</p>
      <img
        id="down_vote"
        src="https://i.imgur.com/tYYNk9Q.png"
        alt="down_vote"
        class="vote-button"
        icon="down_vote"
        size="2x"
        v-on:click="clickDownvote()"
        v-bind:class="{ downvote: vote === -1 }"
      />
    </div>
    <img
      id="nsfw"
      src="https://i.imgur.com/JV8jUbB.png"
      alt="nsfw"
      class="vote-button"
      icon="nsfw"
      size="2x"
      v-on:click="clickSpicy()"
      v-bind:class="{ red: spicy === 1 }"
    />
  </div>
</template>

<script>
import PostService from "@/services/PostService.js";

export default {
  data() {
    return {
      vote: 0,
      spicy: 0,
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
    alterVote(prevVote) {
      PostService.alterVote(this.vote, this.post.id).then((response) => {
        console.log(response);
        if (prevVote !== this.vote) {
          this.$store.commit("UPDATE_POPULARITY_TOTAL", {
            vote: this.vote,
            postId: this.post.id,
            prevVote: prevVote,
          });
        }
      });
    },
    alterSpicy(prevSpicy) {
      PostService.alterSpicy(this.spicy, this.post.id).then((response) => {
        console.log(response);
        if (this.spicy !== prevSpicy) {
          this.$store.commit("UPDATE_SPICY", {
            spicy: this.spicy,
            postId: this.post.id,
          });
        }
      });
    },
    clickSpicy() {
      let prevSpicy = this.spicy;
      if (this.spicy === 1) {
        this.spicy = 0;
      } else {
        this.spicy = 1;
      }
      this.alterSpicy(prevSpicy);
    },
    clickUpvote() {
      let prevVote = this.vote;
      if (this.vote === 1) {
        this.vote = 0;
      } else {
        this.vote = 1;
      }
      this.alterVote(prevVote);
    },
    clickDownvote() {
      let prevVote = this.vote;
      if (this.vote === -1) {
        this.vote = 0;
      } else {
        this.vote = -1;
      }
      this.alterVote(prevVote);
    },
  },
};
</script>

<style scoped>
.container {
  border: 2px black solid;
  margin-bottom: 10px;
  /* margin-left: 50px; */
  display: grid;
  height: 200px;
  /* width: 100%; */
  background-color: rgb(108, 157, 255);
  /* background-image: url("https://www.f-covers.com/cover/cartoon-bread-toast-facebook-cover-timeline-banner-for-fb.jpg"); */
  background-size: cover;
  border-radius: 5px;
  /* grid-template-columns:  */
  grid-template-areas:
    "img   title    title   title   spicy"
    "img   info     info    votes   votes";
}

.thumbnail {
  border-radius: 100%;
  height: 190px;
  width: 190px;
  padding-top: 5px;
  object-fit: cover;
  grid-area: img;
}
.title {
  grid-area: title;
}

#title {
  font-size: 35px;
  padding-bottom: 0px;
  margin: 0px;
}

#comments {
  font-size: 16px;
  margin: 0px;
}

#popularity {
  grid-area: votes;
  display: flex;
  justify-content: flex-end;
  align-items: center;
}

.info {
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  grid-area: info;
  margin-bottom: 5px;
}

.info-text {
  margin: 0px;
  font-size: 16px;
}

.upvote {
  color: orange;
  filter: drop-shadow(0px 0px 5px rgb(207, 45, 45));
  filter: saturate(500%);
}

.downvote {
  color: blue;
  filter: drop-shadow(0px 0px 5px rgb(207, 45, 45));
  filter: saturate(500%);
}

.red {
  color: red;
  filter: drop-shadow(0px 0px 5px rgb(207, 45, 45));
  filter: saturate(500%);
}

.vote-button {
  height: 5rem;
  margin-bottom: 5px;
}

#up-down-number {
  padding: 0 20px 0 20px;
}

#nsfw {
  grid-area: spicy;
  justify-self: end;
  padding-right: 12px;
  margin-bottom: 0;
  padding-bottom: 0;
  margin-top: 5px;
}
</style>
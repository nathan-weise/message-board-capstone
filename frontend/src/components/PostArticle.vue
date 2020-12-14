<template>
  <div class="container">
    <img
      src="https://www.thespruce.com/thmb/KwKqGx7uhDC9Gou99usNPflipTo=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/high-angle-view-of-male-mallard-duck-with-mouth-open-629724643-572b53fc3df78c038ee2d78f.jpg"
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
    </div>
    <p>{{ popularity }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      vote: 0,
    };
  },
  props: ["title", "username", "date", "popularity", "post"],
  created() {
    this.$store.commit("SET_ACTIVE_POST", this.post);
    this.vote = this.post.vote;
  },
  methods: {
    clickUpvote() {
      if (this.vote === 1) {
        this.vote = 0;
      } else {
        this.vote = 1;
      }
    },
    clickDownvote() {
      if (this.vote === -1) {
        this.vote = 0;
      } else {
        this.vote = -1;
      }
    },
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
</style>
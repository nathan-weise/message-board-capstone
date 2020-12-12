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
      <label class="flex-item">
        <input
          v-on:click.prevent=clickUpvote()
          type="checkbox"
          value="upvote"
          v-bind:name="title + date"
          v-model="upvtoe"
        />
        <span></span>
      </label>

      <label class="flex-item">
        <input
          v-on:click=clickDownvote()
          type="checkbox"
          value="downvote"
          v-bind:name="title + date"
          v-model="downvote"
        />
        <span></span>
      </label>
    </div>
    <p>{{ popularity }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      upvote: false,
      downvote: false,
    };
  },
  props: ["title", "username", "date", "popularity", "post"],
  created() {
    this.$store.commit("SET_ACTIVE_POST", this.post);
  },
  methods: {
    clickUpvote() {
      this.upvote = true
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
}

</style>
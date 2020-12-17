<template>
  <div class="container">
    <div class="real-comment-header">
      <div class="comment-header">
        <h4>re: {{ post.title }}</h4>
        <p>{{ comment.username }}</p>
        <p>{{ comment.createdTime }}</p>
      </div>
      <p>
        {{ comment.text }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  props: ["comment", "post"],
};
</script>

<style scoped>
.container {
  /* width: 100%;
  margin-left: 0px;
  margin-right: 0px; */
  max-width: 1000px;
  display: grid;
  grid-template-columns: 1fr 3fr 1fr;
  grid-template-areas:
    ". title   ."
    ". results .";
}

.comment-header {
  display: flex;
  justify-content: space-between;
}

.real-comment-header {
  padding: 0 5px 0 5px;
  border: 2px red solid;
  border: 2px black solid;
  background-color: #c9c6c2;
  background-size: cover;
  border-radius: 5px;
  margin-bottom: 10px;

  grid-area: results;
}
</style>
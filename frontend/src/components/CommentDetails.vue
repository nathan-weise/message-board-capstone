<template>
  <div class="container">
      <h4>re: {{ post.title }}</h4>
      <p>
          {{comment.text}}
      </p>
  </div>
</template>

<script>
export default {
    props: ["comment", "post"]
}
</script>

<style>

    .container {
        border: 2px red solid;
    }

</style>
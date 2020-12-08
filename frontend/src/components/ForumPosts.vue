<template>
  <div>
      <site-header />
      <h1>Forum Name</h1>
  </div>
</template>

<script>
import SiteHeader from "./SiteHeader.vue"
import PostService from '@/services/PostService.js';

export default {

  components: { SiteHeader },
  created() {
      PostService.listAllPostsForForum(1);
  }
}
</script>

<style>

</style>
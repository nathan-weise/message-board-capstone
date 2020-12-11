<template>
  <div>
    <post-details />
    <side-bar />
  </div>
</template>

<script>
import PostDetails from "../components/PostDetails.vue";
import SideBar from '../components/SideBar.vue';
export default {
  components: { PostDetails, SideBar },
};
</script>

<style>
</style>
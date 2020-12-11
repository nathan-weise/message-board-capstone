<template>
  <div>
    <side-bar />
    <p>Search results:</p>
    <forum-search-result
      v-for="result of $store.state.searchResults"
      :key="result.id"
      v-bind:title="result.name"
      v-bind:id="result.id"
    />
  </div>
</template>

<script>
import ForumSearchResult from "../components/ForumSearchResult.vue";
import SideBar from '../components/SideBar.vue';
export default {
  components: { ForumSearchResult, SideBar },

  data() {
    return {
      results: this.$store.state.searchResults
    };
  }
};
</script>

<style>
</style>
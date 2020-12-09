<template>
  <div>
    <p>Search results:</p>
    <forum-search-result
      v-for="result of $store.state.searchResults"
      :key="result.id"
      v-bind:title="result.name"
    />
  </div>
</template>

<script>
import ForumSearchResult from "../components/ForumSearchResult.vue";
export default {
  components: { ForumSearchResult },

  data() {
    return {
      results: this.$store.state.searchResults
    };
  }
};
</script>

<style>
</style>
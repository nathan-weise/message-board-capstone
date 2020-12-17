<template>
  <div>
    <side-bar v-if="$store.state.token !== ''" />
    <div class="search-container">
      <h3>Search results:</h3>
      <div class="search-results">
        <forum-search-result
          class="forum-search-result"
          v-for="result of $store.state.searchResults"
          :key="result.id"
          v-bind:title="result.name"
          v-bind:id="result.id"
        />
      </div>
    </div>
  </div>
</template>

<script>
import ForumSearchResult from "../components/ForumSearchResult.vue";
import SideBar from "../components/SideBar.vue";
export default {
  components: { ForumSearchResult, SideBar },

  data() {
    return {
      results: this.$store.state.searchResults,
    };
  },
};
</script>

<style scoped>
.search-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-areas:
    ". title   ."
    ". results .";
}

.search-results {
  grid-area: results;
  border-radius: 5px;
  background-color: rgba(0, 0, 0, 0.3);
  padding: 10px;
}


h3 {
  display: flex;
  justify-self: center;
  grid-area: title;
  font-size: 50px;
}
</style>
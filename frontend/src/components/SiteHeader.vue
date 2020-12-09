<template>
  <div id="container">
    <router-link v-bind:to="{ name: 'home' }">
      <img id="logo" src="../../res/pngegg.png" alt="bread" />
    </router-link>
    <div id="search-bar" v-on:keyup.enter="performSearch()">
      <b-input-group size="md" class="mb-2">
        <b-input-group-prepend is-text>
          <b-icon icon="search" v-on:click="performSearch()"></b-icon>
        </b-input-group-prepend>
        <b-form-input v-model="searchTerm" type="search" placeholder="Search BrEaDIT"></b-form-input>
      </b-input-group>
    </div>
    <div>
      <div v-if="$store.state.token === ''">
        <b-button
          class="nav-buttons"
          id="button-in"
          v-bind:to="{ name: 'login' }"
          >Login</b-button
        >
        <b-button
          class="nav-buttons"
          id="button-reg"
          v-bind:to="{ name: 'register' }"
          >Register</b-button
        >
      </div>
      <div v-else>
        Hello, {{ $store.state.user.username }} [{{
          $store.state.user.authorities[0].name.substring(5)
        }}]
        <b-button
          class="nav-buttons"
          id="button-in"
          v-bind:to="{ name: 'logout' }"
          >Logout</b-button
        >
      </div>
    </div>
  </div>
</template>


<script>
import ForumService from "@/services/ForumService.js";

export default {
  data() {
    return {
      searchTerm: '',
    }
  },
  methods: {
    performSearch() {
      console.log(this.$route.query.q);

      this.$router.push({ name: 'search', query: { q: this.searchTerm } });
      ForumService.getForumBySearchTerm(this.$route.query.q).then((response) => {
        this.$store.commit('SET_SEARCH_RESULTS', response.data);
        console.log(response.data);
        // if (!this.$route.path.includes('search?q=')) {
        // }
    });
    },
  },
  created() {
    this.searchTerm = this.$route.query.q;
    this.performSearch();
  }

};
</script>

<style>
#logo {
  height: 75px;
  width: 75px;
  padding: 10px 0 0 0;
}
#container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0px 10px 0px 10px;
}
#search-bar {
  display: flex;
  padding: 10px 0px 0px 0px;
}
#button-in {
  margin-right: 5px;
}
</style>
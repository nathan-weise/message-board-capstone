<template>
  <div id="container">
    <router-link v-bind:to="{ name: 'home' }">
      <img id="logo" src="../../res/site_images/logo.png" alt="bread" />
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
          icon="logout"
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
      this.$router.push({ name: 'search', query: { q: this.searchTerm } });
      ForumService.getForumBySearchTerm(this.$route.query.q).then((response) => {
        this.$store.commit('SET_SEARCH_RESULTS', response.data);
    });
    },
  },
  created() {
    // This statement runs a search when the page is reloaded, but only when we 
    //are already on the search page. This allows us to copy and paste the search
    //url and perform a search when the page is loaded
    if (this.$route.name === 'search') {
      this.searchTerm = this.$route.query.q;
      this.performSearch();
    }
  }

};
</script>

<style>
#logo {
  height: auto;
  width: 180px;
  padding: 10px 0 0 0;
}
#container {
  background: rgba(0, 0, 0, 0.2);
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
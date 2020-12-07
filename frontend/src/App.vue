<template>
  <div id="app">
    <site-header />
    <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token !== ''">Logout</router-link>
    </div>
    <router-view />
  </div>
</template>

<script>
import SiteHeader from './components/SiteHeader.vue';


export default {
  name: 'app',
  components: {
    SiteHeader

  }
};
</script>
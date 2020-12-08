<template>
  <div id="app">
    <site-header />
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
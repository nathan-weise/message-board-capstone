<template>
  <div id="app">
    <site-header />
    <router-view />
    <!-- <img src="https://i.imgur.com/tITjNRx.jpg" /> -->
  </div>
</template>

<script>
import SiteHeader from "./components/SiteHeader.vue";

export default {
  name: "app",
  components: {
    SiteHeader,
  },
};



</script>

<style scoped>
#app::before {
  /* background-color:lightsteelblue; */
  background-image: url("https://i.imgur.com/tITjNRx.jpg");
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0.36;
  background-position: center;
  background-size: cover;
  z-index: -1;

}
#app {
  position: relative;
}

* {
  font-family: 'Righteous', cursive, serif;
}
</style>
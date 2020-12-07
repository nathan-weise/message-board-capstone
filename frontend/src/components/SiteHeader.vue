<template>
  <div id="container">
    <h1>BrEaDIT</h1>
    <div id="search-bar">
      <b-input-group size="md" class="mb-2">
        <b-input-group-prepend is-text>
          <b-icon icon="search"></b-icon>
        </b-input-group-prepend>
        <b-form-input type="search" placeholder="Search BrEaDIT"></b-form-input>
      </b-input-group>
    </div>
    <div id="nav-buttons">
      <div v-if="$store.state.token === ''">
        <b-button id="button-log" v-bind:to="{name: 'login'}">Login</b-button>
        <b-button id="button-reg" v-bind:to="{name: 'register'}">Register</b-button>
      </div>
      <div v-else>
        Hello, {{ $store.state.user.username }} [{{ $store.state.user.authorities[0].name.substring(5) }}]
      </div>
    </div>
  </div>
</template>

<script>
export default {
  // methods: {
  //   test() {
  //     console.log(this.$store.state.user.username);
  //     return this.$store.state.token === ''
  //   }
  // }
};
</script>

<style>
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
#button-log {
  margin-right: 5px;
}

</style>
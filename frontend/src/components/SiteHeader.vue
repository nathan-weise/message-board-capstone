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
      <b-button id="button-log">Login</b-button>
      <b-button id="button-reg">Register</b-button>
    </div>
  </div>
</template>

<script>
export default {};
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
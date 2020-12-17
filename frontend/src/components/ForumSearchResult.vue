<template>
  <div>
    <router-link :to="{ name: 'forum', params: {forumId: id} }">
      <h3 id="title">{{ title }}</h3>
    </router-link>
  </div>
</template>

<script>
export default {
    props: ['title', 'id']
}

</script>

<style scoped>

div {
  /* margin-left: 50px; */
  display: grid;
  width: 50%;
  grid-template-areas:
    "img title    title"
    "img username create"
    "img votes    votes";
}

img {
  border-radius: 100%;
  height: 90px;
  width: 90px;
  padding: 5px;
  grid-area: img;
}

#title {
  grid-area: title;
}

#username {
  grid-area: username;
}

#created {
  grid-area: create;
}

a {
  text-decoration: none;
  color: #2B303A;
}

a:hover {
  text-decoration: none;
  color: #DA8F48;
  -webkit-text-stroke-width: 1px;
  -webkit-text-stroke-color: black;
}

</style>
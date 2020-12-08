<template>
  <div>
    <h3 id="title">{{ title }}</h3>
  </div>
</template>

<script>
export default {
    props: ['title']
}
</script>

<style scoped>

div {
  margin-bottom: 10px;
  margin-left: 50px;
  display: grid;
  height: 100px;
  width: 50%;
  border: solid;
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
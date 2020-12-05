<template>
  <div>
    <img
      src="https://www.thespruce.com/thmb/KwKqGx7uhDC9Gou99usNPflipTo=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/high-angle-view-of-male-mallard-duck-with-mouth-open-629724643-572b53fc3df78c038ee2d78f.jpg"
      alt="duck"
    />
    <h3 id="title">Post Title</h3>
    <p  id="username">username</p>
    <p  id="created">created date</p>
  </div>
</template>

<script>
export default {};
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


</style>
<template lang="html">
  <div class="centerx">
    <b-button @click="popupActivo2=true" class="popup-button">+ Post</b-button>
    <vs-popup classContent="popup-example"  title="Create New Post" :active.sync="popupActivo2">
     <form>
  <div class="form-group">
    <label for="postTitleInput">Post Name</label>
    <input v-model="title" id="postTitleInput" type="text" class="form-control" placeholder="Post Title">
  </div>
    <div class="form-group">
    <label for="thumbnail">Thumbnail Image URL</label>
    <input v-model="imageURL" id="thumbnail" type="text" class="form-control" placeholder="Insert Image URL">
  </div>
  <div class="form-group">
    <label for="postText">Post Text</label>
    <textarea v-model="text" id="postText" type="text-area" class="form-control" placeholder="Post Text"></textarea>
  </div>
  <div class="form-check">
    <b-form-checkbox v-model="nsfw" type="checkbox" class="form-check-input" id="postNsfw">nsfw?</b-form-checkbox>
  </div>
  <button type="submit" class="btn btn-primary" v-on:click.prevent="addPost()">Submit</button>
</form>
    
      
    </vs-popup>
  </div>
</template>

<script>
import PostService from "@/services/PostService.js";

export default {
  data() {
    return {
      title: "",
      text: "",
      imageURL: "",
      nsfw: false,
      popupActivo2: false,
    };
  },
  methods: {
    addPost() {
      PostService.addPost({
        title: this.title,
        text: this.text,
        nsfw: this.nsfw,
        imageURL: this.imageURL,
        forumId: this.$route.params.forumId,
      }).then((response) => {
        if (response.status === 201) {
          this.popupActivo2 = false;
          this.$store.commit("ADD_FORUM_POST", response.data);
        }
      });
    },
  },
};
</script>

<style scoped>
.popup-button {
  display: block;
  width: 100%;
  background-color: rgba(150, 150, 150, 0.6);
}
</style>
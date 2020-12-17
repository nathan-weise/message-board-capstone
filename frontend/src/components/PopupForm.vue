<template lang="html">
  <div class="centerx">
    <b-button @click="popupActivo2=true" class="popup-button">+ Forum</b-button>
    <vs-popup classContent="popup-example"  title="Create New Forum" :active.sync="popupActivo2">
     <form>
  <div class="form-group">
    <label for="forumNameInput">Forum Name</label>
    <input v-model="name" id="forumNameInput" type="text" class="form-control" placeholder="Forum Name">
  </div>
  <div class="form-group">
    <label for="forumDescInput">Forum Description</label>
    <textarea v-model="description" id="forumDescInput" type="text-area" class="form-control" placeholder="Forum Description"></textarea>
  </div>
  <div class="form-check">
    <b-form-checkbox v-model="nsfw" type="checkbox" class="form-check-input" id="forumNsfw">nsfw?</b-form-checkbox>
  </div>
  <button type="submit" class="btn btn-primary" v-on:click.prevent="addForum()">Submit</button>
</form>
    
      
    </vs-popup>
  </div>
</template>

<script>
import ForumService from "@/services/ForumService.js";

export default {
  data() {
    return {
      name: "",
      description: "",
      nsfw: false,
      popupActivo2: false,
    };
  },
  methods: {
    addForum() {
      ForumService.addForum({
        name: this.name,
        description: this.description,
        nsfw: this.nsfw,
      }).then((response) => {
        if (response.status === 201) {

          //TODO: change to the name object
          this.$router.push(`forums/${response.data.id}/posts`);
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
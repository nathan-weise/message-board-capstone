<template lang="html">
  <div class="centerx">
    <b-button @click="popupActivo2=true" class="popup-button">+ Comment</b-button>
    <vs-popup classContent="popup-example"  title="Create New Comment" :active.sync="popupActivo2">
     <form>
  <div class="form-group">
    <label for="commentText">Comment Text</label>
    <textarea v-model="text" id="commentText" type="text-area" class="form-control" placeholder="Comment Text"></textarea>
  </div>
  <button type="submit" class="btn btn-primary" v-on:click.prevent="addComment()">Submit</button>
</form>
    
      
    </vs-popup>
  </div>
</template>

<script>
import CommentService from '@/services/CommentService.js';

export default {
  data() {
    return {
      text: '',
      popupActivo2: false
    }
  },
  methods: {
    addComment() {
      CommentService.addComment({text: this.text}, this.$route.params.postId).then(response => {
        if (response.status === 201) {
          this.popupActivo2 = false;
          this.$store.commit('ADD_COMMENT', response.data);
        }
      })
    }
  }
}
</script>

<style scoped>
.popup-button {
  display: block;
  width: 100%;
  background-color: rgba(150, 150, 150, 0.6);
}

</style>
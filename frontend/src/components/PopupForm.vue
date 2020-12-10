<template lang="html">
  <div class="centerx">
    <b-button @click="popupActivo2=true" color="primary" type="filled">Open Popup</b-button>
    <vs-popup classContent="popup-example"  title="Lorem ipsum dolor sit amet" :active.sync="popupActivo2">
     <form>
  <div class="form-group">
    <label for="forumNameInput">Forum Name</label>
    <input id="forumNameInput" type="text" class="form-control" placeholder="Forum Name">
  </div>
  <div class="form-group">
    <label for="forumDescInput">Forum Description</label>
    <textarea id="forumDescInput" type="text-area" class="form-control" placeholder="Forum Description"></textarea>
  </div>
  <div class="form-check">
    <b-form-checkbox type="checkbox" class="form-check-input" id="forumNsfw">nsfw?</b-form-checkbox>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
    
      
    </vs-popup>
  </div>
</template>

<script>
export default {
  data() {
    return {
      value1:'',
      value2:'',
      popupActivo2:false
    }
  }
}
</script>

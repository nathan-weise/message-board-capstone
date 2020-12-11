<template>
  <div class="sidebar-container">
    <h3>example</h3>
    <popup-form />
    <post-popup-form v-if="isInForumOrPost"/>
  </div>
</template>

<script>
import PopupForm from "./PopupForm.vue";
import PostPopupForm from './PostPopupForm.vue';
export default {
  components: { PopupForm, PostPopupForm },
  computed: {
    isInForumOrPost: function () {
      return this.$route.name === 'forum' || this.$route.name === 'post'
    }
    
    
  }
};
</script>

<style scoped>
.sidebar-container {
  border: solid 2px;
  height: 200px;
  width: 8rem;
  margin-right: 10px;
  position: fixed;
  right: 5px;
  top: 150px;
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
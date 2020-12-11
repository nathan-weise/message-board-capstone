<template>
  <div class="sidebar-container">
    <h3>example</h3>
    <popup-form />
  </div>
</template>

<script>
import PopupForm from "./PopupForm.vue";
export default {
  components: { PopupForm },
};
</script>

<style scoped>
.sidebar-container {
  border: solid 2px;
  height: 200px;
  width: 8rem;
  margin-right: 10px;
  position: fixed;
  left: 90.75%;
  top: 150px;
  display: flex;
  flex-direction: column;
  align-items: center;
}
</style>
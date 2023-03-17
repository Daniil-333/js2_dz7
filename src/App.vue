<template>
  <AppHeader />
  <div class="main">
    <router-view />
  </div>
  <AppFooter />
</template>

<script>
import AppHeader from '@/components/common/AppHeader.vue'
import AppFooter from '@/components/common/AppFooter.vue'

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter,
  },

}
</script>

<style>
.app {
  display: grid;
  grid-template-rows: auto 1fr auto;
  height: 100%;
}
</style>

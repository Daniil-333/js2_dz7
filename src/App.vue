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

  provide() {
    return {
      getImgUrl: this.getImgUrl,
      host: "http://localhost:3080/api",
    }
  },

  methods: {
    getImgUrl(pic) {
      return require(`@/assets/img/${pic}`);
    },
  }

}
</script>

<style>
.app {
  display: grid;
  grid-template-rows: auto 1fr auto;
  height: 100%;
}
</style>

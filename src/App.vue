<template>
  <AppHeader />
  <div class="main">
    <router-view />
  </div>
  <AppFooter />
</template>

<script>
import AppHeader from '@/components/views/parts/AppHeader.vue'
import AppFooter from '@/components/views/parts/AppFooter.vue'

export default {
  name: 'App',
  components: {
    AppHeader,
    AppFooter,
  },

  provide() {
    return {
      getJson: this.getJson,
      menu: this.menu
    }
  },

  methods: {
    async getJson(url) {
      try {
        const resp = await this.axios
          .get(url)
        return resp.data
      } catch(error) {
        console.log(error)
      }
    }
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

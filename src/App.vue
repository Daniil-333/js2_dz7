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
      getJson: this.getJson
    }
  },

  data() {
    return {
      menu: []
    }
  },

  methods: {
    getJson(url) {
      this.axios
        .get(url)
        .then(data => {
          // for (let el of data) {
          //   this.menu.push(el);
          // }
          console.log(data);
        })
        .catch(error => console.log(error));
    }




  },

  mounted() {
    this.getJson('/db/menu.json')

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

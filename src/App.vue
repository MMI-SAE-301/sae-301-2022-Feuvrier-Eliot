<template>

  <Header></Header>
  
  

  <!-- Affiche les pages -->
  <Suspense>
    <RouterView/>
  </Suspense>

  <Footer></Footer>
</template>

<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
import Header from './components/header.vue';
import Footer from './components/footer.vue';
import LoginLogout from './components/LoginLogout.vue'
</script>

<template>

<div class="flex felx row mx-auto w-1/2 justify-center mb-20 mt-20">
  <img src="/public/image-formulaire-auth.jpg" alt="image formulaire auth"> 

  <div class="grow grid-rows-1 bg-slate-600 px-40">
    <div class="w-64">
  <h1 class="font-liberation text-4xl font-bold text-white mb-8 mt-40">Inscrivez-vous</h1>
    <h2 class="font-liberation text-white text-xl">Authentifier vous avec google ou facebook</h2>
    <div class=" mt-10">
        <LoginLogout></LoginLogout>
    </div>
    </div> 
</div>
</div>

 
</template>

<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue'
</script>
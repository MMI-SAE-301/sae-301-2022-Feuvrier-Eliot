<template>

<div class="flex felx row justify-around">
  <img src="public/image-formulaire-auth.jpg" alt="image formulaire auth"> 
  <h1 class="">Inscrivez-vous</h1>
    <h2>Authentifier vous avec google ou facebook</h2>
    <div>
        <LoginLogout></LoginLogout>
    </div> 
</div>

 
</template>

<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue'
</script>
<script setup lang="ts">
import { supabase, user } from '../supabase';
</script>
<template>
    <div class="grid">
    <div>
        <button v-if="user" @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
        <button class="flex bg-gradient-to-b from-Noir-0 via-Noir-0 to-Violet-Bleu-0 text-white font-liberation px-5 py-3 hover:bg-gradient-to-b hover:from-Violet-Bleu-dark-0 hover:via-Violet-Bleu-dark-0 hover:to-Violet-Bleu-0" v-else @pointerdown="supabase.auth.signIn({ provider: 'google' })">
         <span><img class="mr-5" src="/public/logo-google.svg" alt="logo google bouton"></span>Se connecter avec google
        </button>
    </div>

    <div>
        <button class="flex mt-10 bg-gradient-to-b from-Noir-0 via-Noir-0 to-Violet-Bleu-0 text-white font-liberation px-5 py-3 hover:bg-gradient-to-b hover:from-Violet-Bleu-dark-0 hover:via-Violet-Bleu-dark-0 hover:to-Violet-Bleu-0" @pointerdown="supabase.auth.signIn({ provider: 'facebook' })">
         <span><img class="mr-5" src="/public/logo-facebook.svg" alt="logo google bouton"></span>Se connecter avec Facebook
        </button>
    </div>
    </div>
</template> 
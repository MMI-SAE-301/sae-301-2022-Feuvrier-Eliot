<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreCarre from "./Montre.vue";
const props = defineProps<{
  max?: number;
}>();

let { data: montres, error } = await supabase
  .from('Montre')
  .select('*')

  .limit(props.max ?? 100)
if (error) {
  console.log("n'a pas pu récupérer les montres", { error });
}
</script>
<template>
    
  <ul class="flex gap-5">
    <li v-for="Montre in montres" :key="Montre.id">
      <router-link
        :to="{ name: 'montre-edit-id', params: { id: Montre.id } }"
      >
        <MontreCarre class="w-64" v-bind="Montre" />
      </router-link>
    </li>
  </ul>
</template>
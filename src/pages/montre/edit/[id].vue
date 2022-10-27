<script setup lang="ts">
import FormMontres from '@/components/FormMontres.vue';

defineProps<{
  id: string;
}>();
</script>
<template>

<div class="bg-gradient-to-t from-Noir-0 via-Noir-0 to-Violet-Bleu-0 pt-20 ">
    <FormMontres :id="id" />
</div>

</template>
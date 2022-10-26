<template>
        <div class="flex justify-center gap-10 mt-16">
      <div class="flex flex-col">
        <!-- text -->
        <div class="flex flex-col max-w-sm mr-24 gap-11">
          <h1 class="font-liberation font-bold text-3xl">Modifier la montre pour qu’elle vous corresponde</h1>
          <p class="font-liberation text-2xl">C’est sur cette page que vous pourrez laisser libre cours à votre imagination pour créer la montre de vos rêves.</p>
        </div>
        <!-- bar -->
        <div class="flex gap-4">
          <div class="barre3 mt-3 bg-gradient-to-r from-Noir-0 to-Violet-Bleu-0 "></div>
          <div class="barre4 mt-3 bg-gradient-to-r from-Violet-Bleu-0 via-Noir-0 to-Violet-Bleu-0"></div>
          <div class="barre5 mt-3 bg-gradient-to-r from-Violet-Bleu-0 to-Noir-0"></div>
        </div>
        <!-- button + arrow -->
        <div class="flex justify-end gap-6 mt-14">
          <button class="bg-Noir-0 text-white font-liberation text-base py-4 px-8 rounded-xl">En savoir plus</button>
          <img src="public/flèche.svg">
        </div>
      </div>
      <div>
        <img class="min-w-max mb-4" src="public/image-page-personnalisation.png" alt="image page personnalisation">
      </div>
    </div>

    <div>
      <img src="public/vecteur.jpg" class="w-full">
    </div>

    <div class="bg-gradient-to-b from-Noir-0 via-Noir-0 to-Violet-Bleu-0 ">
        <h1 class="font-liberation text-4xl text-white font-bold ml-64 mb-36">Personnalisation</h1>


            <Form></Form>

        
    </div>

    <div class="bg-gradient-to-b from-Violet-Bleu-0 via-Violet-Bleu-0 to-Noir-0 pb-20 ">
    <h1 class="font-liberation text-4xl text-white font-bold ml-64 mb-36">Vos différents modèles</h1>
    <ListeMontre />
    </div>

</template>

<script setup lang="ts">
import Form from '@/components/FormMontres.vue';
import Montre from '@/components/Montre.vue';
import ListeMontre from '@/components/ListeMontre.vue';
</script>
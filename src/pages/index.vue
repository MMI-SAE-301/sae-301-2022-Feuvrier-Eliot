<template>
<div>
    <div class="flex justify-center gap-10 mt-16">
      <div class="flex flex-col">
        <!-- text -->
        <div class="flex flex-col max-w-sm mr-24 gap-11">
          <h1 class="font-liberation font-bold text-3xl">Garder le contrôle de votre vie</h1>
          <p class="font-liberation text-2xl">Tik.Tak est un service qui vous est proposé afin de vous permettre d’obtenir la montre adaptée à vos goût et votre personalitée.</p>
        </div>
        <!-- bar -->
        <div class="flex gap-4">
          <div class="barre3 mt-3 bg-gradient-to-r from-Noir-0 to-Violet-Bleu-0 "></div>
          <div class="barre4 mt-3 bg-gradient-to-r from-Violet-Bleu-0 via-Noir-0 to-Violet-Bleu-0"></div>
          <div class="barre5 mt-3 bg-gradient-to-r from-Violet-Bleu-0 to-Noir-0"></div>
        </div>
        <!-- button + arrow -->
        <div class="flex justify-end gap-6 mt-7">
          <button class="bg-Noir-0 text-white font-liberation text-base py-4 px-8 rounded-xl">En Savoir plus</button>
          <img src="public/flèche.svg">
        </div>
      </div>
      <div>
        <img class="max-w-lg" src="public/image-montre-page-d'accueil.jpg" alt="">
      </div>
    </div>

    <div>
      <img src="public/vecteur.jpg" class="w-full">
    </div>

    <div class="flex flex-row bg-gradient-to-b from-Noir-0 via-Noir-0 to-Violet-Bleu-0 ">
  <div class="basis-3/4 ">
        <h1 class="font-bold font-liberation text-4xl text-white ml-52 pb-20">Personnaliser votre montre selon vos gouts</h1>
        <p class="font-liberation text-white text-2xl ml-52 mr-36"> <span> Grâce à Tik.Tak vous aurez la possibilité de modifié chaque partie de la</span> <br>
          <span>montre connectée afin de la rendre unique à vos yeux</span></p>
  </div>
  

  <div class="basis-1/4">
    <img src="public/montre-middle.png" alt="">
  </div>

</div>


<div class="flex flex-row  bg-gradient-to-b from-Violet-Bleu-0 via-Violet-Bleu-0 to-Noir-0 ">
  <img src="public/montre bracelet.png" alt="montre descriptif">
  <img class="" src="public/image-2-page-d'accueil.png" alt="montre sur la main">
  </div>

</div>
</template>

<style>
.barre3 {

    height: 8px;
    width: 50px;
    background-color: black;
    border-radius: 10px;
}

.barre4 {
    height: 8px;
    width: 40px;
    background-color: black;
    border-radius: 10px;
}

.barre5 {
    height: 8px;
    width: 130px;
    background-color: black;
    border-radius: 10px;
}
</style>
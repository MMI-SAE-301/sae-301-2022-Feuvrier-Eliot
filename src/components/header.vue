<template>
    <div class="pt-6 pb-6">
        <div class="flex justify-around mb-4">
            <div class="flex">
                <RouterLink to="/"><h1 class="font-liberation font-bold text-3xl">Tik.Tak</h1></RouterLink>
            </div>
            <div class="flex gap-16 ">
                <router-link class="font-liberation font-bold text-2xl " to="/">Nos modèles</router-link>
                <router-link class="font-liberation font-bold text-2xl " to="/personnalisation">Personnalisation</router-link>
                <router-link class="font-liberation font-bold text-2xl " to="/">À propos</router-link>
                <router-link to="pageLogin"><img class="w-11 flex-initial" src="/public/logo-profil.svg" alt="logo-profil"></router-link>
                <img class="w-11 flex-initial" src="/public/logo-panier.svg" alt="logo-panier">
            </div>
    
        </div>
        <div class="flex justify-center ">
        <div class="bar"></div>
        </div>
    </div>
</template>

<style>
.bar {
    height: 2px;
    width: 1500px;
    background-color: black;
}
</style>
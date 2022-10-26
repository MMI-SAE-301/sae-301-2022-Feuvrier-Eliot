<script setup lang="ts">
 import type { Montre } from "@/types"
 import { ref } from "vue";
 import {supabase} from "@/supabase"
 import { useRouter } from "vue-router";
import FormKitListColors from "./FormKitListColors.vue";
import Montres from "./Montre.vue";
const router = useRouter();
const montre = ref({});

const props = defineProps(["id", "Montre"]);
if (props.id) {
 // On charge les données de la table montre
 let { data, error } = await supabase
 .from("montre")
 .select("*")
 .eq("id", props.id);
 if (error || !data)
 console.log("n'a pas pu charger la table montre :", error);
 else montre.value = data[0];
}

// @ts-ignore
async function upsertMontre(dataForm, node) {
 const { data, error } = await supabase.from("Montre").upsert(dataForm);
 if (error) node.setErrors([error.message]);
 else {
 node.setErrors([]);
 router.push({ name: "montre-edit-id", params: { id: data[0].id } });
 }
}
</script>

<template>
    <div class="flex justify-center gap-40">
        <br>
        <div class="w-80 bg-Gris-0 rounded-3xl pl-10 pr-10 py-10 mb-20">
            <Montres class="" v-bind="montre" id="profil" />
        </div>
        <br>
        <div>
        <FormKit type="form" v-model="montre" @submit="upsertMontre">
            <div>
                <h1 class="text-white">Bracelet</h1>
                <br>
            <div class="bg-Gris-0 rounded-3xl pl-8 pr-10 py-5 mb-2">
                <FormKitListColors name="bracelet" />
            </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Boitier</h1>
                <br>
            <div class="bg-Gris-0 rounded-3xl pl-8 pr-10 py-5 mb-2">
                <FormKitListColors name="boitier" />
            </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Ecran</h1>
                <br>
            <div class="bg-Gris-0 rounded-3xl pl-8 pr-5 py-5 mb-2">
                <FormKitListColors name="ecran" />
            </div>
        </div>
            <br>

        </FormKit>

        </div>
    </div>
</template>
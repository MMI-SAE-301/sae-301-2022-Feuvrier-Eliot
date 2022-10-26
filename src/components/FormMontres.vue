<script setup lang="ts">
 import type { Montre } from "@/types"
 import { ref } from "vue";
 import {supabase} from "@/supabase"
 import { useRouter } from "vue-router";
import FormKitListColors from "./FormKitListColors.vue";
import Montres from "./Montre.vue";
const router = useRouter();
const basket = ref({});

const props = defineProps(["id", "Montre"]);
if (props.id) {
 // On charge les données de la table montre
 let { data, error } = await supabase
 .from("montre")
 .select("*")
 .eq("id", props.id);
 if (error || !data)
 console.log("n'a pas pu charger la table montre :", error);
 else basket.value = data[0];
}
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
        <div class="carousel w-64">
            <Montres class="carousel-item w-64" v-bind="basket" id="profil" />
        </div>
<div>
        <FormKit type="form" v-model="basket" @submit="upsertMontre">
 <FormKitListColors name="bracelet" label="bracelet" />
 <FormKitListColors name="boitier" label="boitier" />
 <FormKitListColors name="ecran" label="ecran" />

 </FormKit>

    </div>
</template>
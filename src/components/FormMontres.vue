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
 .from("Montre")
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

const quartierObject = ref({});
if (props.id) {
  // On charge les données de la vue quartiercommune
  let { data, error } = await supabase
    .from("Montre")
    .select("*")
    .eq("id", props.id);
  if (error || !data)
    console.log("n'a pas pu charger le table Maison :", error);
  else quartierObject.value = data[0];
}

async function supprimerMontre() {
const { data, error } = await supabase
  .from('Montre')
  .delete()
  // @ts-ignore
  .match({ id: quartierObject.value.id })

  if (error) {
    console.error(
      "Erreur à la suppression de ",
      // @ts-ignore
      quartierObject.value.id,
      "erreur :",
      error
    );
  } else {
    router.push("/personnalisation");
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
        <FormKit submit-label="Modifier" type="form" v-model="montre" @submit="upsertMontre"
        :submit-attrs="{
            classes: {
                input :
                `rounded-xl mt-4 px-16 mx-12 text-white font-liberation px-5 py-3 bg-gradient-to-t from-Violet-Bleu-dark-0 via-Violet-Bleu-dark-0 to-Violet-Bleu-0`
            }
        }"
        >
            <div>
                <h1 class="text-white">Bracelet</h1>
                <br>
            <div class="bg-Gris-0 rounded-xl pl-8 pr-10 py-5 mb-2">
                <FormKitListColors name="bracelet" />
            </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Boitier</h1>
                <br>
            <div class="bg-Gris-0 rounded-xl pl-8 pr-10 py-5 mb-2">
                <FormKitListColors name="boitier" />
            </div>
        </div>
            <br>
            <div>
                <h1 class="text-white">Ecran</h1>
                <br>
            <div class="bg-Gris-0 rounded-xl pl-8 pr-5 py-5 mb-2">
                <FormKitListColors name="ecran" />
            </div>
        </div>
            <br>

            <button
        type="button"

        v-if="quartierObject.id"
        @click="($refs.dialogSupprimer as any).showModal()"
        class="focus-style justify-self-end rounded-md bg-red-400 p-2 shadow-sm"
      >
        Supprimer l'offre
      </button>
      <dialog
        ref="dialogSupprimer"
        @click="($event.currentTarget as any).close()"
      >
        <button
          type="button"
          class="focus-style justify-self-end rounded-md bg-white p-2 shadow-sm"
        >
          Annuler</button
        ><button
          type="button"
          @click="supprimerMontre()"
          class="focus-style rounded-md bg-red-600 p-2 shadow-sm"
        >
          Confirmer suppression
        </button>
      </dialog>


        </FormKit>

        </div>
    </div>
</template>
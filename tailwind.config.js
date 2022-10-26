const formKitTailwind = require("@formkit/themes/tailwindcss");

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      fontFamily : {
        'liberation': ['liberation-sans','sans-serif']
      },
      colors: {
        'Blanc': ['#FFFAF0'],
        'Noir': ['#000000'],
        'Violet-Bleu-dark': ['#3B2067'],
        'Violet-Bleu': ['#9250FD'],
        'Gris': ['#272727']
        
      },
    },
  },
  plugins: [
    require("@tailwindcss/typography"),
    require("@tailwindcss/forms"),
    formKitTailwind,
    require("@headlessui/tailwindcss"),
  ],
};

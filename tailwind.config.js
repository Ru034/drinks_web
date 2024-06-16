/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./pages/*.{html,js}","./js/*.{html,js}","./php/*.{html,js,php}"],
  theme: {
    extend: {},
  },
  plugins: [require('flowbite/plugin')],
}


/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{js,ts,jsx,tsx,elm}"],
  theme: {
    fontSize: {
      xs: "clamp(0.64rem, 0.1svw + 0.62rem, 0.7rem)",
      sm: "clamp(0.8rem, 0.21svw + 0.75rem, 0.94rem)",
      base: "clamp(1rem, 0.38svw + 0.91rem, 1.25rem)",
      lg: "clamp(1.25rem, 0.64svw + 1.11rem, 1.67rem)",
      xl: "clamp(1.56rem, 1.01svw + 1.33rem, 2.22rem)",
      "2xl": "clamp(1.95rem, 1.55svw + 1.6rem, 2.96rem)",
      "3xl": "clamp(2.44rem, 2.32svw + 1.92rem, 3.95rem)",
      "4xl": "clamp(3.05rem, 3.4svw + 2.29rem, 5.26rem)",
      "5xl": "clamp(3.81rem, 4.92svw + 2.71rem, 7.01rem)",
      "6xl": "clamp(4.77rem, 7.05svw + 3.18rem, 9.35rem)",
      "7xl": "clamp(5.96rem, 10svw + 3.71rem, 12.46rem)",
      "8xl": "clamp(7.45rem, 14.09svw + 4.28rem, 16.61rem)",
      "9xl": "clamp(9.31rem, 19.74svw + 4.87rem, 22.14rem)",
    },
    extend: {
      fontFamily: {
        robotoV: [
          '"RobotoFlex", sans-serif',
          {
            fontVariationSettings:
              '"wght"var(--wght),"wdth"var(--wdth),"opsz"var(--opsz),"XTRA"var(--XTRA),"XOPQ"var(--XOPQ),"YOPQ"var(--YOPQ),"YTLC"var(--YTLC),"YTUC"var(--YTUC),"YTAS"var(--YTAS),"YTDE"var(--YTDE),"YTFI"var(--YTFI)',
          },
        ],
      },
    },
  },
  plugins: [
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/forms"),
  ],
};

return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    filetypes = { "css", "scss", "html", "javascript", "typescript", "tsx", "jsx", "typescriptreact" },
    user_default_options = {
      names = true,
      RGB = true,
      RRGGBB = true,
      RRGGBBAA = true,
      rgb_fn = true,
      hsl_fn = true,
      tailwind = true, -- 👈 nécessaire pour activer Tailwind
    },
  },
}

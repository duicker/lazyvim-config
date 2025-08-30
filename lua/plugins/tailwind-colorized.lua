return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    filetypes = {
      "html",
      "css",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
    },
    user_default_options = {
      names = false, -- ignore les noms CSS classiques
      css = false, -- on ne veut pas les couleurs classiques
      css_fn = false, -- idem
      tailwind = true, -- support Tailwind activé
      mode = "foreground", -- défaut texte
    },
  },
  config = function(_, opts)
    local colorizer = require("colorizer")

    -- première passe : classes text-* et autres
    colorizer.setup(opts.filetypes, opts.user_default_options)

    -- deuxième passe : classes bg-* → fond
    colorizer.setup(opts.filetypes, {
      mode = "background",
      tailwind = true,
      names = false,
      css = false,
      css_fn = false,
      tailwind_regex = "bg%-[^%s]+", -- seules les classes bg-* sont colorées en fond
    })

    -- troisième passe : border-* et ring-* → texte
    colorizer.setup(opts.filetypes, {
      mode = "foreground",
      tailwind = true,
      names = false,
      css = false,
      css_fn = false,
      tailwind_regex = "(border|ring)%-[^%s]+",
    })
  end,
}

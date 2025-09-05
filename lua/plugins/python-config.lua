return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Désactiver pyright pour éviter les conflits
        pyright = {
          enabled = false,
        },

        -- Configurer basedpyright
        basedpyright = {
          enabled = true,
          settings = {
            basedpyright = {
              analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true,
                inlayHints = {
                  variableTypes = true,
                  functionReturnTypes = true,
                  callArgumentNames = true,
                  parameterNames = true,
                },
              },
            },
          },
        },
      },
    },
  },
}

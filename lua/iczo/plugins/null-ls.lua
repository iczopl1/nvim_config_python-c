return{
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = {"python","c","cpp"},
        event = "VeryLazy",
        opts = function ()
          return require "iczo.configs.null-ls"
        end,
      },
  }

return{
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = {"python","c","cpp","latex"},
        event = "VeryLazy",
        opts = function ()
          return require "iczo.configs.null-ls"
        end,
      },
  }

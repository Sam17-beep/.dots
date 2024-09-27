return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "LazyFile",
    opts = function()
      LazyVim.toggle.map("<leader>ue", {
        name = "Indention Guides",
        get = function()
          return require("ibl.config").get_config(0).enabled
        end,
        set = function(state)
          require("ibl").setup_buffer(0, { enabled = state })
        end,
      })

      return {
        indent = {
          -- See more characters at :h ibl.config.indent.char
          char = "│", -- ▏│
          tab_char = "│",
        },
        scope = { show_start = false, show_end = false },
        exclude = {
          filetypes = {
            "alpha",
            "checkhealth",
            "dashboard",
            "git",
            "gitcommit",
            "help",
            "lazy",
            "lazyterm",
            "lspinfo",
            "man",
            "mason",
            "neo-tree",
            "notify",
            "Outline",
            "TelescopePrompt",
            "TelescopeResults",
            "terminal",
            "toggleterm",
            "Trouble",
          },
        },
      }
    end,
  },
  {
    "echasnovski/mini.indentscope",
    event = "LazyFile",
    opts = function(_, opts)
      opts.symbol = "│" -- ▏│
      opts.options = { try_as_border = true }
      opts.draw = {
        delay = 0,
      }
    end,
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "alpha",
          "dashboard",
          "fzf",
          "help",
          "lazy",
          "lazyterm",
          "man",
          "mason",
          "neo-tree",
          "notify",
          "Outline",
          "toggleterm",
          "Trouble",
          "trouble",
        },
        callback = function()
          vim.b["miniindentscope_disable"] = true
        end,
      })
    end,
  },
}

return {
  {
    "iamcco/markdown-preview.nvim",
    lazy = true,
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    config = function()
      vim.g.mkdp_auto_close = 0
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_highlight_css = "/home/cwj/config/markdown/md_code_highlight.css"
      vim.g.mkdp_markdown_css = "/home/cwj/config/markdown/inside.css"
      vim.g.mkdp_theme = "light"
    end,
    ft = { "markdown" },
  },
  --color select
  {
    "KabbAmine/vCoolor.vim",
    config = function()
      vim.g.vcoolor_disable_mappings = 1
      vim.g.vcoolor_custom_picker = "/usr/bin/gcolor3"
    end,
  },
  -- symbols-outline
  {
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    opts = {
      -- Your setup opts here
    },
  },
  -- yazi
  {
    "mikavilpas/yazi.nvim",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    opts = {
      open_for_directories = false,
    },
  },
  -- 注释
  {
    "danymat/neogen",
    lazy = false,
    config = function()
      require("neogen").setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },
  -- 括号
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  { "HiPhish/rainbow-delimiters.nvim", lazy = true },
  { "windwp/nvim-ts-autotag", lazy = true },
  -- auto-save
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {
        -- your config goes here
        -- or just leave it empty :)
      }
    end,
  },
  {
    "metakirby5/codi.vim",
    cmd = "Codi",
    lazy = true,
  },
}

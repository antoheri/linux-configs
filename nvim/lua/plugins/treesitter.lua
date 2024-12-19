return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Automatically updates parsers
    event = { "BufReadPost", "BufNewFile" }, -- Lazy load Treesitter when opening a file
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "javascript", "python", "css", "html" }, -- List parsers you need
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}

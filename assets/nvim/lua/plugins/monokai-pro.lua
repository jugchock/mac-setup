return {
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false, -- Load immediately at startup
    priority = 1000, -- Load before all other UI plugins
    config = function()
      require("monokai-pro").setup({
        filter = "pro", -- options: "pro", "classic", "machine", "ristretto", "spectrum"
      })
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options: "latte", "macchiato", "frappe", "mocha"
    })
    vim.cmd.colorscheme "catppuccin"
  end,
}

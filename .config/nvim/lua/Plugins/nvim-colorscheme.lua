local theme = os.getenv("THEME")

if theme == "dracula" then
  vim.cmd("colorscheme dracula")
elseif theme == "christmas" then
  vim.opt.background = "light"
  require('everforest').setup({
    background="soft"
  })
  require('everforest').load()
elseif theme == "christmas-dark" then
  vim.opt.background = "dark"
  require('everforest').setup({
    background="medium"
  })
  require('everforest').load()
end

-- everforest

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/AppData/Local/nvim/plugged')
  Plug('catppuccin/nvim', {as = 'catppuccin'})
  Plug('neovim/nvim-lspconfig')
  Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

  Plug('nvim-lua/plenary.nvim')
  Plug('nvim-telescope/telescope.nvim')

  Plug('neovim/nvim-lspconfig')
  Plug('hrsh7th/cmp-nvim-lsp')
  Plug('hrsh7th/cmp-buffer')
  Plug('hrsh7th/cmp-path')
  Plug('hrsh7th/cmp-cmdline')
  Plug('hrsh7th/nvim-cmp')

  Plug('tpope/vim-fugitive')

  Plug('lervag/vimtex')
vim.call('plug#end')

vim.cmd 'colorscheme catppuccin'

vim.cmd 'set completeopt=menu,menuone,noselect'

-- Spaces & Tabs {{{
vim.opt.tabstop = 4       -- number of visual spaces per TAB
vim.opt.softtabstop = 4   -- number of spaces in tab when editing
vim.opt.shiftwidth = 4    -- number of spaces to use for autoindent
vim.opt.expandtab = true  -- tabs are space
vim.opt.autoindent = true
vim.opt.copyindent = true -- copy indent from the previous line
vim.opt.colorcolumn = "81"  -- marks a column that is recommended length of the row
-- }}} Spaces & Tabs

-- Clipboard {{{
-- vim.opt.clipboard+=unnamedplus
-- }}} Clipboard

-- UI Config {{{
vim.opt.hidden = true
vim.opt.number = true                  -- show line number
vim.opt.showcmd = true                 -- show command in bottom bar
--vim.opt.cursorline               -- highlight current line
--vim.opt.wildmenu                 -- visual autocomplete for command menu
vim.opt.showmatch = true                -- highlight matching brace
vim.opt.laststatus = 2             -- window will always have a status line
-- vim.opt.nobackup = true
-- vim.opt.noswapfile = true
-- }}} UI Config

require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  ignore_install = {},

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
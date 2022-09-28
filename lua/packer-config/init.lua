local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end



require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
    'nvim-treesitter/nvim-treesitter',
     run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    } 
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'EdenEast/nightfox.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }
    use "windwp/nvim-autopairs"
    use 'neovim/nvim-lspconfig'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'prabirshrestha/asyncomplete.vim'
    use 'prabirshrestha/vim-lsp'
    use 'prabirshrestha/asyncomplete-lsp.vim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'onsails/lspkind-nvim' 
    use 'norcalli/nvim-colorizer.lua'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/prettier.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'windwp/nvim-ts-autotag'

    -- autocomplete config
local cmp = require 'cmp'
cmp.setup {
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    })
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
    { name = 'cmdline' },
  }
}
end)

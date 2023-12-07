-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.1', requires = { 
			{'nvim-lua/plenary.nvim'} 
		}
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end
    }	

    local NOREF_NOERR_TRUNC = { noremap = true, silent = true, nowait = true }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }   

    use {'alaviss/nim.nvim'}

    -- lsp config for elixir-ls support
    use {'neovim/nvim-lspconfig'}

    -- cmp framework for auto-completion support
    use {'hrsh7th/nvim-cmp'}

    -- install different completion source
    use {'hrsh7th/cmp-nvim-lsp'}
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}

    -- you need a snippet engine for snippet support
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/cmp-vsnip'}

    -- misc plugins
    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
    use("EdenEast/nightfox.nvim")
    use('preservim/nerdtree')
    use('kyazdani42/nvim-web-devicons')
    use('christoomey/vim-tmux-navigator')

end)


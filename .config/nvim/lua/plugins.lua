function reapply_colorscheme()
  vim.cmd('colorscheme ' .. vim.api.nvim_exec('colorscheme', true))
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- theme
  use {
    'eddyekofo94/gruvbox-flat.nvim',
    config = function()
      vim.g.gruvbox_transparent = true
      vim.g.gruvbox_flat_style = "hard"
      reapply_colorscheme()
    end
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        highlight = { enable = true },
        indent = { enable = true }
      }
    end
  }

  -- remove the swap file messages
  use 'gioele/vim-autoswap'

  -- start screen
  use {
    'mhinz/vim-startify',
    config = function()

      -- start startify lists at 1
      vim.g.startify_custom_indices = vim.fn.map(vim.fn.range(1, 100),
                                                 'string(v:val)')
      vim.g.startify_custom_header = {}
      -- faster (but might miss some files)
      vim.g.startify_enable_unsafe = 1
      vim.g.startify_change_to_vcs_root = 0
      vim.g.startify_change_to_dir = 1
    end
  }

  -- buffer stabilize
  use {
    "luukvbaal/stabilize.nvim",
    config = function() require("stabilize").setup() end
  }

  -- status bar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- dev icons
  use 'ryanoasis/vim-devicons'
  use 'lambdalisue/glyph-palette.vim'

  -- Rainbow parentheses
  -- use 'kien/rainbow_parentheses.vim'
  -- use 'luochen1990/rainbow'
  -- use 'frazrepo/vim-rainbow'
  -- use 'junegunn/rainbow_parentheses.vim'
  -- use 'p00f/nvim-ts-rainbow'
  use 'kien/rainbow_parentheses.vim'

  -- css colors
  use 'ap/vim-css-color'

  -- display marks in the gutter
  use 'kshenoy/vim-signature'

  -- git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  -- tpope essentials
  use 'tpope/vim-repeat'
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'

  -- everything completion
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require('telescope').setup {
        layout_strategy = 'center',
        extensions = {
          fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = false, -- override the generic sorter
            override_file_sorter = true -- override the file sorter
          }
        },
        defaults = {
          -- Lua regex patterns: http://www.lua.org/pil/20.2.html
          -- "pkg/demo",
          file_ignore_patterns = {
            "pkg/kit%-legacy", "pkg/website", "node_modules", "**/*.png",
            "**/*.jpg", "**/*.gif", "**/*.woff2", "**/*.mp4"
          }
        }
      }
    end
  }

  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    requires = 'nvim-telescope/telescope.nvim',
    after = 'telescope.nvim',
    run = 'make',
    config = function() require('telescope').load_extension('fzf') end
  }

  -- Debugger
  use 'mfussenegger/nvim-dap'

  -- Autopair
  use 'jiangmiao/auto-pairs'

  -- Better path for gf
  use 'tomarrell/vim-npr'

  -- Harpoon
  use 'nvim-lua/plenary.nvim'
  -- use 'nvim-lua/popup.nvim'

  -- Emmet
  use 'mattn/emmet-vim'

end)

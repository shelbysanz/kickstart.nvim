return {
  {
    'tpope/vim-sleuth',
  },
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', ':tab G<CR>:Git<CR>')
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<leader>tt]],
        direction = 'float',
        float_opts = {
          width = function()
            return math.floor(vim.o.columns * 0.95)
          end,
          height = function()
            return math.floor(vim.o.lines * 0.9)
          end,
        },
      }
    end,
  },
  {
    'r-cha/encourage.nvim',
    config = function()
      require('encourage').setup {
        messages = {},
      }
    end,
  },
  -- {
  --   'sphamba/smear-cursor.nvim',
  --   opts = { -- Default  Range
  --     stiffness = 0.8, -- 0.6 - [0, 1]
  --     trailing_stiffness = 0.5, -- 0.3 - [0, 1]
  --     distance_stop_animating = 0.5, -- 0.1 - > 0
  --   },
  -- },
  {
    'm4xshen/hardtime.nvim',
    lazy = false,
    dependencies = { 'MunifTanjim/nui.nvim' },
    opts = {},
    config = function()
      require('hardtime').setup {
        disable_mouse = false,
        -- restriction_mode = 'hint',
      }
    end,
  },
  -- primeagen
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup()
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end)
      vim.keymap.set('n', '<leader>t', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)
    end,
  },
  -- {
  --   "folke/zen-mode.nvim",
  --   opts = {
  --     window = {
  --       width = 90,
  --       options = {
  --       }
  --     }
  --   }
  -- },
  {
    'folke/trouble.nvim',
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = 'Trouble',
    keys = {
      {
        '<leader>q',
        '<cmd>Trouble diagnostics toggle focus=true<cr>',
        desc = 'Diagnostics (Trouble)',
      },
    },
  },
  {
    'ThePrimeagen/vim-be-good',
  },
}

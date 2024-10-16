-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'stevearc/oil.nvim',
    keys = {
      { '<leader>e', '<cmd>Oil --float<CR>', desc = 'Explorer' },
    },
    opts = {
      view_options = {
        show_hidden = true,
      },
      float = {
        padding = 5,
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },

    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.startify'

      dashboard.section.header.val = {
        [[ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⢞⣩⡿⠿⠶⢤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⠻⠇⠀⠀⠀⠀⠈⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡀⠀⢀⡴⠚⠉⠓⢦⡴⠒⠉⠲⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⢀⡤⠖⢾⡛⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⣸⣇⢀⣸⠐⠶⠀⠀⠀⠃⠀⠀⠰⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⢋⣽⠶⣤⠀⠀⠀⠀]],
        [[⣴⠟⠧⣀⡴⠛⠉⠛⣆⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠘⢦⡀⠀⢀⡠⠋⠉⢉⣷⡏⠀⠀⠀⠀⠀⠀⠀⠀⡴⢟⠉⠻⣄⡤⠚⠳⣄⠀⠀]],
        [[⠉⣧⡄⢹⣄⣀⡼⠀⣿⠀⠀⠀⠀⠀⠀⠀⣻⣿⡯⠀⠀⣩⡽⠟⠒⠒⠚⠉⠙⠳⣤⣤⣄⠀⠀⠀⠀⠀⡇⠈⠳⣤⣿⠀⣠⡏⡿⠀⠀]],
        [[⢧⣈⠙⠋⠀⠹⠀⠀⠉⠳⣄⠀⠀⠀⠀⠀⢳⣚⣃⣀⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀⣼⢃⡟⠀⠀⠀⣠⠾⠁⠀⠸⠁⠈⠙⣩⠞⠁⠀⠀]],
        [[⠀⠉⠳⣆⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⠀⠀⠀⡇⠰⡇⠀⠀⠀⠀⠀⠀⠀⠀⣀⣻⡿⠀⢀⡴⠚⠁⠀⠀⠀⠀⠀⢀⡞⠁⠀⠀⠀⠀]],
        [[⠀⠀⠀⠘⢧⡀⠀⠀⠀⠀⠀⠀⠈⠳⣤⡀⠀⠀⡿⠀⠻⣄⠀⠀⠀⠀⠀⣠⠖⠋⣀⡤⠞⠁⠀⠀⠀⠀⠀⠀⠀⣠⠏⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠈⠛⡟⢶⡷⠶⠶⠾⠿⣶⣖⠒⠉⡿⢴⡋⠉⠉⠓⢦⡀⠀⠀⠀⠀⣀⡼⠃⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠈⢷⣄⠀⠀⠀⠀⠀⠀⣼⠁⠀⠹⣆⠀⠀⢠⠇⠉⢷⣀⣿⡋⢳⠀⠀⠀⠀⠹⣄⠀⢀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⣄⠀⠀⢀⡼⠁⠀⠀⠀⢹⡖⠒⠞⠀⠀⠀⠙⠀⢹⡍⠀⠀⠀⠀⠀⠘⡖⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡶⠋⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⢷⡀⠀⠀⠀⢀⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⢤⣀⡀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⢾⣇⣠⠴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣨⠟⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡏⠀⠀⠀⢀⣀⣠⠤⠤⠶⠒⠒⠒⠒⢲⡆⠒⠒⠒⠦⣤⣀⡀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⡗⠒⠉⠉⠉⠉⠉⠉⠐⠒⠒⠒⠒⠒⠒⠛⠒⠈⠉⠉⠁⠀⠉⢻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ]],
      }

      alpha.setup(dashboard.opts)
    end,
  },
  {
    'echasnovski/mini.surround',
    opts = {
      mappings = {
        add = 'gsa', -- Add surrounding in Normal and Visual modes
        delete = 'gsd', -- Delete surrounding
        find = 'gsf', -- Find surrounding (to the right)
        find_left = 'gsF', -- Find surrounding (to the left)
        highlight = 'gsh', -- Highlight surrounding
        replace = 'gsr', -- Replace surrounding
        update_n_lines = 'gsn', -- Update `n_lines`
      },
    },
  },
  {
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>gg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true,
        },
      },
      routes = {
        {
          filter = {
            event = 'msg_show',
            any = {
              { find = '%d+L, %d+B' },
              { find = '; after #%d+' },
              { find = '; before #%d+' },
            },
          },
          view = 'mini',
        },
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  {
    'nvim-lualine/lualine.nvim',
    sections = {
      lualine_c = {
        function()
          -- invoke `progress` here.
          return require('lsp-progress').progress()
        end,
      },
    },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'linrongbin16/lsp-progress.nvim',
    config = function()
      require('lsp-progress').setup()
    end,
  },
}

local plugins =
{
  {
    "dhruvasagar/vim-prosession",
    dependencies = {
      "tpope/vim-obsession",
    },
    cmd = "Prosession",
    config = function()
      require("telescope").load_extension("prosession")
      local tree_open = vim.fn.win_findbuf(vim.fn.bufnr("NvimTree"))
      if #tree_open == 0 then
        vim.cmd("NvimTreeToggle")
      end
    end
  },
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require("notify")
    end
  },
  {
    "Dhanus3133/LeetBuddy.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("leetbuddy").setup({})
    end,
    keys = {
      { "<leader>lq", "<cmd>LBQuestions<cr>", desc = "List Questions" },
      { "<leader>ll", "<cmd>LBQuestion<cr>",  desc = "View Question" },
      { "<leader>lr", "<cmd>LBReset<cr>",     desc = "Reset Code" },
      { "<leader>lt", "<cmd>LBTest<cr>",      desc = "Run Code" },
      { "<leader>ls", "<cmd>LBSubmit<cr>",    desc = "Submit Code" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'ThePrimeagen/vim-be-good',
    cmd = "VimBeGood"
  },
  {
    'kdheepak/lazygit.nvim',
    cmd = "LazyGit"

  },
  {
    'neoclide/coc.nvim',
    branch = 'release',
    cmd = "CocInstall",
    keys = {
      { "<leader>fe", "<cmd>CocCommand tsserver.executeAutofix<cr>", desc = "auto fix code using coc" },
    }

  },
  {
    "HiPhish/nvim-ts-rainbow2",
    event = "InsertEnter",
    config = function()
      require('nvim-treesitter.configs').setup {
        rainbow = {
          enable = true,
          -- list of languages you want to disable the plugin for
          disable = {},
          -- Which query to use for finding delimiters
          query = 'rainbow-parens',
          -- Highlight the entire buffer all at once
          strategy = require('ts-rainbow').strategy.global,
        }
      }
    end
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function(_, opts)
      -- Other blankline configuration here
      return require("indent-rainbowline").make_opts(opts)
    end,
    dependencies = {
      "TheGLander/indent-rainbowline.nvim",
    },
    event="InsertEnter"
  }
}
return plugins

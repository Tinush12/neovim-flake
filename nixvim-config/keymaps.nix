{...}: {
  keymaps = [
    # ---------------------
    # Save & Exit Neovim
    # ---------------------
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>q<CR>";
      options.desc = "Quit Neovim";
    }
    {
      mode = "n";
      key = "q";
      action = "<cmd>bd<CR>";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "w";
      action = "<cmd>w<CR>";
      options.desc = "Save Files";
    }
    # ---------------------
    # Neovim Remaps
    # ---------------------
    {
      mode = "n";
      key = "U";
      action = "<C-r><CR>";
      options.desc = "Redo last action";
    }
    # ---------------------
    # Telescope
    # ---------------------
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find files";
    }
    {
      mode = "n";
      key = "<leader>B";
      action = "<cmd>Telescope buffers<CR>";
      options.desc = "Find files";
    }
    {
      mode = "n";
      key = "<leader>g";
      action = "<cmd>Telescope live_grep<CR>";
      options.desc = "Telescope ripgrep ";
    }
    {
      mode = "n";
      key = "/";
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      options.desc = "Search in current buffer";
    }
    # ---------------------
    # Hop
    # ---------------------
    {
      mode = "n";
      key = "f";
      action = "<cmd>HopWord<CR>";
      options.desc = "Go to an word in the current buffer";
    }
    # ---------------------
    # Buffer Navigation
    # ---------------------
    {
      mode = "n";
      key = "gn";
      action = "<cmd>bn<CR>";
      options.desc = "Go to next buffer";
    }
    {
      mode = "n";
      key = "gb";
      action = "<cmd>bp<CR>";
      options.desc = "Go to previous buffer";
    }
    {
      mode = "n";
      key = "gp";
      action = "<cmd>bp<CR>";
      options.desc = "Go to prev buffer";
    }
    {
      mode = "n";
      key = "go";
      action = "<C-o>";
      options.desc = "Go to prev pos";
    }
    {
      mode = "n";
      key = "gi";
      action = "<C-i>";
      options.desc = "Go to next pos";
    }
    {
      mode = "n";
      key = "ö";
      action = "<cmd>b#<cr>";
      options = {
        desc = "Switch to last buffer";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>1";
      action = "<cmd>BufferLineGoToBuffer 1<cr>";
      options = {
        desc = "Buffer 1";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>2";
      action = "<cmd>BufferLineGoToBuffer 2<cr>";
      options = {
        desc = "Buffer 2";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>3";
      action = "<cmd>BufferLineGoToBuffer 3<cr>";
      options = {
        desc = "Buffer 3";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>4";
      action = "<cmd>BufferLineGoToBuffer 4<cr>";
      options = {
        desc = "Buffer 4";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>5";
      action = "<cmd>BufferLineGoToBuffer 5<cr>";
      options = {
        desc = "Buffer 5";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>6";
      action = "<cmd>BufferLineGoToBuffer 6<cr>";
      options = {
        desc = "Buffer 6";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>7";
      action = "<cmd>BufferLineGoToBuffer 7<cr>";
      options = {
        desc = "Buffer 7";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>8";
      action = "<cmd>BufferLineGoToBuffer 8<cr>";
      options = {
        desc = "Buffer 8";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>9";
      action = "<cmd>BufferLineGoToBuffer 9<cr>";
      options = {
        desc = "Buffer 9";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>0";
      action = "<cmd>BufferLineGoToBuffer -1<cr>";
      options = {
        desc = "Last Buffer";
        silent = true;
      };
    }
    # ---------------------
    # Window Navigation
    # ---------------------
    #{
    #  mode = "n";
    #  key = " <leader>wn";
    #  action = "<cmd>enew<CR>";
    #  options.desc = "Open a new empty Window";
    #}
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>split<CR>";
      options.desc = "Split current Window horizontal";
    }
    {
      mode = "n";
      key = "<leader>sv";
      action = "<cmd>vsplit<CR>";
      options.desc = "Split current Window vertical";
    }
    {
      mode = "n";
      key = "gh";
      action = "<cmd>wincmd h<CR>";
      options.desc = "Move Cursor to the left window";
    }
    {
      mode = "n";
      key = "gj";
      action = "<cmd>wincmd j<CR>";
      options.desc = "Move Cursor to the lower window";
    }
    {
      mode = "n";
      key = "gk";
      action = "<cmd>wincmd k<CR>";
      options.desc = "Move Cursor to the upper window";
    }
    {
      mode = "n";
      key = "gl";
      action = "<cmd>wincmd l<CR>";
      options.desc = "Move Cursor to the right window";
    }
    # ---------------------
    # Terminal Buffer
    # ---------------------
    {
      mode = "n";
      key = "<leader>t";
      action = ":below 15 split | terminal<CR>";
      options.desc = "create a termnal below";
    }
    # ---------------------
    # lsp
    # ---------------------
    {
      mode = "n";
      key = "<leader>k";
      action = "<CMD>lua vim.diagnostic.open_float()<CR>";
      options = {
        desc = "opens diagnostics windows on cursor pos";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>ac";
      action = "<CMD>lua vim.lsp.buf.code_action()<CR>";
      options = {
        desc = "accepts the suggestion from lsp";
        silent = true;
      };
    }
  ];

  plugins.lsp.keymaps.lspBuf = {
    "gd" = "definition";
    "gD" = "references";
    "gt" = "type_definition";
    "gI" = "implementation";
    "K" = "hover";
  };
  #  plugins.harpoon.luaConfig.post = ''
  #    vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
  #    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
  #
  #    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
  #    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
  #    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
  #    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
  #
  #    -- Toggle previous & next buffers stored within Harpoon list
  #    --vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
  #    --vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  #
  #  '';

  # Add this extraConfigLua to create a custom action
  extraConfigLua = ''
    local actions = require('telescope.actions')
    local action_state = require('telescope.actions.state')

    -- Custom action that sets search register and highlights
    local function set_search_and_select(prompt_bufnr)
      local picker = action_state.get_current_picker(prompt_bufnr)
      local prompt = picker:_get_prompt()

      actions.select_default(prompt_bufnr)

      -- Set search register and enable highlighting
      if prompt ~= "" then
        vim.fn.setreg('/', prompt)
        vim.cmd('set hlsearch')
      end
    end

    -- Override the default mapping for current_buffer_fuzzy_find
    require('telescope').setup({
      defaults = {
        mappings = {
          i = {
            ["<CR>"] = set_search_and_select,
          },
        },
      },
    })
  '';
}

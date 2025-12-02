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
    # ---------------------
    # Window Navigation
    # ---------------------
    {
      mode = "n";
      key = " <leader>wn";
      action = "<cmd>enew<CR>";
      options.desc = "Open a new empty Window";
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = "<cmd>split<CR>";
      options.desc = "Split current Window horizontal";
    }
    {
      mode = "n";
      key = "<leader>wvs";
      action = "<cmd>vsplit<CR>";
      options.desc = "Split current Window vertical";
    }
    {
      mode = "n";
      key = "<leader>wh";
      action = "<cmd>wincmd h<CR>";
      options.desc = "Move Cursor to the left window";
    }
    {
      mode = "n";
      key = "<leader>wj";
      action = "<cmd>wincmd j<CR>";
      options.desc = "Move Cursor to the lower window";
    }
    {
      mode = "n";
      key = "<leader>wk";
      action = "<cmd>wincmd k<CR>";
      options.desc = "Move Cursor to the upper window";
    }
    {
      mode = "n";
      key = "<leader>wl";
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
    {
      mode = "n";
      key = "<leader>r";
      action = "<CMD>lua vim.lsp.buf.references()<CR>";
      options = {
        desc = "lsp show references";
        silent = true;
      };
    }
  ];
}

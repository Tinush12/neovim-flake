{...}: {
  keymaps = [
    # ---------------------
    # Save & Exit Neovim
    # ---------------------
    {
      mode = "n";
      key = "q";
      action = "<cmd>q<CR>";
      options.desc = "Quit Neovim";
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
  ];
}

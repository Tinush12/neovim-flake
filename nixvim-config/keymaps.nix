{...}: {
  keymaps = [
    # Telescope
    {
      mode = "n";
      key = "<leader>f";
      action = "<cmd>Telescope find_files<CR>";
      options.desc = "Find files";
    }
    # Hop
    {
      mode = "n";
      key = "gw";
      action = "<cmd>HopWord<CR>";
      options.desc = "Go to an word in the current buffer";
    }
    {
      mode = "n";
      key = "f";
      action = "<cmd>HopWord<CR>";
      options.desc = "Go to an word in the current buffer";
    }
    # Buffer
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
    ## / Find Deselection
    #{
    #  mode = "n";
    #  key = "<ESC><ESC>";
    #  action = ":nohlsearch<CR>";
    #  options.desc = "Unselect Search Results";
    #}
    # Terminal Buffer
    {
      mode = "n";
      key = "<leader>t";
      action = ":below 15 split | terminal<CR>";
      options.desc = "create a termnal below";
    }
  ];
}

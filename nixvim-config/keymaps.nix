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
    # Buffer
    {
      mode = "n";
      key = "gn";
      action = "<cmd>bn<CR>";
      options.desc = "Go to next buffer";
    }
    {
      mode = "n";
      key = "gp";
      action = "<cmd>bp<CR>";
      options.desc = "Go to prev buffer";
    }
  ];
  plugins.which-key.enable = true;
}

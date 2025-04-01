{
  config = {
    globals.mapleader = " "; # Set leader key to space

    opts = {
      updatetime = 100; # faster completion
      number = true;
      relativenumber = true;

      autoindent = true; # Automatically indents new lines to match the indentation of the previous line
      autowrite = true; # Automatically saves the current buffer when switching between buffers or executing certain commands
      confirm = true; # when you try to quit without saving changes (or perform other actions that would discard changes)
      clipboard = "unnamedplus";
      cursorline = false;
      list = true; # Enables the display of invisible characters like tabs and line endings
      expandtab = true; # conv. tabs to spaces
      scrolloff = 999; # Keeps the cursor centered vertically in the window at all times
      shiftround = true;
      shiftwidth = 4;
      # showmode = false;
      signcolumn = "yes";
      smartcase = true; # Makes searches case-sensitive only if they contain uppercase characters.
      smartindent = true; # Enables "smart" auto-indenting that adjusts based on the syntax/structure of the code.
      tabstop = 4; # Sets how many spaces a tab character is equivalent to when displayed

      ignorecase = true; # Makes searches case-insensitive by default (works with smartcase)
      incsearch = true; # Shows search matches as you type the search pattern.
      completeopt = "menu,menuone,noselect";
      wildmode = "longest:full,full";

      swapfile = false;
      undofile = true; # Build-in persistent undo
      undolevels = 10000;

      wrap = false;
    };
  };
}

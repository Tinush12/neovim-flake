{ ... }:

{
  plugins = {
    hop.enable = true;

    treesitter = {
      enable = true;
      folding = false;
      settings.indent.enable = true;
    };
    bufferline = { # Tab line a the Top
      enable = true;
      settings = { options = { always_show_bufferline = false; }; };
    };
    lualine = { # Status line at the Bottom
      enable = true;
      settings.options.globalstatus = true;
    };

    mini = { # Library of 40+ Plugins for neovim
      enable = true;
      modules = {
        indentscope = {
          symbol = "│";
          options = { try_as_border = true; };
        };
      };
    };

    which-key.enable = true; # Info for Keybinds
    nvim-autopairs.enable = true;
    illuminate.enable = true;
    #noice.enable = true;

    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [ "Welcome to NixVim, Lukas!" ];
          opts = {
            position = "center";
            hl = "Type";
          };
        }
        {
          type = "padding";
          val = 4;
        }

      ];
    };
    #harpoon = {
    #  enable = true;
    #  saveOnToggle = true;
    #  saveOnChange = true;
    #  enterOnSendcmd = false;
    #  markBranch = true;
    #};

    #gitsigns = {
    #  enable = true;
    #  settings = {
    #    current_line_blame = true;
    #    current_line_blame_opts = {
    #      virt_text = true;
    #      virt_text_pos = "eol";
    #    };
    #    signcolumn = true;
    #    signs = {
    #      add = { text = "│"; };
    #      change = { text = "│"; };
    #      changedelete = { text = "~"; };
    #      delete = { text = "_"; };
    #      topdelete = { text = "‾"; };
    #      untracked = { text = "┆"; };
    #    };
    #    watch_gitdir = { follow_files = true; };
    #  };
    #};

    #luasnip.enable = true;
    #render-markdown.enable = true;
    #web-devicons.enable = true;
    #auto-save.enable = true;
  };
}

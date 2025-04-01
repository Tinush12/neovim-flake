{...}: {
  plugins = {
    hop.enable = true;

    treesitter = {
      enable = true;
      folding = false;
      settings = {
        indent.enable = true;
        highlight.enable = true;
      };
    };
    bufferline = {
      # Tab line a the Top
      enable = true;
      settings = {options = {always_show_bufferline = false;};};
    };
    lualine = {
      # Status line at the Bottom
      enable = true;
      settings.options = {
        globalstatus = true;
        theme = "nord";
      };
    };

    mini = {
      # Library of 40+ Plugins for neovim
      enable = true;
      modules = {
        indentscope = {
          symbol = "│";
          options = {try_as_border = true;};
        };
      };
    };
    web-devicons.enable = true;

    which-key.enable = true; # Info for Keybinds
    nvim-autopairs.enable = true;
    illuminate.enable = true;
    #noice.enable = true;
    trouble = {enable = true;};

    alpha = {
      enable = true;
      layout = [
        {
          type = "padding";
          val = 2;
        }
        {
          type = "text";
          val = [
            "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗"
            "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║"
            "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║"
            "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║"
            "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║"
            "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝"
          ];

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

    #luasnip.enable = true;
    #render-markdown.enable = true;
    #auto-save.enable = true;
    neoscroll = {
      enable = true;
      autoLoad = true;
    };
  };
}

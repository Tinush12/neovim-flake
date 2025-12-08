{
  colorschemes = {
    onedark = {
      enable = false;
      settings = {
        colors = {yellow = "#d9a950";};
        style = "dark";
        transparent = true;
      };
    };
    kanagawa-paper = {
      enable = false;
      autoLoad = true;
      settings = {
        integrations = {
          treesitter = true;
          telescope = true;
          which_key = true;
        };
        theme = "ink";
        transparent = false;
        styles = {
          comments = {
            italic = true;
          };
          functions = {
            italic = true;
          };
          keywords = {
            italic = true;
          };
          statement_style = {
            bold = true;
          };
          terminal_colors = false;
        };
      };
    };
    kanagawa = {
      enable = true;
      settings = {
        colors = {
          theme = {
            all.ui = {
              bg_gutter = "none";
              #bg = "#0a1216";
            };
            float.bg = "none";
          };
          wave.ui.float.bg = "none";
        };
        commentStyle.italic = true;
        theme = "wave"; # wave lotus
        transparent = true;
      };
    };
  };
}

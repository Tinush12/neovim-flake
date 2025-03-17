{pkgs, ...}: {
  extraPackages = with pkgs; [
    coreutils
    lldb_18
    vscode-extensions.vadimcn.vscode-lldb
  ];

  plugins.dap = {
    enable = true;
    #adapters = {
    #  executables = {
    #    lldb = {
    #      command = lib.getExe' pkgs.lldb "lldb-vscode";
    #    };
    #  };
    #  servers = {
    #    codelldb = {
    #      port = 13000;
    #      executable = {
    #        command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
    #        args = [
    #          "--port"
    #          "13000"
    #        ];
    #      };
    #    };
    #  };
    #};

    extensions = {
    };
  };

  plugins.dap-ui = {
    enable = true;
    settings = {
      icons = {
        expanded = "▾";
        collapsed = "▸";
        current_frame = "*";
      };
      controls = {
        icons = {
          pause = "⏸";
          play = "▶";
          step_into = "⏎";
          step_over = "⏭";
          step_out = "⏮";
          step_back = "b";
          run_last = "▶▶";
          terminate = "⏹";
          disconnect = "⏏";
        };
      };
    };
  };
  #plugins.dap-python.enable = true;
  plugins.dap-lldb = {
    enable = true;
    settings = {
      codelldb_path = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
      configurations = {};
    };
  };

  #plugins.dap-virutal-text = {

  #};

  # https://nix-community.github.io/nixvim/keymaps/index.html
  keymaps = [
    # Start and Stop debugging
    {
      mode = "n";
      key = "<leader>dc";
      action.__raw = ''
        function()
          require('dap').continue()
        end
      '';
      options = {
        desc = "Debug: Start/Continue";
      };
    }
    {
      mode = "n";
      key = "<leader>ds";
      action.__raw = ''
        function()
          require('dap').terminate()
        end
      '';
      options = {
        desc = "Debug: Stop";
      };
    }
    # Step through code
    {
      mode = "n";
      key = "<leader>n";
      action.__raw = ''
        function()
          require('dap').step_over()
        end
      '';
      options = {
        desc = "Debug: Step Over";
      };
    }
    {
      mode = "n";
      key = "<leader>N";
      action.__raw = ''
        function()
          require('dap').step_into()
        end
      '';
      options = {
        desc = "Debug: Step Into";
      };
    }
    {
      mode = "n";
      key = "<leader>do";
      action.__raw = ''
        function()
          require('dap').step_out()
        end
      '';
      options = {
        desc = "Debug: Step Out";
      };
    }
    # Setting Breakpoints
    {
      mode = "n";
      key = "<leader>b";
      action.__raw = ''
        function()
          require('dap').toggle_breakpoint()
        end
      '';
      options = {
        desc = "Debug: Toggle Breakpoint";
      };
    }
    {
      mode = "n";
      key = "<leader>B";
      action.__raw = ''
        function()
          require('dap').set_breakpoint(vim.fn.input 'Breakpoint condition: ')
        end
      '';
      options = {
        desc = "Debug: Set Breakpoint";
      };
    }
    # Toggle dap-ui
    {
      mode = "n";
      key = "<leader>du";
      action.__raw = ''
        function()
          require('dapui').toggle()
        end
      '';
      options = {
        desc = "Debug: See last session result.";
      };
    }
  ];

  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraconfiglua#extraconfiglua
  extraConfigLua = ''
    require('dap').listeners.after.event_initialized['dapui_config'] = require('dapui').open
    require('dap').listeners.before.event_terminated['dapui_config'] = require('dapui').close
    require('dap').listeners.before.event_exited['dapui_config'] = require('dapui').close
  '';
}
